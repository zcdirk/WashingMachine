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

-- DATE "01/06/2015 23:28:42"

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

ENTITY 	FangDou IS
    PORT (
	clk_100 : IN std_logic;
	GC_IN : IN std_logic;
	SW_IN : IN std_logic;
	YY_IN : IN std_logic;
	UP_IN : IN std_logic;
	DOWN_IN : IN std_logic;
	MS_IN : IN std_logic;
	DY_IN : IN std_logic;
	QT_IN : IN std_logic;
	RST_IN : IN std_logic;
	GC : OUT std_logic;
	SW : OUT std_logic;
	YY : OUT std_logic;
	UP : OUT std_logic;
	DOWN : OUT std_logic;
	MS : OUT std_logic;
	DY : OUT std_logic;
	QT : OUT std_logic;
	RST : OUT std_logic
	);
END FangDou;

-- Design Ports Information
-- GC	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- YY	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UP	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DOWN	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MS	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DY	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QT	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RST	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GC_IN	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_100	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW_IN	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- YY_IN	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UP_IN	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DOWN_IN	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MS_IN	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DY_IN	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- QT_IN	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST_IN	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF FangDou IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_100 : std_logic;
SIGNAL ww_GC_IN : std_logic;
SIGNAL ww_SW_IN : std_logic;
SIGNAL ww_YY_IN : std_logic;
SIGNAL ww_UP_IN : std_logic;
SIGNAL ww_DOWN_IN : std_logic;
SIGNAL ww_MS_IN : std_logic;
SIGNAL ww_DY_IN : std_logic;
SIGNAL ww_QT_IN : std_logic;
SIGNAL ww_RST_IN : std_logic;
SIGNAL ww_GC : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_YY : std_logic;
SIGNAL ww_UP : std_logic;
SIGNAL ww_DOWN : std_logic;
SIGNAL ww_MS : std_logic;
SIGNAL ww_DY : std_logic;
SIGNAL ww_QT : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL \clk_100~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \TEMP3~3_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \TEMP7~1_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \TEMP9~6_combout\ : std_logic;
SIGNAL \clk_100~combout\ : std_logic;
SIGNAL \clk_100~clkctrl_outclk\ : std_logic;
SIGNAL \GC_IN~combout\ : std_logic;
SIGNAL \GC~reg0feeder_combout\ : std_logic;
SIGNAL \DATA1~0_combout\ : std_logic;
SIGNAL \DATA1~regout\ : std_logic;
SIGNAL \TEMP1~0_combout\ : std_logic;
SIGNAL \TEMP1~1_combout\ : std_logic;
SIGNAL \TEMP1~2_combout\ : std_logic;
SIGNAL \TEMP1~3_combout\ : std_logic;
SIGNAL \TEMP1~4_combout\ : std_logic;
SIGNAL \TEMP1~5_combout\ : std_logic;
SIGNAL \TEMP1~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \GC~reg0_regout\ : std_logic;
SIGNAL \SW_IN~combout\ : std_logic;
SIGNAL \DATA2~feeder_combout\ : std_logic;
SIGNAL \TEMP2~0_combout\ : std_logic;
SIGNAL \TEMP2~3_combout\ : std_logic;
SIGNAL \TEMP2~4_combout\ : std_logic;
SIGNAL \TEMP2~5_combout\ : std_logic;
SIGNAL \TEMP2~6_combout\ : std_logic;
SIGNAL \TEMP2~1_combout\ : std_logic;
SIGNAL \TEMP2~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \DATA2~regout\ : std_logic;
SIGNAL \SW~reg0feeder_combout\ : std_logic;
SIGNAL \SW~reg0_regout\ : std_logic;
SIGNAL \YY_IN~combout\ : std_logic;
SIGNAL \TEMP3~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \TEMP3~4_combout\ : std_logic;
SIGNAL \TEMP3~1_combout\ : std_logic;
SIGNAL \TEMP3~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \DATA3~regout\ : std_logic;
SIGNAL \YY~reg0_regout\ : std_logic;
SIGNAL \UP_IN~combout\ : std_logic;
SIGNAL \DATA4~feeder_combout\ : std_logic;
SIGNAL \TEMP4~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \TEMP4~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \TEMP4~3_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \TEMP4~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \DATA4~regout\ : std_logic;
SIGNAL \UP~reg0_regout\ : std_logic;
SIGNAL \DOWN_IN~combout\ : std_logic;
SIGNAL \TEMP5~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \TEMP5~2_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \TEMP5~3_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \TEMP5~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \DATA5~regout\ : std_logic;
SIGNAL \DOWN~reg0feeder_combout\ : std_logic;
SIGNAL \DOWN~reg0_regout\ : std_logic;
SIGNAL \MS_IN~combout\ : std_logic;
SIGNAL \DATA6~feeder_combout\ : std_logic;
SIGNAL \TEMP6~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \TEMP6~2_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \TEMP6~3_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \TEMP6~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \DATA6~regout\ : std_logic;
SIGNAL \MS~reg0_regout\ : std_logic;
SIGNAL \DY_IN~combout\ : std_logic;
SIGNAL \DATA7~feeder_combout\ : std_logic;
SIGNAL \TEMP7~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \TEMP7~2_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \TEMP7~3_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \DATA7~regout\ : std_logic;
SIGNAL \DY~reg0_regout\ : std_logic;
SIGNAL \QT_IN~combout\ : std_logic;
SIGNAL \DATA8~feeder_combout\ : std_logic;
SIGNAL \TEMP8~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \TEMP8~2_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \TEMP8~3_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \TEMP8~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \DATA8~regout\ : std_logic;
SIGNAL \QT~reg0feeder_combout\ : std_logic;
SIGNAL \QT~reg0_regout\ : std_logic;
SIGNAL \RST_IN~combout\ : std_logic;
SIGNAL \TEMP9~4_combout\ : std_logic;
SIGNAL \P9~0_combout\ : std_logic;
SIGNAL \TEMP9~5_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \TEMP9~7_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \DATA9~regout\ : std_logic;
SIGNAL \RST~reg0_regout\ : std_logic;
SIGNAL TEMP1 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP2 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP3 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP4 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP5 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP6 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP7 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP8 : std_logic_vector(3 DOWNTO 0);
SIGNAL TEMP9 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk_100~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk_100 <= clk_100;
ww_GC_IN <= GC_IN;
ww_SW_IN <= SW_IN;
ww_YY_IN <= YY_IN;
ww_UP_IN <= UP_IN;
ww_DOWN_IN <= DOWN_IN;
ww_MS_IN <= MS_IN;
ww_DY_IN <= DY_IN;
ww_QT_IN <= QT_IN;
ww_RST_IN <= RST_IN;
GC <= ww_GC;
SW <= ww_SW;
YY <= ww_YY;
UP <= ww_UP;
DOWN <= ww_DOWN;
MS <= ww_MS;
DY <= ww_DY;
QT <= ww_QT;
RST <= ww_RST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_100~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_100~combout\);
\ALT_INV_clk_100~clkctrl_outclk\ <= NOT \clk_100~clkctrl_outclk\;

-- Location: LCFF_X27_Y1_N17
\TEMP3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP3(1));

-- Location: LCFF_X22_Y7_N23
\TEMP7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP7(3));

-- Location: LCFF_X7_Y5_N5
\TEMP9[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP9(3));

-- Location: LCCOMB_X27_Y1_N8
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = TEMP3(1) $ (TEMP3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP3(1),
	datad => TEMP3(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X27_Y1_N16
\TEMP3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP3~3_combout\ = (\Add2~0_combout\ & (!\Equal2~0_combout\ & (\DATA3~regout\ $ (\YY_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA3~regout\,
	datab => \Add2~0_combout\,
	datac => \YY_IN~combout\,
	datad => \Equal2~0_combout\,
	combout => \TEMP3~3_combout\);

-- Location: LCCOMB_X22_Y7_N30
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = TEMP7(3) $ (((TEMP7(1) & (TEMP7(2) & TEMP7(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP7(1),
	datab => TEMP7(2),
	datac => TEMP7(3),
	datad => TEMP7(0),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X22_Y7_N22
\TEMP7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP7~1_combout\ = (!\Equal6~0_combout\ & (\Add6~0_combout\ & (\DY_IN~combout\ $ (\DATA7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DY_IN~combout\,
	datab => \DATA7~regout\,
	datac => \Equal6~0_combout\,
	datad => \Add6~0_combout\,
	combout => \TEMP7~1_combout\);

-- Location: LCCOMB_X7_Y5_N22
\Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = TEMP9(3) $ (((TEMP9(2) & (TEMP9(0) & TEMP9(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP9(2),
	datab => TEMP9(3),
	datac => TEMP9(0),
	datad => TEMP9(1),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X7_Y5_N4
\TEMP9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP9~6_combout\ = (!\Equal8~0_combout\ & (\Add8~0_combout\ & (\DATA9~regout\ $ (\RST_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \DATA9~regout\,
	datac => \RST_IN~combout\,
	datad => \Add8~0_combout\,
	combout => \TEMP9~6_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_clk_100,
	combout => \clk_100~combout\);

-- Location: CLKCTRL_G2
\clk_100~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_100~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_100~clkctrl_outclk\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GC_IN~I\ : cycloneii_io
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
	padio => ww_GC_IN,
	combout => \GC_IN~combout\);

-- Location: LCCOMB_X21_Y1_N0
\GC~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \GC~reg0feeder_combout\ = \GC_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GC_IN~combout\,
	combout => \GC~reg0feeder_combout\);

-- Location: LCCOMB_X21_Y1_N20
\DATA1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA1~0_combout\ = !\DATA1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA1~regout\,
	combout => \DATA1~0_combout\);

-- Location: LCFF_X21_Y1_N21
DATA1 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DATA1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA1~regout\);

-- Location: LCCOMB_X21_Y1_N18
\TEMP1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~0_combout\ = (!TEMP1(0) & (\DATA1~regout\ $ (\GC_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1~regout\,
	datac => TEMP1(0),
	datad => \GC_IN~combout\,
	combout => \TEMP1~0_combout\);

-- Location: LCFF_X21_Y1_N19
\TEMP1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP1(0));

-- Location: LCCOMB_X21_Y1_N22
\TEMP1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~1_combout\ = (TEMP1(2) & (TEMP1(3) $ (((TEMP1(1) & TEMP1(0)))))) # (!TEMP1(2) & (TEMP1(3) & ((TEMP1(1)) # (!TEMP1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP1(2),
	datab => TEMP1(3),
	datac => TEMP1(1),
	datad => TEMP1(0),
	combout => \TEMP1~1_combout\);

-- Location: LCCOMB_X21_Y1_N4
\TEMP1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~2_combout\ = (\TEMP1~1_combout\ & (\GC_IN~combout\ $ (\DATA1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GC_IN~combout\,
	datab => \DATA1~regout\,
	datad => \TEMP1~1_combout\,
	combout => \TEMP1~2_combout\);

-- Location: LCFF_X21_Y1_N5
\TEMP1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP1(3));

-- Location: LCCOMB_X21_Y1_N8
\TEMP1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~3_combout\ = (TEMP1(1) & (((!TEMP1(0))))) # (!TEMP1(1) & (TEMP1(0) & ((TEMP1(2)) # (!TEMP1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP1(2),
	datab => TEMP1(3),
	datac => TEMP1(1),
	datad => TEMP1(0),
	combout => \TEMP1~3_combout\);

-- Location: LCCOMB_X21_Y1_N30
\TEMP1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~4_combout\ = (\TEMP1~3_combout\ & (\DATA1~regout\ $ (\GC_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1~regout\,
	datac => \TEMP1~3_combout\,
	datad => \GC_IN~combout\,
	combout => \TEMP1~4_combout\);

-- Location: LCFF_X21_Y1_N31
\TEMP1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP1(1));

-- Location: LCCOMB_X21_Y1_N26
\TEMP1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~5_combout\ = (!TEMP1(0)) # (!TEMP1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP1(1),
	datad => TEMP1(0),
	combout => \TEMP1~5_combout\);

-- Location: LCCOMB_X21_Y1_N24
\TEMP1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP1~6_combout\ = (\GC_IN~combout\ & (!\DATA1~regout\ & (TEMP1(2) $ (!\TEMP1~5_combout\)))) # (!\GC_IN~combout\ & (\DATA1~regout\ & (TEMP1(2) $ (!\TEMP1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GC_IN~combout\,
	datab => \DATA1~regout\,
	datac => TEMP1(2),
	datad => \TEMP1~5_combout\,
	combout => \TEMP1~6_combout\);

-- Location: LCFF_X21_Y1_N25
\TEMP1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP1(2));

-- Location: LCCOMB_X21_Y1_N10
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (TEMP1(3) & (!TEMP1(1) & (!TEMP1(2) & TEMP1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP1(3),
	datab => TEMP1(1),
	datac => TEMP1(2),
	datad => TEMP1(0),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X21_Y1_N1
\GC~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \GC~reg0feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GC~reg0_regout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW_IN~I\ : cycloneii_io
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
	padio => ww_SW_IN,
	combout => \SW_IN~combout\);

-- Location: LCCOMB_X10_Y11_N2
\DATA2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA2~feeder_combout\ = \SW_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW_IN~combout\,
	combout => \DATA2~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N12
\TEMP2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~0_combout\ = (!TEMP2(0) & (\DATA2~regout\ $ (\SW_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA2~regout\,
	datac => TEMP2(0),
	datad => \SW_IN~combout\,
	combout => \TEMP2~0_combout\);

-- Location: LCFF_X10_Y11_N13
\TEMP2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP2(0));

-- Location: LCCOMB_X10_Y11_N16
\TEMP2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~3_combout\ = (TEMP2(1) & (((!TEMP2(0))))) # (!TEMP2(1) & (TEMP2(0) & ((TEMP2(2)) # (!TEMP2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP2(3),
	datab => TEMP2(2),
	datac => TEMP2(1),
	datad => TEMP2(0),
	combout => \TEMP2~3_combout\);

-- Location: LCCOMB_X10_Y11_N24
\TEMP2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~4_combout\ = (\TEMP2~3_combout\ & (\DATA2~regout\ $ (\SW_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA2~regout\,
	datac => \TEMP2~3_combout\,
	datad => \SW_IN~combout\,
	combout => \TEMP2~4_combout\);

-- Location: LCFF_X10_Y11_N25
\TEMP2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP2(1));

-- Location: LCCOMB_X10_Y11_N10
\TEMP2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~5_combout\ = (!TEMP2(0)) # (!TEMP2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP2(1),
	datad => TEMP2(0),
	combout => \TEMP2~5_combout\);

-- Location: LCCOMB_X10_Y11_N26
\TEMP2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~6_combout\ = (\SW_IN~combout\ & (!\DATA2~regout\ & (TEMP2(2) $ (!\TEMP2~5_combout\)))) # (!\SW_IN~combout\ & (\DATA2~regout\ & (TEMP2(2) $ (!\TEMP2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_IN~combout\,
	datab => \DATA2~regout\,
	datac => TEMP2(2),
	datad => \TEMP2~5_combout\,
	combout => \TEMP2~6_combout\);

-- Location: LCFF_X10_Y11_N27
\TEMP2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP2(2));

-- Location: LCCOMB_X10_Y11_N22
\TEMP2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~1_combout\ = (TEMP2(3) & ((TEMP2(2) $ (TEMP2(1))) # (!TEMP2(0)))) # (!TEMP2(3) & (TEMP2(2) & (TEMP2(1) & TEMP2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP2(3),
	datab => TEMP2(2),
	datac => TEMP2(1),
	datad => TEMP2(0),
	combout => \TEMP2~1_combout\);

-- Location: LCCOMB_X10_Y11_N14
\TEMP2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP2~2_combout\ = (\TEMP2~1_combout\ & (\SW_IN~combout\ $ (\DATA2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_IN~combout\,
	datab => \DATA2~regout\,
	datad => \TEMP2~1_combout\,
	combout => \TEMP2~2_combout\);

-- Location: LCFF_X10_Y11_N15
\TEMP2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP2(3));

-- Location: LCCOMB_X10_Y11_N20
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (TEMP2(0) & (TEMP2(3) & (!TEMP2(1) & !TEMP2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP2(0),
	datab => TEMP2(3),
	datac => TEMP2(1),
	datad => TEMP2(2),
	combout => \Equal1~0_combout\);

-- Location: LCFF_X10_Y11_N3
DATA2 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DATA2~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA2~regout\);

-- Location: LCCOMB_X10_Y11_N0
\SW~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SW~reg0feeder_combout\ = \DATA2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA2~regout\,
	combout => \SW~reg0feeder_combout\);

-- Location: LCFF_X10_Y11_N1
\SW~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \SW~reg0feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SW~reg0_regout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\YY_IN~I\ : cycloneii_io
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
	padio => ww_YY_IN,
	combout => \YY_IN~combout\);

-- Location: LCCOMB_X27_Y1_N20
\TEMP3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP3~0_combout\ = (!TEMP3(0) & (\DATA3~regout\ $ (\YY_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA3~regout\,
	datab => \YY_IN~combout\,
	datac => TEMP3(0),
	combout => \TEMP3~0_combout\);

-- Location: LCFF_X27_Y1_N21
\TEMP3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP3(0));

-- Location: LCCOMB_X27_Y1_N10
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = TEMP3(2) $ (((TEMP3(1) & TEMP3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP3(1),
	datac => TEMP3(2),
	datad => TEMP3(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X27_Y1_N26
\TEMP3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP3~4_combout\ = (!\Equal2~0_combout\ & (\Add2~1_combout\ & (\DATA3~regout\ $ (\YY_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA3~regout\,
	datab => \Equal2~0_combout\,
	datac => \YY_IN~combout\,
	datad => \Add2~1_combout\,
	combout => \TEMP3~4_combout\);

-- Location: LCFF_X27_Y1_N27
\TEMP3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP3(2));

-- Location: LCCOMB_X27_Y1_N30
\TEMP3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP3~1_combout\ = (TEMP3(1) & (TEMP3(3) $ (((TEMP3(2) & TEMP3(0)))))) # (!TEMP3(1) & (TEMP3(3) & ((TEMP3(2)) # (!TEMP3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP3(1),
	datab => TEMP3(3),
	datac => TEMP3(2),
	datad => TEMP3(0),
	combout => \TEMP3~1_combout\);

-- Location: LCCOMB_X27_Y1_N6
\TEMP3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP3~2_combout\ = (\TEMP3~1_combout\ & (\DATA3~regout\ $ (\YY_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA3~regout\,
	datac => \YY_IN~combout\,
	datad => \TEMP3~1_combout\,
	combout => \TEMP3~2_combout\);

-- Location: LCFF_X27_Y1_N7
\TEMP3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP3(3));

-- Location: LCCOMB_X27_Y1_N4
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!TEMP3(1) & (!TEMP3(2) & (TEMP3(0) & TEMP3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP3(1),
	datab => TEMP3(2),
	datac => TEMP3(0),
	datad => TEMP3(3),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X27_Y1_N19
DATA3 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \YY_IN~combout\,
	sload => VCC,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA3~regout\);

-- Location: LCFF_X27_Y1_N25
\YY~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \DATA3~regout\,
	sload => VCC,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \YY~reg0_regout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UP_IN~I\ : cycloneii_io
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
	padio => ww_UP_IN,
	combout => \UP_IN~combout\);

-- Location: LCCOMB_X10_Y5_N26
\DATA4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA4~feeder_combout\ = \UP_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UP_IN~combout\,
	combout => \DATA4~feeder_combout\);

-- Location: LCCOMB_X10_Y5_N20
\TEMP4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP4~0_combout\ = (!TEMP4(0) & (\DATA4~regout\ $ (\UP_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA4~regout\,
	datac => TEMP4(0),
	datad => \UP_IN~combout\,
	combout => \TEMP4~0_combout\);

-- Location: LCFF_X10_Y5_N21
\TEMP4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP4(0));

-- Location: LCCOMB_X10_Y5_N24
\Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = TEMP4(1) $ (TEMP4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP4(1),
	datad => TEMP4(0),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X10_Y5_N16
\TEMP4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP4~2_combout\ = (!\Equal3~0_combout\ & (\Add3~1_combout\ & (\DATA4~regout\ $ (\UP_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \DATA4~regout\,
	datac => \Add3~1_combout\,
	datad => \UP_IN~combout\,
	combout => \TEMP4~2_combout\);

-- Location: LCFF_X10_Y5_N17
\TEMP4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP4(1));

-- Location: LCCOMB_X10_Y5_N10
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = TEMP4(2) $ (((TEMP4(1) & TEMP4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP4(2),
	datac => TEMP4(1),
	datad => TEMP4(0),
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X10_Y5_N18
\TEMP4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP4~3_combout\ = (!\Equal3~0_combout\ & (\Add3~2_combout\ & (\UP_IN~combout\ $ (\DATA4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \UP_IN~combout\,
	datac => \DATA4~regout\,
	datad => \Add3~2_combout\,
	combout => \TEMP4~3_combout\);

-- Location: LCFF_X10_Y5_N19
\TEMP4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP4(2));

-- Location: LCCOMB_X10_Y5_N30
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = TEMP4(3) $ (((TEMP4(0) & (TEMP4(1) & TEMP4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP4(0),
	datab => TEMP4(3),
	datac => TEMP4(1),
	datad => TEMP4(2),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X10_Y5_N6
\TEMP4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP4~1_combout\ = (!\Equal3~0_combout\ & (\Add3~0_combout\ & (\UP_IN~combout\ $ (\DATA4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \UP_IN~combout\,
	datac => \DATA4~regout\,
	datad => \Add3~0_combout\,
	combout => \TEMP4~1_combout\);

-- Location: LCFF_X10_Y5_N7
\TEMP4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP4(3));

-- Location: LCCOMB_X10_Y5_N4
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!TEMP4(1) & (!TEMP4(2) & (TEMP4(0) & TEMP4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP4(1),
	datab => TEMP4(2),
	datac => TEMP4(0),
	datad => TEMP4(3),
	combout => \Equal3~0_combout\);

-- Location: LCFF_X10_Y5_N27
DATA4 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DATA4~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA4~regout\);

-- Location: LCFF_X10_Y5_N9
\UP~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \DATA4~regout\,
	sload => VCC,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UP~reg0_regout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DOWN_IN~I\ : cycloneii_io
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
	padio => ww_DOWN_IN,
	combout => \DOWN_IN~combout\);

-- Location: LCCOMB_X8_Y7_N20
\TEMP5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP5~0_combout\ = (!TEMP5(0) & (\DOWN_IN~combout\ $ (\DATA5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOWN_IN~combout\,
	datac => TEMP5(0),
	datad => \DATA5~regout\,
	combout => \TEMP5~0_combout\);

-- Location: LCFF_X8_Y7_N21
\TEMP5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP5(0));

-- Location: LCCOMB_X8_Y7_N16
\Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = TEMP5(1) $ (TEMP5(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP5(1),
	datad => TEMP5(0),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X8_Y7_N8
\TEMP5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP5~2_combout\ = (!\Equal4~0_combout\ & (\Add4~1_combout\ & (\DOWN_IN~combout\ $ (\DATA5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \DOWN_IN~combout\,
	datac => \Add4~1_combout\,
	datad => \DATA5~regout\,
	combout => \TEMP5~2_combout\);

-- Location: LCFF_X8_Y7_N9
\TEMP5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP5(1));

-- Location: LCCOMB_X8_Y7_N2
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = TEMP5(2) $ (((TEMP5(1) & TEMP5(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP5(2),
	datac => TEMP5(1),
	datad => TEMP5(0),
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X8_Y7_N26
\TEMP5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP5~3_combout\ = (!\Equal4~0_combout\ & (\Add4~2_combout\ & (\DATA5~regout\ $ (\DOWN_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \DATA5~regout\,
	datac => \DOWN_IN~combout\,
	datad => \Add4~2_combout\,
	combout => \TEMP5~3_combout\);

-- Location: LCFF_X8_Y7_N27
\TEMP5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP5(2));

-- Location: LCCOMB_X8_Y7_N22
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = TEMP5(3) $ (((TEMP5(1) & (TEMP5(2) & TEMP5(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP5(1),
	datab => TEMP5(2),
	datac => TEMP5(3),
	datad => TEMP5(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X8_Y7_N30
\TEMP5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP5~1_combout\ = (!\Equal4~0_combout\ & (\Add4~0_combout\ & (\DATA5~regout\ $ (\DOWN_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \DATA5~regout\,
	datac => \DOWN_IN~combout\,
	datad => \Add4~0_combout\,
	combout => \TEMP5~1_combout\);

-- Location: LCFF_X8_Y7_N31
\TEMP5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP5(3));

-- Location: LCCOMB_X8_Y7_N4
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (TEMP5(0) & (TEMP5(3) & (!TEMP5(1) & !TEMP5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP5(0),
	datab => TEMP5(3),
	datac => TEMP5(1),
	datad => TEMP5(2),
	combout => \Equal4~0_combout\);

-- Location: LCFF_X8_Y7_N19
DATA5 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \DOWN_IN~combout\,
	sload => VCC,
	ena => \Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA5~regout\);

-- Location: LCCOMB_X8_Y7_N24
\DOWN~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DOWN~reg0feeder_combout\ = \DATA5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA5~regout\,
	combout => \DOWN~reg0feeder_combout\);

-- Location: LCFF_X8_Y7_N25
\DOWN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DOWN~reg0feeder_combout\,
	ena => \Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DOWN~reg0_regout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MS_IN~I\ : cycloneii_io
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
	padio => ww_MS_IN,
	combout => \MS_IN~combout\);

-- Location: LCCOMB_X2_Y6_N10
\DATA6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA6~feeder_combout\ = \MS_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MS_IN~combout\,
	combout => \DATA6~feeder_combout\);

-- Location: LCCOMB_X2_Y6_N4
\TEMP6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP6~0_combout\ = (!TEMP6(0) & (\DATA6~regout\ $ (\MS_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA6~regout\,
	datac => TEMP6(0),
	datad => \MS_IN~combout\,
	combout => \TEMP6~0_combout\);

-- Location: LCFF_X2_Y6_N5
\TEMP6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP6(0));

-- Location: LCCOMB_X2_Y6_N24
\Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = TEMP6(0) $ (TEMP6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP6(0),
	datac => TEMP6(1),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X2_Y6_N0
\TEMP6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP6~2_combout\ = (\Add5~1_combout\ & (!\Equal5~0_combout\ & (\MS_IN~combout\ $ (\DATA6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MS_IN~combout\,
	datab => \DATA6~regout\,
	datac => \Add5~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \TEMP6~2_combout\);

-- Location: LCFF_X2_Y6_N1
\TEMP6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP6(1));

-- Location: LCCOMB_X2_Y6_N26
\Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = TEMP6(2) $ (((TEMP6(1) & TEMP6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP6(2),
	datac => TEMP6(1),
	datad => TEMP6(0),
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X2_Y6_N18
\TEMP6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP6~3_combout\ = (!\Equal5~0_combout\ & (\Add5~2_combout\ & (\DATA6~regout\ $ (\MS_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \DATA6~regout\,
	datac => \MS_IN~combout\,
	datad => \Add5~2_combout\,
	combout => \TEMP6~3_combout\);

-- Location: LCFF_X2_Y6_N19
\TEMP6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP6(2));

-- Location: LCCOMB_X2_Y6_N22
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = TEMP6(3) $ (((TEMP6(2) & (TEMP6(1) & TEMP6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP6(3),
	datab => TEMP6(2),
	datac => TEMP6(1),
	datad => TEMP6(0),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X2_Y6_N14
\TEMP6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP6~1_combout\ = (!\Equal5~0_combout\ & (\Add5~0_combout\ & (\DATA6~regout\ $ (\MS_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \DATA6~regout\,
	datac => \MS_IN~combout\,
	datad => \Add5~0_combout\,
	combout => \TEMP6~1_combout\);

-- Location: LCFF_X2_Y6_N15
\TEMP6[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP6(3));

-- Location: LCCOMB_X2_Y6_N20
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!TEMP6(1) & (TEMP6(0) & (TEMP6(3) & !TEMP6(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP6(1),
	datab => TEMP6(0),
	datac => TEMP6(3),
	datad => TEMP6(2),
	combout => \Equal5~0_combout\);

-- Location: LCFF_X2_Y6_N11
DATA6 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DATA6~feeder_combout\,
	ena => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA6~regout\);

-- Location: LCFF_X2_Y6_N9
\MS~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \DATA6~regout\,
	sload => VCC,
	ena => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MS~reg0_regout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DY_IN~I\ : cycloneii_io
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
	padio => ww_DY_IN,
	combout => \DY_IN~combout\);

-- Location: LCCOMB_X22_Y7_N26
\DATA7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA7~feeder_combout\ = \DY_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DY_IN~combout\,
	combout => \DATA7~feeder_combout\);

-- Location: LCCOMB_X22_Y7_N4
\TEMP7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP7~0_combout\ = (!TEMP7(0) & (\DATA7~regout\ $ (\DY_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA7~regout\,
	datac => TEMP7(0),
	datad => \DY_IN~combout\,
	combout => \TEMP7~0_combout\);

-- Location: LCFF_X22_Y7_N5
\TEMP7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP7(0));

-- Location: LCCOMB_X22_Y7_N16
\Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = TEMP7(0) $ (TEMP7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP7(0),
	datad => TEMP7(1),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X22_Y7_N8
\TEMP7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP7~2_combout\ = (\Add6~1_combout\ & (!\Equal6~0_combout\ & (\DY_IN~combout\ $ (\DATA7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DY_IN~combout\,
	datab => \DATA7~regout\,
	datac => \Add6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \TEMP7~2_combout\);

-- Location: LCFF_X22_Y7_N9
\TEMP7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP7(1));

-- Location: LCCOMB_X22_Y7_N10
\Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = TEMP7(2) $ (((TEMP7(1) & TEMP7(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP7(2),
	datac => TEMP7(1),
	datad => TEMP7(0),
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X22_Y7_N18
\TEMP7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP7~3_combout\ = (!\Equal6~0_combout\ & (\Add6~2_combout\ & (\DY_IN~combout\ $ (\DATA7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DY_IN~combout\,
	datab => \DATA7~regout\,
	datac => \Equal6~0_combout\,
	datad => \Add6~2_combout\,
	combout => \TEMP7~3_combout\);

-- Location: LCFF_X22_Y7_N19
\TEMP7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP7(2));

-- Location: LCCOMB_X22_Y7_N12
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (TEMP7(3) & (TEMP7(0) & (!TEMP7(1) & !TEMP7(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP7(3),
	datab => TEMP7(0),
	datac => TEMP7(1),
	datad => TEMP7(2),
	combout => \Equal6~0_combout\);

-- Location: LCFF_X22_Y7_N27
DATA7 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DATA7~feeder_combout\,
	ena => \Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA7~regout\);

-- Location: LCFF_X22_Y7_N25
\DY~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \DATA7~regout\,
	sload => VCC,
	ena => \Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DY~reg0_regout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\QT_IN~I\ : cycloneii_io
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
	padio => ww_QT_IN,
	combout => \QT_IN~combout\);

-- Location: LCCOMB_X9_Y7_N26
\DATA8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATA8~feeder_combout\ = \QT_IN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QT_IN~combout\,
	combout => \DATA8~feeder_combout\);

-- Location: LCCOMB_X9_Y7_N4
\TEMP8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP8~0_combout\ = (!TEMP8(0) & (\DATA8~regout\ $ (\QT_IN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA8~regout\,
	datac => TEMP8(0),
	datad => \QT_IN~combout\,
	combout => \TEMP8~0_combout\);

-- Location: LCFF_X9_Y7_N5
\TEMP8[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP8(0));

-- Location: LCCOMB_X9_Y7_N16
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = TEMP8(1) $ (TEMP8(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TEMP8(1),
	datad => TEMP8(0),
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X9_Y7_N24
\TEMP8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP8~2_combout\ = (!\Equal7~0_combout\ & (\Add7~1_combout\ & (\DATA8~regout\ $ (\QT_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \DATA8~regout\,
	datac => \Add7~1_combout\,
	datad => \QT_IN~combout\,
	combout => \TEMP8~2_combout\);

-- Location: LCFF_X9_Y7_N25
\TEMP8[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP8(1));

-- Location: LCCOMB_X9_Y7_N10
\Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = TEMP8(2) $ (((TEMP8(1) & TEMP8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP8(2),
	datac => TEMP8(1),
	datad => TEMP8(0),
	combout => \Add7~2_combout\);

-- Location: LCCOMB_X9_Y7_N18
\TEMP8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP8~3_combout\ = (!\Equal7~0_combout\ & (\Add7~2_combout\ & (\DATA8~regout\ $ (\QT_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \DATA8~regout\,
	datac => \QT_IN~combout\,
	datad => \Add7~2_combout\,
	combout => \TEMP8~3_combout\);

-- Location: LCFF_X9_Y7_N19
\TEMP8[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP8(2));

-- Location: LCCOMB_X9_Y7_N22
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = TEMP8(3) $ (((TEMP8(2) & (TEMP8(1) & TEMP8(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP8(3),
	datab => TEMP8(2),
	datac => TEMP8(1),
	datad => TEMP8(0),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X9_Y7_N14
\TEMP8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP8~1_combout\ = (!\Equal7~0_combout\ & (\Add7~0_combout\ & (\DATA8~regout\ $ (\QT_IN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \DATA8~regout\,
	datac => \QT_IN~combout\,
	datad => \Add7~0_combout\,
	combout => \TEMP8~1_combout\);

-- Location: LCFF_X9_Y7_N15
\TEMP8[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP8(3));

-- Location: LCCOMB_X9_Y7_N20
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (TEMP8(0) & (TEMP8(3) & (!TEMP8(1) & !TEMP8(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP8(0),
	datab => TEMP8(3),
	datac => TEMP8(1),
	datad => TEMP8(2),
	combout => \Equal7~0_combout\);

-- Location: LCFF_X9_Y7_N27
DATA8 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \DATA8~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA8~regout\);

-- Location: LCCOMB_X9_Y7_N8
\QT~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \QT~reg0feeder_combout\ = \DATA8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA8~regout\,
	combout => \QT~reg0feeder_combout\);

-- Location: LCFF_X9_Y7_N9
\QT~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \QT~reg0feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QT~reg0_regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST_IN~I\ : cycloneii_io
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
	padio => ww_RST_IN,
	combout => \RST_IN~combout\);

-- Location: LCCOMB_X7_Y5_N14
\TEMP9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP9~4_combout\ = (!TEMP9(0) & (\RST_IN~combout\ $ (\DATA9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_IN~combout\,
	datac => TEMP9(0),
	datad => \DATA9~regout\,
	combout => \TEMP9~4_combout\);

-- Location: LCFF_X7_Y5_N15
\TEMP9[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP9(0));

-- Location: LCCOMB_X7_Y5_N8
\P9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P9~0_combout\ = \RST_IN~combout\ $ (\DATA9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_IN~combout\,
	datad => \DATA9~regout\,
	combout => \P9~0_combout\);

-- Location: LCCOMB_X7_Y5_N26
\TEMP9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP9~5_combout\ = (\P9~0_combout\ & (!\Equal8~0_combout\ & (TEMP9(0) $ (TEMP9(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP9(0),
	datab => \P9~0_combout\,
	datac => TEMP9(1),
	datad => \Equal8~0_combout\,
	combout => \TEMP9~5_combout\);

-- Location: LCFF_X7_Y5_N27
\TEMP9[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP9(1));

-- Location: LCCOMB_X7_Y5_N24
\Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = TEMP9(2) $ (((TEMP9(0) & TEMP9(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TEMP9(2),
	datac => TEMP9(0),
	datad => TEMP9(1),
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X7_Y5_N0
\TEMP9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \TEMP9~7_combout\ = (!\Equal8~0_combout\ & (\Add8~1_combout\ & (\RST_IN~combout\ $ (\DATA9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_IN~combout\,
	datab => \DATA9~regout\,
	datac => \Equal8~0_combout\,
	datad => \Add8~1_combout\,
	combout => \TEMP9~7_combout\);

-- Location: LCFF_X7_Y5_N1
\TEMP9[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	datain => \TEMP9~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TEMP9(2));

-- Location: LCCOMB_X7_Y5_N20
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (TEMP9(3) & (!TEMP9(2) & (TEMP9(0) & !TEMP9(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TEMP9(3),
	datab => TEMP9(2),
	datac => TEMP9(0),
	datad => TEMP9(1),
	combout => \Equal8~0_combout\);

-- Location: LCFF_X7_Y5_N11
DATA9 : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \RST_IN~combout\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATA9~regout\);

-- Location: LCFF_X7_Y5_N9
\RST~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_100~clkctrl_outclk\,
	sdata => \DATA9~regout\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RST~reg0_regout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GC~I\ : cycloneii_io
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
	datain => \GC~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GC);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SW~I\ : cycloneii_io
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
	datain => \SW~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SW);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\YY~I\ : cycloneii_io
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
	datain => \YY~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_YY);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UP~I\ : cycloneii_io
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
	datain => \UP~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UP);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DOWN~I\ : cycloneii_io
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
	datain => \DOWN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DOWN);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MS~I\ : cycloneii_io
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
	datain => \MS~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MS);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DY~I\ : cycloneii_io
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
	datain => \DY~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DY);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QT~I\ : cycloneii_io
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
	datain => \QT~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QT);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RST~I\ : cycloneii_io
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
	datain => \RST~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RST);
END structure;


