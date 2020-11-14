LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity and_gate1 is
	port(In1, In2 : in STD_LOGIC;
		  Out1 : out STD_LOGIC);
end and_gate1;

architecture and_gate1_arch of and_gate1 is 
	begin
	Out1 <= In1 and In2;
end and_gate1_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity or_gate1 is
	port(In1, In2 : in STD_LOGIC;
		  Out1 : out STD_LOGIC);
end or_gate1;

architecture or_gate1_arch of or_gate1 is 
	begin
	Out1 <= In1 or In2;
end or_gate1_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity xor_gate1 is
	port(In1, In2 : in STD_LOGIC;
		  Out1 : out STD_LOGIC);
end xor_gate1;

architecture xor_gate1_arch of xor_gate1 is 
	begin
	Out1 <= In1 xor In2;
end xor_gate1_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nor_gate1 is
	port(In1, In2 : in STD_LOGIC;
		  Out1 : out STD_LOGIC);
end nor_gate1;

architecture nor_gate1_arch of nor_gate1 is 
	begin
	Out1 <= In1 nor In2;
end nor_gate1_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity not_gate1 is
	port(In1: in STD_LOGIC;
		  Out1 : out STD_LOGIC);
end not_gate1;

architecture not_gate1_arch of not_gate1 is 
	begin
	Out1 <= not In1;
end not_gate1_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nand_gate1 is
	port(In1, In2 : in STD_LOGIC;
		  Out1 : out STD_LOGIC);
end nand_gate1;

architecture nand_gate1_arch of nand_gate1 is 
	begin
	Out1 <= In1 and In2;
end nand_gate1_arch;
