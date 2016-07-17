-- Copyright (C) 1991-2009 Altera Corporation
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
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Full Version"

-- DATE "01/07/2015 09:05:23"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- FOUT	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_500	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PROCESS_END	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_1	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

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
SIGNAL \FOUT~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1~combout\ : std_logic;
SIGNAL \clk_500~combout\ : std_logic;
SIGNAL \PROCESS_END~combout\ : std_logic;
SIGNAL \COUNT[2]~latch_combout\ : std_logic;
SIGNAL \COUNT[0]~3_combout\ : std_logic;
SIGNAL \COUNT[2]~data_lut_combout\ : std_logic;
SIGNAL \COUNT[2]~clear_lut_combout\ : std_logic;
SIGNAL \COUNT[2]~_emulated_regout\ : std_logic;
SIGNAL \COUNT[2]~head_lut_combout\ : std_logic;
SIGNAL \COUNT[1]~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \FOUT~0_combout\ : std_logic;
SIGNAL \FOUT~0clkctrl_outclk\ : std_logic;
SIGNAL \FOUT$latch~combout\ : std_logic;
SIGNAL COUNT : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk_1 <= clk_1;
ww_clk_500 <= clk_500;
ww_PROCESS_END <= PROCESS_END;
FOUT <= ww_FOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FOUT~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FOUT~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_1,
	combout => \clk_1~combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_500~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_500,
	combout => \clk_500~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PROCESS_END~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PROCESS_END,
	combout => \PROCESS_END~combout\);

-- Location: LCCOMB_X1_Y6_N18
\COUNT[2]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[2]~latch_combout\ = (\PROCESS_END~combout\ & ((\LessThan0~0_combout\) # (\COUNT[2]~latch_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \PROCESS_END~combout\,
	datad => \COUNT[2]~latch_combout\,
	combout => \COUNT[2]~latch_combout\);

-- Location: LCCOMB_X1_Y6_N24
\COUNT[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[0]~3_combout\ = !COUNT(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(0),
	combout => \COUNT[0]~3_combout\);

-- Location: LCFF_X1_Y6_N25
\COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_1~combout\,
	datain => \COUNT[0]~3_combout\,
	aclr => \FOUT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(0));

-- Location: LCCOMB_X1_Y6_N14
\COUNT[2]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[2]~data_lut_combout\ = \COUNT[2]~latch_combout\ $ (\COUNT[2]~head_lut_combout\ $ (((COUNT(1) & COUNT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(1),
	datab => \COUNT[2]~latch_combout\,
	datac => COUNT(0),
	datad => \COUNT[2]~head_lut_combout\,
	combout => \COUNT[2]~data_lut_combout\);

-- Location: LCCOMB_X1_Y6_N20
\COUNT[2]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[2]~clear_lut_combout\ = (\LessThan0~0_combout\) # (!\PROCESS_END~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \PROCESS_END~combout\,
	combout => \COUNT[2]~clear_lut_combout\);

-- Location: LCFF_X1_Y6_N15
\COUNT[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_1~combout\,
	datain => \COUNT[2]~data_lut_combout\,
	aclr => \COUNT[2]~clear_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNT[2]~_emulated_regout\);

-- Location: LCCOMB_X1_Y6_N0
\COUNT[2]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[2]~head_lut_combout\ = (\PROCESS_END~combout\ & ((\LessThan0~0_combout\) # (\COUNT[2]~latch_combout\ $ (\COUNT[2]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT[2]~latch_combout\,
	datab => \PROCESS_END~combout\,
	datac => \COUNT[2]~_emulated_regout\,
	datad => \LessThan0~0_combout\,
	combout => \COUNT[2]~head_lut_combout\);

-- Location: LCCOMB_X1_Y6_N10
\COUNT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[1]~2_combout\ = COUNT(1) $ (COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(1),
	datad => COUNT(0),
	combout => \COUNT[1]~2_combout\);

-- Location: LCFF_X1_Y6_N11
\COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_1~combout\,
	datain => \COUNT[1]~2_combout\,
	aclr => \FOUT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(1));

-- Location: LCCOMB_X1_Y6_N22
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\COUNT[2]~head_lut_combout\ & ((COUNT(0)) # (COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNT[2]~head_lut_combout\,
	datac => COUNT(0),
	datad => COUNT(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\FOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FOUT~0_combout\ = (\LessThan0~0_combout\) # (!\PROCESS_END~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROCESS_END~combout\,
	datad => \LessThan0~0_combout\,
	combout => \FOUT~0_combout\);

-- Location: CLKCTRL_G0
\FOUT~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FOUT~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FOUT~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y9_N0
\FOUT$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \FOUT$latch~combout\ = (GLOBAL(\FOUT~0clkctrl_outclk\) & ((\FOUT$latch~combout\))) # (!GLOBAL(\FOUT~0clkctrl_outclk\) & (\clk_500~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_500~combout\,
	datac => \FOUT~0clkctrl_outclk\,
	datad => \FOUT$latch~combout\,
	combout => \FOUT$latch~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FOUT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \FOUT$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FOUT);
END structure;


