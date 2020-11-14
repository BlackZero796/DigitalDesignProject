-- Elizabeth Norris
-- Project Work 

library ieee;
use ieee.std_logic_1164.all;

entity image_generator is
	
	generic 
	(
		-- relative to pixels (640x480)
		ManVsize := 60; -- 1/8th screen
		ManHsize := 40; -- 1/16th 
		BombSize := 20; -- 1/2 bomber size, 20x20 square
		BasketVsize := 20; 
		BasketHsize := 40;
		-- range of screen for movement
		H_left := 5;
		H_right := 475;
		V_top := 645;
		V_bottom := 5;
	);
	
	port
	(
		reset : in std_logic;
		demo : in std_logic;
		start_game : in std_logic;
		score : buffer integer;
		Hactive : in std_logic;
		Vactive : in std_logic;
		direction_switch : in std_logic;
		red      :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green    :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue     :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
		
	);
	
end image_generator;

architecture image_generator_arch of image_generator is

	signal basket_pos_x : integer range H_left to H_right;
	signal man_pos_x : integer range H_left to H_right;
	signal bomb_pos_x : integer range H_left to H_right;
	signal bomb_pos_y : integer range V_bottom to V_top;
	signal bomb_position : integer range 0 to 16;
	
	type state_type is (s0, s1, s2, s3, s4, s5, s6)
		signal state : state_type;
		signal move : std_logic;
	-- s0 - reset
	-- s1 - demo
	-- s2 - play(speed 1)
	-- s3 - play(speed 2)
	-- s4 - play(speed 3)
	-- s5 - lost screen
	-- s6 - win screen 
	
begin
	-- -- -- --  BASKET MOVEMENTS -- -- -- --
	process(basket_clk, reset, direction_switch)
	begin	
		
		if(reset = '0') -- button, active low
			basket_pos_x <= 320; -- mid screen
			
		elsif(basket_clk'event and paddle_clk = '1') then
			basket_pos_x <= 320;
			
			-- Movement
			if(direction_switch(0) = '1') then -- if moving left
				
			end if;
			
	
	
	

begin
