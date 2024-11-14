library ieee; 
use ieee.std_logic_1164.all;

-- This entity is responsible for acting as a decoder, allowing us to select
-- different operations on the ALU
entity decoder is 

	port (
		operation_bit_2 : in std_logic;
		operation_bit_1 : in std_logic;
		operation_bit_0 : in std_logic;
		
		operation_a : out std_logic;
		operation_b : out std_logic;
		operation_c : out std_logic;
		operation_d : out std_logic;
		operation_e : out std_logic;
		operation_f : out std_logic
	);
	
end decoder;


architecture structural of decoder is
begin

	operation_a <= operation_bit_1;
	operation_b <= operation_bit_0;
	operation_c <= operation_bit_2;
	operation_d <= operation_bit_0;
	operation_e <= operation_bit_1;
	operation_f <= operation_bit_2;
	
end structural;
