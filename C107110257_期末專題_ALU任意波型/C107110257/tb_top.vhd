-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"
-- CREATED		"Fri Jan 08 01:07:30 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY tb_top IS 
	PORT
	(
		sawtooth :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		sine :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		square :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		triangle :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END tb_top;

ARCHITECTURE bdf_type OF tb_top IS 

COMPONENT alu
	PORT(sel : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sawtooth_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sine_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 square_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 triangle_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT waveform_gen
	PORT(		 sel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : alu
PORT MAP(sel => SYNTHESIZED_WIRE_0,
		 sawtooth_output => sawtooth,
		 sine_output => sine,
		 square_output => square,
		 triangle_output => triangle);


b2v_inst2 : waveform_gen
PORT MAP(		 sel => SYNTHESIZED_WIRE_0);


END bdf_type;