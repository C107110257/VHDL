-- VHDL Model Created from ECS Symbol COUNTER.sym -- Mar 13 21:35:47 2006

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;
--library STD;
--   use STD.textio.all;

entity COUNTER is
      Port (     CLK : In    std_logic;
                 RST : In    std_logic;
                   Y : Out   Unsigned (3 downto 0));
end COUNTER;

architecture BEHAVIORAL of COUNTER is

signal cntr : unsigned(3 downto 0);

   begin

process(rst,clk)
begin
  if (rst='0') then
     cntr <= "0000";
  elsif clk'event and clk='1' then
     cntr <= cntr + 1;
  end if;
end process;

y <= cntr;

end BEHAVIORAL;

configuration CFG_COUNTER of COUNTER is
   for BEHAVIORAL

   end for;

end CFG_COUNTER;
