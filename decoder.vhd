library ieee; 
use ieee.std_logic_1164.all;

-- This entity is responsible for acting as a full adder, using two half-adders
-- in succession to account for first bit carries
entity decoder is 

	port (
		operation_bits : in std_logic_vector(2 downto 0);
		
		increment 			  	  : out std_logic;
		decrement   		  	  : out std_logic;
		addition 			  	  : out std_logic;
		subtraction 		  	  : out std_logic;
		logical_shift_right    : out std_logic;
		arithmetic_shift_right : out std_logic;
		logical_shift_left  	  : out std_logic;
		nand_operation         : out std_logic	
	);
	
end decoder;


architecture structural of decoder is

	-- A few signals to simplify expression reading and lower the amount of
	-- bit checks that the compiler has to do
	signal op2 : std_logic;
	signal op1 : std_logic;
	signal op0 : std_logic;

begin
	
	op2 <= operation_bits(2);
	op1 <= operation_bits(1);
	op0 <= operation_bits(0);

	-- Decode the values for the incrementional operations
	increment <= not(op2 or op1 or op0);
	decrement <= not(op2 or op1) and op0;
	
	-- Decode the values for arithmetic operations
	addition <= not(op2 or op0) and op1;
	subtraction <= (not op2) and op1 and op0;
	
	-- Decode the values for shifting
	logical_shift_right <= not(op1 or op0) and op2;
	arithmetic_shift_right <= (not op1) and op2 and op0;
	logical_shift_left <= (not op0) and op2 and op1;
	
	-- Decode the values for the nand operation
	nand_operation <= op2 and op1 and op0;
	
end structural;
