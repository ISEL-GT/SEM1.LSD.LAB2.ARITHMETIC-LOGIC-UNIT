library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for acting like a MUX, and giving the output based
-- on the selected inputs
entity mux_4inputs is

	port (
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		C : in std_logic_vector(3 downto 0);
		D : in std_logic_vector(3 downto 0);	 

		S0 : in std_logic;
		S1 : in std_logic;

		result : out std_logic_vector (3 downto 0) 
	);
 
end mux_4inputs;


-- Implements the logic of a MUX with four inputs and two selectors
architecture structural of mux_4inputs is

	-- For readability, separate every MUX's path into intermediate checks
	-- based on the MUX result
	signal path_A : std_logic_vector(3 downto 0);	signal path_B : std_logic_vector(3 downto 0);
	signal path_C : std_logic_vector(3 downto 0);
	signal path_D : std_logic_vector(3 downto 0);
	
	-- Signals for the operation bit 4bit conversion
	signal S04bit : std_logic_vector(3 downto 0);
	signal S14bit : std_logic_vector(3 downto 0);

begin

	-- Assigns every path to its logical expression (the one that will conduct
	-- its result signal)
	S04bit <= S0 & S0 & S0 & S0;
	S14bit <= S1 & S1 & S1 & S1;
	
	path_A <= A and (not S04bit) and (not S14bit);
	path_B <= B and S04bit and (not S14bit);
	path_C <= C and (not S04bit) and S14bit;
	path_D <= D and S04bit and S14bit;
	
	result <= path_A or path_B or path_C or path_D;

end structural;