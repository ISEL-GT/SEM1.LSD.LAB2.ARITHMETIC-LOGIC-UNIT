library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for handling the inner aritmetic logic excluding
-- the circuit flags. Whether the calculation is a subtraction or addition is also
-- handled here
entity inner_arithmetic is
	
	port (
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
				carry_in 	  : in std_logic;
		operation_bit : in std_logic;
		
		result 	 : out std_logic_vector(3 downto 0);
		carry_out : out std_logic;
		B3_output : out std_logic
	);
	
end inner_arithmetic;
		
		
architecture behavioral of inner_arithmetic is

	-- Import the 4 bit adder/subtractor
	component adder_subtractor_4bits
	
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			
			carry_in  : in std_logic;
			carry_out : out std_logic;
			
			result : out std_logic_vector(3 downto 0)
		);
		
	end component;
	
	-- Declares a temporary variable to store the adder output for later
	signal carry_adder_subtractor_4bits : std_logic;
	signal carry_adder_subtractor_4bits2 : std_logic;
	signal b_xor : std_logic_vector(3 downto 0);

begin

	b_xor(0) <= B(0) xor operation_bit;
	b_xor(1) <= B(1) xor operation_bit;
	b_xor(2) <= B(2) xor operation_bit;
	b_xor(3) <= B(3) xor operation_bit;
	
	
	-- Instantiates the adder/subtractor setting its result as the inner
	-- arithmetic result, and outputting the carry to XOR it with the operation bit
	instance_adder_subtractor_4bits : adder_subtractor_4bits
	
		port map (
			A => A,
			B => b_xor,
			
			carry_in  => carry_adder_subtractor_4bits2,
			carry_out => carry_adder_subtractor_4bits,
			
			result => result
		);
		

	carry_adder_subtractor_4bits2 <= carry_in xor operation_bit;
	carry_out <= carry_adder_subtractor_4bits xor operation_bit;
	B3_output <= b_xor(3);
		
end behavioral;		
