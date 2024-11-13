library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for performing a NAND operation between two inputs
entity nand_gate is 

	port (
		A : in std_logic;
		B : in std_logic;
		
		result     : out std_logic
	);
	
end nand_gate;

architecture structural of nand_gate is
begin

	result <= not (A and B)
	
end nand_gate;