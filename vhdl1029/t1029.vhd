LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
------------------------------------------
ENTITY adder1 IS
PORT ( a, b : IN SIGNED (8 DOWNTO 0);
sum : OUT SIGNED (9 DOWNTO 0));
END adder1;
------------------------------------------
ARCHITECTURE adder1 OF adder1 IS
BEGIN
sum <= (a(8) & a)+(b(8)& b);
END adder1;
------------------------------------------
