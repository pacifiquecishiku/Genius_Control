-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "04/20/2018 12:12:10"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Controle IS
    PORT (
	Clock : IN std_logic;
	SW_2 : IN std_logic;
	SW_1 : IN std_logic;
	End_Game : IN std_logic;
	End_Time : IN std_logic;
	End_Round : IN std_logic;
	C : OUT std_logic;
	R : OUT std_logic;
	Ea : OUT std_logic;
	Eb : OUT std_logic;
	Ec : OUT std_logic;
	Ed : OUT std_logic
	);
END Controle;

-- Design Ports Information
-- C	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ea	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Eb	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ec	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ed	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Round	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_1	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Game	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- End_Time	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_2	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Controle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_SW_2 : std_logic;
SIGNAL ww_SW_1 : std_logic;
SIGNAL ww_End_Game : std_logic;
SIGNAL ww_End_Time : std_logic;
SIGNAL ww_End_Round : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_Ea : std_logic;
SIGNAL ww_Eb : std_logic;
SIGNAL ww_Ec : std_logic;
SIGNAL ww_Ed : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW_1~input_o\ : std_logic;
SIGNAL \End_Time~input_o\ : std_logic;
SIGNAL \End_Round~input_o\ : std_logic;
SIGNAL \End_Game~input_o\ : std_logic;
SIGNAL \AE.Stop~0_combout\ : std_logic;
SIGNAL \SW_2~input_o\ : std_logic;
SIGNAL \AE.Stop~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \AE.Start~q\ : std_logic;
SIGNAL \PE.Setup~0_combout\ : std_logic;
SIGNAL \AE.Setup~q\ : std_logic;
SIGNAL \PE.Count_Round~0_combout\ : std_logic;
SIGNAL \AE.Count_Round~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \AE.Play_FPGA~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \AE.Play_User~q\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \ALT_INV_End_Time~input_o\ : std_logic;
SIGNAL \ALT_INV_End_Game~input_o\ : std_logic;
SIGNAL \ALT_INV_SW_1~input_o\ : std_logic;
SIGNAL \ALT_INV_End_Round~input_o\ : std_logic;
SIGNAL \ALT_INV_AE.Setup~q\ : std_logic;
SIGNAL \ALT_INV_AE.Stop~q\ : std_logic;
SIGNAL \ALT_INV_AE.Play_FPGA~q\ : std_logic;
SIGNAL \ALT_INV_AE.Start~q\ : std_logic;
SIGNAL \ALT_INV_C~2_combout\ : std_logic;
SIGNAL \ALT_INV_AE.Count_Round~q\ : std_logic;
SIGNAL \ALT_INV_AE.Play_User~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_SW_2 <= SW_2;
ww_SW_1 <= SW_1;
ww_End_Game <= End_Game;
ww_End_Time <= End_Time;
ww_End_Round <= End_Round;
C <= ww_C;
R <= ww_R;
Ea <= ww_Ea;
Eb <= ww_Eb;
Ec <= ww_Ec;
Ed <= ww_Ed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_End_Time~input_o\ <= NOT \End_Time~input_o\;
\ALT_INV_End_Game~input_o\ <= NOT \End_Game~input_o\;
\ALT_INV_SW_1~input_o\ <= NOT \SW_1~input_o\;
\ALT_INV_End_Round~input_o\ <= NOT \End_Round~input_o\;
\ALT_INV_AE.Setup~q\ <= NOT \AE.Setup~q\;
\ALT_INV_AE.Stop~q\ <= NOT \AE.Stop~q\;
\ALT_INV_AE.Play_FPGA~q\ <= NOT \AE.Play_FPGA~q\;
\ALT_INV_AE.Start~q\ <= NOT \AE.Start~q\;
\ALT_INV_C~2_combout\ <= NOT \C~2_combout\;
\ALT_INV_AE.Count_Round~q\ <= NOT \AE.Count_Round~q\;
\ALT_INV_AE.Play_User~q\ <= NOT \AE.Play_User~q\;

-- Location: IOOBUF_X89_Y21_N22
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_C~2_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X89_Y23_N56
\R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_AE.Start~q\,
	devoe => ww_devoe,
	o => ww_R);

-- Location: IOOBUF_X89_Y21_N5
\Ea~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AE.Play_User~q\,
	devoe => ww_devoe,
	o => ww_Ea);

-- Location: IOOBUF_X89_Y23_N39
\Eb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AE.Play_FPGA~q\,
	devoe => ww_devoe,
	o => ww_Eb);

-- Location: IOOBUF_X89_Y23_N5
\Ec~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AE.Stop~q\,
	devoe => ww_devoe,
	o => ww_Ec);

-- Location: IOOBUF_X89_Y21_N39
\Ed~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AE.Count_Round~q\,
	devoe => ww_devoe,
	o => ww_Ed);

-- Location: IOIBUF_X89_Y23_N21
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G11
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y20_N95
\SW_1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_1,
	o => \SW_1~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\End_Time~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_End_Time,
	o => \End_Time~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\End_Round~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_End_Round,
	o => \End_Round~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\End_Game~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_End_Game,
	o => \End_Game~input_o\);

-- Location: LABCELL_X88_Y21_N48
\AE.Stop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AE.Stop~0_combout\ = ( \AE.Stop~q\ & ( \AE.Play_User~q\ & ( ((\End_Game~input_o\) # (\End_Time~input_o\)) # (\SW_1~input_o\) ) ) ) # ( !\AE.Stop~q\ & ( \AE.Play_User~q\ & ( (!\SW_1~input_o\ & ((\End_Game~input_o\) # (\End_Time~input_o\))) ) ) ) # ( 
-- \AE.Stop~q\ & ( !\AE.Play_User~q\ & ( \SW_1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100101010001010100111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW_1~input_o\,
	datab => \ALT_INV_End_Time~input_o\,
	datac => \ALT_INV_End_Game~input_o\,
	datae => \ALT_INV_AE.Stop~q\,
	dataf => \ALT_INV_AE.Play_User~q\,
	combout => \AE.Stop~0_combout\);

-- Location: IOIBUF_X89_Y20_N44
\SW_2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_2,
	o => \SW_2~input_o\);

-- Location: FF_X88_Y21_N50
\AE.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \AE.Stop~0_combout\,
	clrn => \SW_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AE.Stop~q\);

-- Location: LABCELL_X88_Y21_N12
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \AE.Start~q\ & ( \AE.Stop~q\ & ( \SW_1~input_o\ ) ) ) # ( !\AE.Start~q\ & ( \AE.Stop~q\ & ( \SW_1~input_o\ ) ) ) # ( \AE.Start~q\ & ( !\AE.Stop~q\ ) ) # ( !\AE.Start~q\ & ( !\AE.Stop~q\ & ( \SW_1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW_1~input_o\,
	datae => \ALT_INV_AE.Start~q\,
	dataf => \ALT_INV_AE.Stop~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X88_Y21_N14
\AE.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \SW_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AE.Start~q\);

-- Location: LABCELL_X88_Y21_N39
\PE.Setup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PE.Setup~0_combout\ = ( \AE.Setup~q\ & ( \AE.Start~q\ & ( \SW_1~input_o\ ) ) ) # ( \AE.Setup~q\ & ( !\AE.Start~q\ & ( \SW_1~input_o\ ) ) ) # ( !\AE.Setup~q\ & ( !\AE.Start~q\ & ( \SW_1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW_1~input_o\,
	datae => \ALT_INV_AE.Setup~q\,
	dataf => \ALT_INV_AE.Start~q\,
	combout => \PE.Setup~0_combout\);

-- Location: FF_X88_Y21_N41
\AE.Setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \PE.Setup~0_combout\,
	clrn => \SW_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AE.Setup~q\);

-- Location: LABCELL_X88_Y21_N9
\PE.Count_Round~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PE.Count_Round~0_combout\ = ( \AE.Count_Round~q\ & ( \AE.Play_User~q\ & ( \SW_1~input_o\ ) ) ) # ( !\AE.Count_Round~q\ & ( \AE.Play_User~q\ & ( \SW_1~input_o\ ) ) ) # ( \AE.Count_Round~q\ & ( !\AE.Play_User~q\ & ( \SW_1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW_1~input_o\,
	datae => \ALT_INV_AE.Count_Round~q\,
	dataf => \ALT_INV_AE.Play_User~q\,
	combout => \PE.Count_Round~0_combout\);

-- Location: FF_X88_Y21_N11
\AE.Count_Round\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \PE.Count_Round~0_combout\,
	clrn => \SW_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AE.Count_Round~q\);

-- Location: LABCELL_X88_Y21_N30
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \AE.Count_Round~q\ & ( (!\SW_1~input_o\) # ((!\End_Round~input_o\ & \AE.Play_FPGA~q\)) ) ) # ( !\AE.Count_Round~q\ & ( (!\SW_1~input_o\ & (((!\End_Round~input_o\ & \AE.Play_FPGA~q\)) # (\AE.Setup~q\))) # (\SW_1~input_o\ & 
-- (((!\End_Round~input_o\ & \AE.Play_FPGA~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011110010001000101111001010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW_1~input_o\,
	datab => \ALT_INV_AE.Setup~q\,
	datac => \ALT_INV_End_Round~input_o\,
	datad => \ALT_INV_AE.Play_FPGA~q\,
	dataf => \ALT_INV_AE.Count_Round~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y21_N32
\AE.Play_FPGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \SW_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AE.Play_FPGA~q\);

-- Location: LABCELL_X88_Y21_N18
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \AE.Play_User~q\ & ( \AE.Play_FPGA~q\ & ( ((!\SW_1~input_o\ & (!\End_Time~input_o\ & !\End_Game~input_o\))) # (\End_Round~input_o\) ) ) ) # ( !\AE.Play_User~q\ & ( \AE.Play_FPGA~q\ & ( \End_Round~input_o\ ) ) ) # ( 
-- \AE.Play_User~q\ & ( !\AE.Play_FPGA~q\ & ( (!\SW_1~input_o\ & (!\End_Time~input_o\ & !\End_Game~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000000000001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW_1~input_o\,
	datab => \ALT_INV_End_Time~input_o\,
	datac => \ALT_INV_End_Round~input_o\,
	datad => \ALT_INV_End_Game~input_o\,
	datae => \ALT_INV_AE.Play_User~q\,
	dataf => \ALT_INV_AE.Play_FPGA~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y21_N20
\AE.Play_User\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \SW_2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AE.Play_User~q\);

-- Location: LABCELL_X88_Y21_N33
\C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C~2_combout\ = ( \AE.Count_Round~q\ ) # ( !\AE.Count_Round~q\ & ( \AE.Play_User~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_AE.Play_User~q\,
	dataf => \ALT_INV_AE.Count_Round~q\,
	combout => \C~2_combout\);

-- Location: LABCELL_X13_Y31_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


