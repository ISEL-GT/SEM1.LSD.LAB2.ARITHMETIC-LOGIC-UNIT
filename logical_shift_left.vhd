library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for shifting a number to the left, effectively
-- multiplying the number by two, while adding a '0' to the less significant bit
entity logical_shift_left is

	port (
		input    : in std_logic_vector(3 downto 0);
		 
		carry_out: out std_logic;
		result 	: out std_logic_vector(3 downto 0)
	);
	
end logical_shift_left;

architecture behavioral of logical_shift_left is
begin 

	result(0) <= '0';
	result(1) <= input(0);
	result(2) <= input(1);
	result(3) <= input(2);
	
	carry_out <= input(3);

end behavioral;