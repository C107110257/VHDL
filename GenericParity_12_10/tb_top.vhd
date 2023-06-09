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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Thu Dec 10 11:05:44 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY tb_top IS 
	PORT
	(
		O :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END tb_top;

ARCHITECTURE bdf_type OF tb_top IS 

COMPONENT sg
	PORT(		 Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT parity_gen
GENERIC (n : INTEGER
			);
	PORT(input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : sg
PORT MAP(		 Y => SYNTHESIZED_WIRE_0);


b2v_inst2 : parity_gen
GENERIC MAP(n => 8
			)
PORT MAP(input => SYNTHESIZED_WIRE_0,
		 output => O);


END bdf_type;