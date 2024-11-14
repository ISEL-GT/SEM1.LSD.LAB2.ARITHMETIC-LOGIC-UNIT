library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for shifting a number to the right, effectively
-- dividing the number by two, while still putting the most significant bit on the leftmost digit
entity arithmetic_shift_right is

	port (
		input    : in std_logic_vector(3 downto 0);
		 
		carry_out: out std_logic;
		result 	: out std_logic_vector(3 downto 0)
	);
	
end arithmetic_shift_right;

architecture structural of arithmetic_shift_right is
begin 

	result(0) <= input(1);
	result(1) <= input(2);
	result(2) <= input(3);
	result(3) <= input(3);
	
	carry_out <= input(0);

end behavioral;