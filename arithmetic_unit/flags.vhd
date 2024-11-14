library ieee;
use ieee.std_logic_1164.all;

-- This entity is simply responsible for checking whether there's overflow and 
-- a carry out (overflow for unsigned integers and carry out for signed ints)
-- and outputting it for later use
entity flags is

	port (
	
		-- A and B are the most significant bits for both numbers (see diagram)
		-- If these bits are 0, it's a positive integer. 
		-- If they're 1, it's a negative integer.
		A : in std_logic;
		B : in std_logic;
		R : in std_logic;  -- R is the most significant bit for the result
		
		carry_in  : in std_logic;
		carry_out : out std_logic; 
		
		overflow : out std_logic
	);
	
end flags;


architecture behavioral of flags is
begin

	carry_out <= carry_in;
	overflow <= ((A and B and not R) or (not A and not B and R));
	
end behavioral;
	
		
		
		
		
		
	