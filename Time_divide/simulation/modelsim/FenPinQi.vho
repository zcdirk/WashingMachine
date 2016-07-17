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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Full Version"

-- DATE "01/07/2015 08:50:17"

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

ENTITY 	FENPINQI IS
    PORT (
	clear : IN std_logic;
	clk : IN std_logic;
	clk_1 : BUFFER std_logic;
	clk_100 : BUFFER std_logic;
	clk_500 : BUFFER std_logic
	);
END FENPINQI;

-- Design Ports Information
-- clk_1	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_100	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_500	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clear	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF FENPINQI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_1 : std_logic;
SIGNAL ww_clk_100 : std_logic;
SIGNAL ww_clk_500 : std_logic;
SIGNAL \clear~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_500~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_100~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \m3~2_combout\ : std_logic;
SIGNAL \clk_500~reg0clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \m2~2_combout\ : std_logic;
SIGNAL \clear~combout\ : std_logic;
SIGNAL \clear~clkctrl_outclk\ : std_logic;
SIGNAL \m2~1_combout\ : std_logic;
SIGNAL \m2~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \clk_100~reg0_regout\ : std_logic;
SIGNAL \clk_100~reg0clkctrl_outclk\ : std_logic;
SIGNAL \m3[0]~3_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \m3~1_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \m3~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \clk_1~reg0_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \m1[0]~2_combout\ : std_logic;
SIGNAL \m1~0_combout\ : std_logic;
SIGNAL \clk_500~reg0feeder_combout\ : std_logic;
SIGNAL \clk_500~reg0_regout\ : std_logic;
SIGNAL m1 : std_logic_vector(1 DOWNTO 0);
SIGNAL m2 : std_logic_vector(2 DOWNTO 0);
SIGNAL m3 : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_clear <= clear;
ww_clk <= clk;
clk_1 <= ww_clk_1;
clk_100 <= ww_clk_100;
clk_500 <= ww_clk_500;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clear~combout\);

\clk_500~reg0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_500~reg0_regout\);

\clk_100~reg0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_100~reg0_regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X9_Y5_N24
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (m3(5) & (!\Add2~9\)) # (!m3(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!m3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m3(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCFF_X9_Y5_N11
\m3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \m3~2_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(5));

-- Location: LCCOMB_X9_Y5_N12
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (m3(5) & (!m3(4) & (!m3(3) & m3(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3(5),
	datab => m3(4),
	datac => m3(3),
	datad => m3(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X9_Y5_N10
\m3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3~2_combout\ = (\Add2~10_combout\ & ((!\Equal2~0_combout\) # (!\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => \Add2~10_combout\,
	datad => \Equal2~0_combout\,
	combout => \m3~2_combout\);

-- Location: CLKCTRL_G5
\clk_500~reg0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_500~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_500~reg0clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y10_N20
\m2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2~2_combout\ = (!m2(0) & ((m2(1)) # (!m2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2(2),
	datac => m2(0),
	datad => m2(1),
	combout => \m2~2_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clear~I\ : cycloneii_io
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
	padio => ww_clear,
	combout => \clear~combout\);

-- Location: CLKCTRL_G1
\clear~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~clkctrl_outclk\);

-- Location: LCFF_X12_Y10_N21
\m2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_500~reg0clkctrl_outclk\,
	datain => \m2~2_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m2(0));

-- Location: LCCOMB_X12_Y10_N18
\m2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2~1_combout\ = (m2(0) & ((m2(1)))) # (!m2(0) & (!m2(2) & !m2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2(2),
	datab => m2(0),
	datac => m2(1),
	combout => \m2~1_combout\);

-- Location: LCFF_X12_Y10_N19
\m2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_500~reg0clkctrl_outclk\,
	datain => \m2~1_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m2(1));

-- Location: LCCOMB_X12_Y10_N30
\m2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m2~0_combout\ = (m2(0) & (m2(2))) # (!m2(0) & (!m2(2) & m2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m2(0),
	datac => m2(2),
	datad => m2(1),
	combout => \m2~0_combout\);

-- Location: LCFF_X12_Y10_N31
\m2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_500~reg0clkctrl_outclk\,
	datain => \m2~0_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m2(2));

-- Location: LCCOMB_X12_Y10_N8
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (m2(2)) # ((m2(1) & !m2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m2(1),
	datac => m2(0),
	datad => m2(2),
	combout => \LessThan1~0_combout\);

-- Location: LCFF_X12_Y10_N9
\clk_100~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_500~reg0_regout\,
	datain => \LessThan1~0_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_100~reg0_regout\);

-- Location: CLKCTRL_G3
\clk_100~reg0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_100~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_100~reg0clkctrl_outclk\);

-- Location: LCCOMB_X9_Y5_N30
\m3[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3[0]~3_combout\ = !m3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m3(0),
	combout => \m3[0]~3_combout\);

-- Location: LCFF_X9_Y5_N31
\m3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \m3[0]~3_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(0));

-- Location: LCCOMB_X9_Y5_N14
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(!m3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m3(0),
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X9_Y5_N16
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (m3(1) & (!\Add2~1_cout\)) # (!m3(1) & ((\Add2~1_cout\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1_cout\) # (!m3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m3(1),
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCFF_X9_Y5_N17
\m3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \Add2~2_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(1));

-- Location: LCCOMB_X9_Y5_N28
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (m3(0) & (!m3(1) & m3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m3(0),
	datac => m3(1),
	datad => m3(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X9_Y5_N18
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (m3(2) & (\Add2~3\ $ (GND))) # (!m3(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((m3(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m3(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X9_Y5_N4
\m3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3~1_combout\ = (\Add2~4_combout\ & ((!\Equal2~1_combout\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datad => \Add2~4_combout\,
	combout => \m3~1_combout\);

-- Location: LCFF_X9_Y5_N5
\m3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \m3~1_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(2));

-- Location: LCCOMB_X9_Y5_N20
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (m3(3) & (!\Add2~5\)) # (!m3(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!m3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m3(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X9_Y5_N22
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (m3(4) & (\Add2~7\ $ (GND))) # (!m3(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((m3(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m3(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCFF_X9_Y5_N23
\m3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \Add2~8_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(4));

-- Location: LCFF_X9_Y5_N21
\m3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \Add2~6_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(3));

-- Location: LCCOMB_X9_Y5_N8
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (m3(3)) # ((m3(2)) # ((m3(1) & !m3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3(1),
	datab => m3(0),
	datac => m3(3),
	datad => m3(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X9_Y5_N26
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\ $ (!m3(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => m3(6),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X9_Y5_N2
\m3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m3~0_combout\ = (\Add2~12_combout\ & ((!\Equal2~1_combout\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datad => \Add2~12_combout\,
	combout => \m3~0_combout\);

-- Location: LCFF_X9_Y5_N3
\m3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \m3~0_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m3(6));

-- Location: LCCOMB_X9_Y5_N0
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (m3(6)) # ((m3(5) & (m3(4) & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3(5),
	datab => m3(4),
	datac => \LessThan2~0_combout\,
	datad => m3(6),
	combout => \LessThan2~1_combout\);

-- Location: LCFF_X9_Y5_N1
\clk_1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_100~reg0clkctrl_outclk\,
	datain => \LessThan2~1_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_1~reg0_regout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X9_Y10_N18
\m1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1[0]~2_combout\ = !m1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m1(0),
	combout => \m1[0]~2_combout\);

-- Location: LCFF_X9_Y10_N19
\m1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m1[0]~2_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m1(0));

-- Location: LCCOMB_X9_Y10_N6
\m1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1~0_combout\ = (!m1(1) & !m1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m1(1),
	datad => m1(0),
	combout => \m1~0_combout\);

-- Location: LCFF_X9_Y10_N7
\m1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m1~0_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m1(1));

-- Location: LCCOMB_X9_Y10_N0
\clk_500~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_500~reg0feeder_combout\ = m1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m1(1),
	combout => \clk_500~reg0feeder_combout\);

-- Location: LCFF_X9_Y10_N1
\clk_500~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \clk_500~reg0feeder_combout\,
	aclr => \clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_500~reg0_regout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clk_1~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_1);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_100~I\ : cycloneii_io
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
	datain => \clk_100~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_100);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clk_500~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_500);
END structure;


