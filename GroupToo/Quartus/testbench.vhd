library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

use work.TTU.all;

entity testbench is
end entity testbench;

architecture BENCH of testbench is
	signal x, y: STD_LOGIC; -- input
	signal z: STD_LOGIC; -- output
	signal clk, res: STD_LOGIC; -- controls


	component proj0 is
		port(D1: in STD_LOGIC;
			  D2: in STD_LOGIC;
			  clock: in STD_LOGIC;
			  reset: in STD_LOGIC;
			  output: out STD_LOGIC);
	end component;	
begin
	
	U : proj0 port map(D1=>x, D2=>y, clock=>clk, reset=>res, output=>z);
	
	stimulus : process
		begin
			clk <= '0'; res <= '0';
			x <= '1'; y <= '1';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;
			clk <= '0';
		wait for 10ps;
			clk <= '1';
		wait for 10ps;


		
--		begin
--			clk <= '0'; res <= '0';
--			x <= '1'; y <= '1';
--		wait for 10ps;
--			clk <= '1';
--		wait for 10ps;
--			clk <= '0';
--			x <= '0'; y <= '1';
--		wait for 10ps;
--			clk <= '1';
--		wait for 10ps;
--			clk <= '0';
--			x <= '1'; y <= '0';
--		wait for 10ps;
--			clk <= '1';
--		wait for 10ps;
--			clk <= '0';
--			x <= '0'; y <= '0';
--		wait for 10ps;
--			clk <= '1';
		
		wait;
	end process stimulus;

end;
	