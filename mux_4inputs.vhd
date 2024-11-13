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
	 
	 S1 : in std_logic_vector(1 downto 0);
	 S2: in std_logic_vector(1 downto 0);

	 result : out std_logic_vector (3 downto 0) 
 );
 
end mux_4inputs;


-- Implements the logic of a MUX with four inputs and two selectors
architecture structural of mux_4inputs

	-- For readability, separate every MUX's path into intermediate checks
	-- based on the MUX result
	signal path_A : std_logic_vector(3 downto 0);	signal path_B : std_logic_vector(3 downto 0);
	signal path_C : std_logic_vector(3 downto 0);
	signal path_D : std_logic_vector(3 downto 0);

begin

	-- Assigns every path to its logical expression (the one that will conduct
	-- its result signal)
	path_A <= A and (not S1) and (not s2);
	path_B <= B and (not S1) and S2;
	path_C <= C and S1 and (not S2);
	path_D <= D and (not S1) and (not S2);
	
	result <= path_A or path_B or path_C or path_D;

end structural;