LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------------
ENTITY dff2 IS
  PORT (d, clk, rst: IN STD_LOGIC;
       q: OUT STD_LOGIC);
END dff2;
--------------------------------------
ARCHITECTURE behavior OF dff2 IS
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF (rst='1') THEN
      q <= '0';
    ELSIF (clk'EVENT AND clk='1') THEN
      q <= d;
    END IF;
  END PROCESS;
END behavior;
