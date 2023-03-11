library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;
   use IEEE.std_logic_unsigned.all;
library STD;
   use STD.textio.all;
entity WAVEFORM_GEN is
   Port ( sel   : OUT STD_logic_vector(7 downto 0));
end WAVEFORM_GEN;

architecture BEHAVIORAL of WAVEFORM_GEN is
    
constant  TB : time := 0.977 ns;    -- half cycle
signal t: std_logic_vector(7 downto 0) :=(others => '0');
signal sel_x: std_logic_vector(7 downto 0);
signal clk: std_logic := '0';
begin
clk <= not(clk) after TB;
process(clk)
	begin
		if(t=256) then
			t<=(others => '0');
		elsif (rising_edge(clk)	and clk='1') then
			sel_x <= t;
			t <= t + 1;
		end if;
END process;
sel <= sel_x;

end BEHAVIORAL;