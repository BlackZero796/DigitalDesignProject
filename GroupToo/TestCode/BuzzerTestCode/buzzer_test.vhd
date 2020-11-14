library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BUZZER_TEST is port(
	input : in std_logic;
	buzz 	: out std_logic);
	end BUZZER_TEST;
	
architecture RTL of BUZZER_TEST is begin
	process(input)
	variable i : integer := 0;
	begin
		if (input = '1') then
			for i in 0 to 100 loop
				if (i mod 2 = 0) then
					buzz <= '1';
				else if (i = 100) then
					i := 0;
				else
					buzz <= '0';
				end if;
			end loop;
		end if;
	end process;
end RTL;

pll_inst : pll PORT MAP (
		inclk0	 => inclk0_sig,
		c0	 => c0_sig
	);