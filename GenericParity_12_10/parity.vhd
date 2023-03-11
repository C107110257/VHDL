---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------
ENTITY parity_gen IS
GENERIC (n : INTEGER := 8);
PORT ( input: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
output: OUT STD_LOGIC_VECTOR (n DOWNTO 0));

END parity_gen;
-----------------------------------------------
ARCHITECTURE parity OF parity_gen IS
BEGIN
PROCESS (input)
VARIABLE temp1: STD_LOGIC;
VARIABLE temp2: STD_LOGIC_VECTOR (output'RANGE);
BEGIN
temp1 := '0';
FOR i IN input'RANGE LOOP
temp1 := temp1 XOR input(i);
temp2(i) := input(i);
END LOOP;
temp2(output'HIGH) := temp1;
output <= temp2;
END PROCESS;
END parity;
-----------------------------------------------