library ieee;
use ieee.std_logic_1164.all;

entity Controle is
port(
		Clock, SW_2, SW_1, End_Game, End_Time, End_Round : in std_logic;
		C, R, Ea, Eb, Ec, Ed: out std_logic
		);
-- E1 <= '1'
--	Ea => E2
--	Eb => E3,E4
--	Ec => E7,E9
--	Ed => E8
end entity;

architecture FSM_Controle of Controle is

type states is (Start, Setup, Play_FPGA, Play_User, Count_Round, Stop);
signal AE, PE : states;

begin

p1: process (Clock, SW_2)
		begin
			if SW_2 = '1' then
				AE <= Start;
			elsif rising_edge(Clock) then
				AE <= PE;
			end if;
		end process;
		
p2: process (AE, SW_1, End_Game, End_Time, End_Round) is
		begin
			case AE is
				when Start =>	-----------------
					C  <= '1';
					R  <= '1';
					Ea <= '0';
					Eb <= '0';
					Ec <= '0';
					Ed <= '0';
					
					if SW_1 = '1' then
						PE <= Setup;
					else
						PE <= Start;
					end if;
					
				when Setup =>	-----------------
					C  <= '1';
					R  <= '0';
					Ea <= '0';
					Eb <= '0';
					Ec <= '0';
					Ed <= '0';
					
					if SW_1 = '0' then
						PE <= Play_FPGA;
					else
						PE <= Setup;
					end if;
					
				when Play_FPGA =>	-----------------
					C  <= '1';
					R  <= '0';
					Ea <= '0';
					Eb <= '1';
					Ec <= '0';
					Ed <= '0';
					
					if End_Round = '1' then
						PE <= Play_User;
					else 
						PE <= Play_FPGA;
					end if;
					
				when Play_User =>	-----------------
					C  <= '0';
					R  <= '0';
					Ea <= '1';
					Eb <= '0';
					Ec <= '0';
					Ed <= '0';
					
					if SW_1 = '1' then
						PE <= Count_Round;
					elsif (End_Game or End_Time) = '1' then
						PE <= Stop;
					else
						PE <= Play_User;
					end if;
					
				when Count_Round =>	-----------------
					C  <= '0';
					R  <= '0';
					Ea <= '0';
					Eb <= '0';
					Ec <= '0';
					Ed <= '1';
					
					if SW_1 = '0' then
						PE <= Play_FPGA;
					else 
						PE <= Count_Round;
					end if;
					
				when Stop =>	-----------------
					C  <= '1';
					R  <= '0';
					Ea <= '0';
					Eb <= '0';
					Ec <= '1';
					Ed <= '0';
					
					if SW_1 = '0' then
						PE <= Start;
					else 
						PE <= Stop;
					end if;
					
			end case;
		end process;
end FSM_Controle;