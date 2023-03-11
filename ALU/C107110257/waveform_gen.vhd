library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;
   use IEEE.std_logic_unsigned.all;
library STD;
   use STD.textio.all;
entity WAVEFORM_GEN is
   Port ( a , b : OUT STD_logic_vector(7 downto 0);
	       sel   : OUT STD_logic_vector(3 downto 0);
			 cin   : OUT STD_logic);
end WAVEFORM_GEN;

architecture BEHAVIORAL of WAVEFORM_GEN is
    
constant  TB : time := 50 ns;    -- half cycle

signal sel_x: std_logic_vector(3 downto 0);

begin
cin <= '1';
process
	begin
	sel_x <= "0111";
	wait for 100 ns;
	sel_x <= "0101";
	wait for 100 ns;
	sel_x <= "0010";
	wait for 100 ns;
	sel_x <= "0000";
	wait for 100 ns;
	sel_x <= "0001";
	wait for 100 ns;
	sel_x <= "0001";
	wait for 100 ns;
	sel_x <= "0111";
	wait for 100 ns;
END process;
a <= "00000111";
b <= "00000101";
sel <= sel_x;

end BEHAVIORAL;