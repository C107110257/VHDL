LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
------------------------------------------
ENTITY full_adder IS
PORT ( a, b, cin: IN std_logic;
       s, cout: OUT std_logic);
END full_adder;
------------------------------------------
ARCHITECTURE dataflow OF full_adder IS
BEGIN
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (a AND cin) OR (b AND cin);
END dataflow;
------------------------------------------
