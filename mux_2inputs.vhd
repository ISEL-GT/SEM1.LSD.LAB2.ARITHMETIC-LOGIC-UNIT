library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for acting like a MUX, and giving the output based
-- on the selected inputs
entity mux_2inputs is

	port (
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0); 

		selector : in std_logic_vector;

		result : out std_logic_vector (3 downto 0) 
	);

end mux_2inputs;


-- Implements the logic of a MUX with two inputs and one selector
architecture structural of mux_2inputs
begin
	
	result(0) <= (A(0) and selector) or (B(0) and (not selector))
	result(1) <= (A(1) and selector) or (B(1) and (not selector))
	result(2) <= (A(2) and selector) or (B(2) and (not selector))
	result(3) <= (A(3) and selector) or (B(3) and (not selector))
	

end structural;