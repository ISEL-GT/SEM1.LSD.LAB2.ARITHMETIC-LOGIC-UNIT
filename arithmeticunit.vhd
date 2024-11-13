library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for taking in two 4-bit integers and adding
-- them together, allowing for a carry in, and a carry out and an operation 
-- variable to decide whether to subtract or add
entity arithmeticunit is

	port (
		A    : in std_logic_vector(3 downto 0);
		B 	  : in std_logic_vector(3 downto 0);
		
		carry_in  : in std_logic;
		carry_out : out std_logic;
		
		operation_bit : in std_logic;
		result  		  : out std_logic_vector(3 downto 0);
		overflow      : out std_logic
	);
	
end arithmeticunit;


architecture behavioral of arithmeticunit is

	-- Import the flagging circuit
	component flags
	
		port (
			A : in std_logic;
			B : in std_logic;
			R : in std_logic;
			
			carry_in  : in std_logic;
			carry_out : out std_logic; 
			
			overflow : out std_logic
		);
		
	end component;
	
	
	-- Import the inner arithmetic circuit
	component inner_arithmetic
	
		port (
			A : in std_logic_vector;
			B : in std_logic_vector;
			
			carry_in 	  : in std_logic;
			operation_bit : in std_logic;
			
			result 	 : out std_logic_vector(3 downto 0);
			carry_out : out std_logic;
			B3_output : out std_logic
		);
		
	end component;
	
	
	-- Declares an intermediate "out_inner_arithmetic" signal so that we can
	-- read its bits afterwards, the carry and a xor'd b3 signal with the 
	-- operation bit, use inside the flags
	signal out_inner_arithmetic : std_logic_vector(3 downto 0);
	signal carry_inner_arithmetic : std_logic;
	signal B3_xor : std_logic;

begin

	-- Instantiate the inner arithmetic, whose parameters are mostly the same
	-- as the ones we have in the AU, due to it just being a layer of abstraction
	instance_inner_arithmetic : inner_arithmetic
	
		port map (
			A => A,
			B => B,
			
			carry_in => carry_in,
			operation_bit => operation_bit,
			
			result => out_inner_arithmetic,
			carry_out => carry_inner_arithmetic,
			B3_output => B3_xor
		);
		
	
	-- Instantiate the flags unit
	instance_flags : flags
		
		port map (
			A => A(3),
			B => B3_xor,
			R => out_inner_arithmetic(3),
			
			carry_in  => carry_inner_arithmetic, 
			carry_out => carry_out,
			
			overflow => overflow
		);
		

	result <= out_inner_arithmetic;

end behavioral;
		
	
