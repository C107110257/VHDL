
---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------------------------------------
ENTITY parity_det IS
GENERIC (n : INTEGER := 4);
PORT ( input: IN STD_LOGIC_VECTOR (n DOWNTO 0);
output: OUT STD_LOGIC);
END parity_det;
--------------------------------------------
ARCHITECTURE parity OF parity_det IS
BEGIN
PROCESS (input)
VARIABLE temp: STD_LOGIC;
BEGIN
temp := '0';
FOR i IN input'RANGE LOOP
temp := temp XOR input(i);
END LOOP;
output <= temp;
END PROCESS;
END parity;
--------------------------------------------