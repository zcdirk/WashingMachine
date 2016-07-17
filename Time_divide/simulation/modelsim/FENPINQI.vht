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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/02/2015 15:20:59"
                                                            
-- Vhdl Test Bench template for design  :  FENPINQI
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FENPINQI_vhd_tst IS
END FENPINQI_vhd_tst;
ARCHITECTURE FENPINQI_arch OF FENPINQI_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clk_1 : STD_LOGIC;
SIGNAL clk_100 : STD_LOGIC;
SIGNAL clk_500 : STD_LOGIC;
COMPONENT FENPINQI
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	clk_1 : BUFFER STD_LOGIC;
	clk_100 : BUFFER STD_LOGIC;
	clk_500 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FENPINQI
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	clk_1 => clk_1,
	clk_100 => clk_100,
	clk_500 => clk_500
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END FENPINQI_arch;
