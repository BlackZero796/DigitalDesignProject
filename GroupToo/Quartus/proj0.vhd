library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library work;
use work.TTU.all;

entity proj0 is 
	port(D1: in STD_LOGIC;
		  D2: in STD_LOGIC;
		  clock: in STD_LOGIC;
		  reset: in STD_LOGIC;
		  output: out STD_LOGIC);
end entity proj0;
	

architecture ST of proj0 is

	signal Q1, Q1b ,Q2 ,Q2b, D3, D3b, outputb : STD_LOGIC;
	
	component D_FF
		port(D: in std_logic;
			  CLK: in std_logic;
			  RESET: in std_logic;
			  Q: out std_logic;
			  Qnot: out std_logic);
	end component;
	
	component AND_2
		port(x0: in std_logic;
			  x1: in std_logic;
			  y: out std_logic);
	end component;	
		
		
	begin
		U1: entity work.D_FF(RTL) port map (D=>D1, CLK=>clock,
														RESET=>reset, Q=>Q1,
														Qnot=>Q1b);
		U2: entity work.D_FF(RTL) port map (D=>D2, CLK=>clock,
														RESET=>reset, Q=>Q2,
														Qnot=>Q2b);
		U3: entity work.AND_2(RTL) port map(x0=>Q1, x1=>Q2, y=>D3);
		U4: entity work.D_FF(RTL) port map(D=>D3, CLK=>clock,
													  RESET=>reset, Q=>output,
													  Qnot=>outputb);
	
end architecture ST;