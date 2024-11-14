library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for the operation logic functions
entity logic_module is

	port (
		A 			: in std_logic_vector(3 downto 0);
		B 			: in std_logic_vector(3 downto 0);
		
		S0 : in std_logic;
		S1 : in std_logic;
		
		carry_out   : out std_logic;
		result 		: out std_logic_vector(3 downto 0)
	);
	
end logic_module;


architecture behavioral of logic_module is

	-- Import of the logical_shift_right circuit
	component logical_shift_right
	
		port (
			input : in std_logic_vector(3 downto 0);

			result    : out std_logic_vector(3 downto 0);
			carry_out : out std_logic
		);
	
	end component;
	
	-- Import of the arithmetic_shift_right circuit
	component arithmetic_shift_right
	
		port (
			input : in std_logic_vector(3 downto 0);

			result    : out std_logic_vector(3 downto 0);
			carry_out : out std_logic
		);
	
	end component;
	
	-- Import of the logical_shift_left circuit
	component logical_shift_left
	
		port (
			input : in std_logic_vector(3 downto 0);

			result    : out std_logic_vector(3 downto 0);
			carry_out : out std_logic
		);
	
	end component;
	
	-- Import of the nand_gate circuit
	component nand_gate
	
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			
			result : out std_logic_vector(3 downto 0)
		);
	
	end component;
	
	-- Import of the mux_4inputs circuit 
	component mux_4inputs
	
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			C : in std_logic_vector(3 downto 0);
			D : in std_logic_vector(3 downto 0);	 
		 
			S0 : in std_logic;
			S1 : in std_logic;

			result : out std_logic_vector(3 downto 0)
		);
		
	end component;
	
	-- Import of the mux_3inputs circuit 
	component mux_3inputs
	
		port (
			A : in std_logic;
			B : in std_logic;
			C : in std_logic;
		 
			S0 : in std_logic;
			S1 : in std_logic;

			result : out std_logic
		);
		
	end component;
	
	
	-- Signal of logical_shift_right
	signal out_logical_shift_right : std_logic_vector(3 downto 0);
	signal carry_logical_shift_right : std_logic;
	
	-- Signal of arithmetic_shift_right
	signal out_arithmetic_shift_right : std_logic_vector(3 downto 0);
	signal carry_arithmetic_shift_right : std_logic;
	
	-- Signal of logical_shift_left
	signal out_logical_shift_left : std_logic_vector(3 downto 0);
	signal carry_logical_shift_left : std_logic;
	
	-- Signal of nand_gate
	signal out_nand_gate : std_logic_vector(3 downto 0);
	
	-- Signals for the mux of 4 inputs for the carries
	signal out_mux_3inputs_carries : std_logic;
	
begin

	-- Instantiation of the logical_shift_right
	instance_logical_shift_right : logical_shift_right
	
		port map (
			input => A,
			
			result 	 => out_logical_shift_right,
			carry_out => carry_logical_shift_right
		);
				
	-- Instantiation of the arithmetic_shift_right
	instance_arithmetic_shift_right : arithmetic_shift_right
	
		port map (
			input => A,
			
			result 	 => out_arithmetic_shift_right,
			carry_out => carry_arithmetic_shift_right
		);
		
		
	-- Instantiation of the logical_shift_left
	instance_logical_shift_left : logical_shift_left
	
		port map (
			input => A,
			
			result 	 => out_logical_shift_left,
			carry_out => carry_logical_shift_left
		);
		
		
	-- Instantiation of the nand_gate
	instance_logical_nand_gate : nand_gate
	
		port map (
			A => A,
			B => B,
			
			result => out_nand_gate
			
		);
		
		
	-- Instantiation of the mux_4inputs
	instance_mux_4inputs : mux_4inputs
	
		port map (
			A => out_logical_shift_right,
			B => out_arithmetic_shift_right,
			C => out_logical_shift_left,
			D => out_nand_gate,
			
			S0 => S0,
			S1 => S1,
			
			result => result
		);
	
	-- Instantiation of the mux_3inputs for the carries, representing
	-- the carry bits in 3bit forms
	instance_mux_3inputs : mux_3inputs
	
		port map (
			A => carry_logical_shift_right,
			B => carry_arithmetic_shift_right,
			C => carry_logical_shift_left,
			
			S0 => S0,
			S1 => S1,
			
			result => out_mux_3inputs_carries
		);
		
	-- Extract the first bit from the result
	carry_out <= out_mux_3inputs_carries;
				
end behavioral;
		