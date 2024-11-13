library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsibly for shifting an input to the right, effectively
-- dividing the input by two

entity logical_shift_right is

	port (
		input : in std_logic_vector(3 downto 0);

		result    : out std_logic_vector(3 downto 0);
		carry_out : out std_logic
	);
	
end logical_shift_right;


architecture structural of logical_shift_right is
begin 

	result(0) <= input(1);
	result(1) <= input(2);
	result(2) <= input(3);
	result(3) <= '0';
	
	carry_out <= input(0);
	
end behavioral;