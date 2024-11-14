library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for acting like a MUX, and giving the output based
-- on the selected inputs
entity mux_2inputs is

	port (
 
	 A : in std_logic_vector(3 downto 0);
	 B : in std_logic_vector(3 downto 0); 

	 selector : in std_logic_vector(1 downto 0);

	 result : out std_logic_vector (3 downto 0) 
 );
 
end mux_2inputs;


-- Implements the logic of a MUX with two inputs and one selector
architecture structural of mux_4inputs
begin
	
	result <= (A and selector) or (B and (not selector))

end structural;