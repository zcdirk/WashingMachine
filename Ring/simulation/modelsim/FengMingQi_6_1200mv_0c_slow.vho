-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "01/06/2015 19:26:01"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FENGMINGQI IS
    PORT (
	clk_1 : IN std_logic;
	clk_500 : IN std_logic;
	PROCESS_END : IN std_logic;
	FOUT : OUT std_logic
	);
END FENGMINGQI;

-- Design Ports Information
-- FOUT	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_500	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PROCESS_END	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FENGMINGQI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1 : std_logic;
SIGNAL ww_clk_500 : std_logic;
SIGNAL ww_PROCESS_END : std_logic;
SIGNAL ww_FOUT : std_logic;
SIGNAL \COUNT[2]~_emulated_q\ : std_logic;
SIGNAL \COUNT[2]~2_combout\ : std_logic;
SIGNAL \COUNT[2]~3_combout\ : std_logic;
SIGNAL \COUNT[2]~0_combout\ : std_logic;
SIGNAL \COUNT[2]~1_combout\ : std_logic;
SIGNAL \clk_1~input_o\ : std_logic;
SIGNAL \FOUT~output_o\ : std_logic;
SIGNAL \clk_500~input_o\ : std_logic;
SIGNAL \PROCESS_END~input_o\ : std_logic;
SIGNAL \COUNT[1]~6_combout\ : std_logic;
SIGNAL \COUNT[0]~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \FOUT~0_combout\ : std_logic;
SIGNAL \FOUT$latch~combout\ : std_logic;
SIGNAL COUNT : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_COUNT[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_FOUT~0_combout\ : std_logic;

BEGIN

ww_clk_1 <= clk_1;
ww_clk_500 <= clk_500;
ww_PROCESS_END <= PROCESS_END;
FOUT <= ww_FOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_COUNT[2]~0_combout\ <= NOT \COUNT[2]~0_combout\;
\ALT_INV_FOUT~0_combout\ <= NOT \FOUT~0_combout\;

-- Location: FF_X30_Y1_N7
\COUNT[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \COUNT[2]~3_combout\,
	clrn => \ALT_INV_COUNT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT[2]~_emulated_q\);

-- Location: LCCOMB_X30_Y1_N20
\COUNT[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COUNT[2]~2_combout\ = (\PROCESS_END~input_o\ & ((\LessThan0~0_combout\) # (\COUNT[2]~1_combout\ $ (\COUNT[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \COUNT[2]~1_combout\,
	datac => \PROCESS_END~input_o\,
	datad => \COUNT[2]~_emulated_q\,
	combout => \COUNT[2]~2_combout\);

-- Location: LCCOMB_X30_Y1_N6
\COUNT[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COUNT[2]~3_combout\ = \COUNT[2]~1_combout\ $ (\COUNT[2]~2_combout\ $ (((COUNT(0) & COUNT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(0),
	datab => \COUNT[2]~1_combout\,
	datac => COUNT(1),
	datad => \COUNT[2]~2_combout\,
	combout => \COUNT[2]~3_combout\);

-- Location: LCCOMB_X30_Y1_N28
\COUNT[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COUNT[2]~0_combout\ = (\LessThan0~0_combout\) # (!\PROCESS_END~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESS_END~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \COUNT[2]~0_combout\);

-- Location: LCCOMB_X30_Y1_N18
\COUNT[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COUNT[2]~1_combout\ = (\PROCESS_END~input_o\ & ((\LessThan0~0_combout\) # (\COUNT[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \PROCESS_END~input_o\,
	datad => \COUNT[2]~1_combout\,
	combout => \COUNT[2]~1_combout\);

-- Location: IOIBUF_X29_Y0_N1
\clk_1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1,
	o => \clk_1~input_o\);

-- Location: IOOBUF_X29_Y0_N9
\FOUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FOUT$latch~combout\,
	devoe => ww_devoe,
	o => \FOUT~output_o\);

-- Location: IOIBUF_X31_Y0_N8
\clk_500~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_500,
	o => \clk_500~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\PROCESS_END~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PROCESS_END,
	o => \PROCESS_END~input_o\);

-- Location: LCCOMB_X30_Y1_N30
\COUNT[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COUNT[1]~6_combout\ = COUNT(0) $ (COUNT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(0),
	datac => COUNT(1),
	combout => \COUNT[1]~6_combout\);

-- Location: FF_X30_Y1_N31
\COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \COUNT[1]~6_combout\,
	clrn => \ALT_INV_FOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT(1));

-- Location: LCCOMB_X30_Y1_N0
\COUNT[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \COUNT[0]~7_combout\ = !COUNT(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(0),
	combout => \COUNT[0]~7_combout\);

-- Location: FF_X30_Y1_N1
\COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \COUNT[0]~7_combout\,
	clrn => \ALT_INV_FOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT(0));

-- Location: LCCOMB_X30_Y1_N16
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\COUNT[2]~2_combout\ & ((COUNT(1)) # (COUNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT[2]~2_combout\,
	datac => COUNT(1),
	datad => COUNT(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y1_N24
\FOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FOUT~0_combout\ = (\LessThan0~0_combout\) # (!\PROCESS_END~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROCESS_END~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \FOUT~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\FOUT$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FOUT$latch~combout\ = (\FOUT~0_combout\ & ((\FOUT$latch~combout\))) # (!\FOUT~0_combout\ & (\clk_500~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500~input_o\,
	datac => \FOUT$latch~combout\,
	datad => \FOUT~0_combout\,
	combout => \FOUT$latch~combout\);

ww_FOUT <= \FOUT~output_o\;
END structure;


