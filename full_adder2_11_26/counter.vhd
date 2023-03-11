-- VHDL Model Created from ECS Symbol COUNTER.sym -- Mar 13 21:35:47 2006

library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;
--library STD;
--   use STD.textio.all;

entity COUNTER is
      Port (     clk, reset : In    std_logic;
                    digit : Out   std_logic_vector (4 downto 0));
end COUNTER;

architecture COUNTER of COUNTER is
begin
	process(clk,reset)
	variable temp1: integer range 0 to 32;
	begin
	----------------------------------------------------------
		if (reset='1') then
			temp1 := 0;
		elsif (clk'event and clk='1') then
			temp1 :=temp1+1;
			if(temp1=32) then
				temp1 := 0;
			end if;
		end if;
	digit <= CONV_STD_LOGIC_VECTOR(temp1,5);
	end process;
end COUNTER;
 
