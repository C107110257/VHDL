-- VHDL Model Created from ECS Symbol CLK_SRC.sym -- Mar 13 21:34:32 2006

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;
library STD;
   use STD.textio.all;

entity CLK_SRC is
      Port (     CLK : Out   std_logic;
                 RST : Out   std_logic );
end CLK_SRC;

architecture BEHAVIORAL of CLK_SRC is

constant  TB : time := 5 ns;    -- half cycle

   signal rst_i: std_logic := '0';
   signal clk_i: std_logic := '0';
   signal gap: std_logic;

   begin

rst_i <= '1' after 2 ns;
rst <= rst_i;

clk_i <= not(clk_i) after TB;
clk <= clk_i or gap;

-- test only
--gap <= '0' after 0 ns, '1' after 500 ns, '0' after 600 ns;
-- default no gap
gap <= '0' after 0 ns;

end BEHAVIORAL;

configuration CFG_CLK_SRC of CLK_SRC is
   for BEHAVIORAL

   end for;

end CFG_CLK_SRC;
