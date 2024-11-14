library ieee; 
use ieee.std_logic_1164.all;

-- This entity is responsible for acting as a full adder, using two half-adders
-- in succession to account for first bit carries
entity decoder is 

	port (
		operation_bits : in std_logic_vector(2 downto 0);
		
		operation_a : out std_logic;
		operation_b : out std_logic;
		operation_c : out std_logic;
		operation_d : out std_logic;
		operation_e : out std_logic;
		operation_f : out std_logic
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

	-- Decode the values for operations, with 1 bit of t
	operation_a <= op1;
	operation_b <= op0;
	operation_c <= op2;
	operation_d <= op0;
	operation_e <= op1;
	operation_f <= op2;
	
	
end structural;
