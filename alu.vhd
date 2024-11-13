library ieee;
use ieee.std_logic_1164.all;


entity alu is

	port (
		X    				  : in std_logic_vector(3 downto 0);
		Y	  				  : in std_logic_vector(3 downto 0);
		operation_bits	  : in std_logic_vector(2 downto 0);
		carry_borrow_in  : in std_logic; 
		
		result 			  : out std_logic_vector(3 downto 0);
		carry_borrow_out : out std_logic;
		overflow         : out std_logic;
		zero 				  : out std_logic;
		parity 		  	  : out std_logic;
		greater_equal	  : out std_logic;
		below_equal	  	  : out std_logic
		
	);
	
end alu;
