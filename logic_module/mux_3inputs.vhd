library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for acting like a MUX, and giving the output based
-- on the selected inputs
entity mux_3inputs is

	port (
		A : in std_logic;
		B : in std_logic;
		C : in std_logic; 

		S0 : in std_logic;
		S1 : in std_logic;

		result : out std_logic
	);
 
end mux_3inputs;


-- Implements the logic of a MUX with three inputs and two selectors
architecture structural of mux_3inputs is

	-- For readability, separate every MUX's path into intermediate checks
	-- based on the MUX result
	signal path_A : std_logic;
	signal path_B : std_logic;
	signal path_C : std_logic;

begin
	
	path_A <= A and (not S0) and (not S1);
	path_B <= B and S0 and (not S1);
	path_C <= C and (not S0) and S1;
	
	result <= path_A or path_B or path_C;

end structural;