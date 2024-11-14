library ieee;
use ieee.std_logic_1164.all;

-- This is the main entity of the project, responsible for starting every 
-- operation, allowing 
entity alu is

	port (
		X    				  : in std_logic_vector(3 downto 0);
		Y	  				  : in std_logic_vector(3 downto 0);
		operation_bit_1  : in std_logic;
		operation_bit_2  : in std_logic;
		operation_bit_3  : in std_logic;
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


architecture behavioral of alu is

	-- Import the arithmetic unit 
	component arithmetic_unit
	
		port (
			A    : in std_logic_vector(3 downto 0);
			B 	  : in std_logic_vector(3 downto 0);
		
			carry_in  : in std_logic;
			carry_out : out std_logic;
			
			operation_bit : in std_logic;
			result  		  : out std_logic_vector(3 downto 0);
			overflow      : out std_logic
		);
		
	end component;
	
	-- Import the logic module
	component logic_module
		
		port (
			A 			: in std_logic_vector(3 downto 0);
			B 			: in std_logic_vector(3 downto 0);
			
			S0 : in std_logic_vector;
			S1 : in std_logic_vector;
			
			carry_out   : out std_logic;
			result 		: out std_logic_vector(3 downto 0)
		);
	
	end component;
	
	-- Import the decoder
	component decoder
	
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
		
	end component;
	
	-- Import the two inputs MUX
	component mux_2inputs
	
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0); 

			selector : in std_logic_vector;

			result : out std_logic_vector (3 downto 0) 
		);
		
	end component;
	
	-- Import the two inputs MUX
	component flags
	
		port (
			overflow 		    : in std_logic;
			carry_borrow_in_au : in std_logic;
			carry_borrow_in_lm : in std_logic;
			result_mux 			 : in std_logic;
			operation_f 		 : in std_logic;
			
			carry_borrow_out 	 : out std_logic;
			overflow_out 		 : out std_logic;
			below_equal			 : out std_logic;
			greater_equal 		 : out std_logic;
			parity				 : out std_logic;
			zeros					 : out std_logic;
		);
		
	end component;
	
	-- Defines all the operation signals to be used
	signal operation_a : out std_logic;
	signal operation_b : out std_logic;
	signal operation_c : out std_logic;
	signal operation_d : out std_logic;
	signal operation_e : out std_logic;
	signal operation_f : out std_logic;
	
	-- Defines all the output signals
	signal out_mux_yor 					: out std_logic_vector(3 downto 0);
	signal carry_out_arithmetic_unit : out std_logic;
	signal out_arithmetic_unit 		: out std_logic_vector(3 downto 0);
	signal overflow_arithmetic_unit  : out std_logic;
	signal carry_out_logic_module    : out std_logic;
	signal out_logic_module				: out std_logic_vector(3 downto 0);
	signal out_mux_main					: out std_logic_vector(3 downto 0);
	
	
begin

	-- Instantiate the main decoder, to translate the operation bits to the A-F signals
	instance_decoder : decoder	
		
		port map (
			operation_bit_2 => operation_bit_2,
			operation_bit_1 => operation_bit_1,
			operation_bit_0 => operation_bit_0,
			
			operation_a => operation_a,
			operation_b => operation_b,
			operation_c => operation_c,
			operation_d => operation_d,
			operation_e => operation_e,
			operation_f => operation_f
		);
			
			
	-- Instantiates the 2 inputs MUX that will serve as a YOR
	instance_yor : mux_2inputs 
	
		port map (
			A => Y,
			B => '0000',
			selector => operation_a;
			
			result => out_mux_yor
		);
		

	-- Instantiates the arithmetic unit to perform math operations
	instance_arithmetic_unit : arithmetic_unit
	
		port map (
			A => X,
			B => out_mux_yor,
		
			carry_in => carry_borrow_in,
			carry_out => carry_out_arithmetic_unit,
			
			operation_bit => operation_b,
			result  		  => out_arithmetic_unit,
			overflow      => overflow_arithmetic_unit
		);
			
			
	-- Instantiates the logic module for any relational or logical operations
	instance_logic_module : logic_module
	
		port map (
			A => X,
			B => Y,
			
			S0 => operation_d,
			S1 => operation_e,
			
			carry_out => carry_out_logic_module,
			result 	 => out_logic_module
		);
		
	
	-- Instantiates the MUX used to connect the logic module and arithmetic unit
	instance_mux : mux_2inputs 
	
		port map (
			A => out_arithmetic_unit,
			B => out_logic_module,
			selector => operation_c,
			
			result => out_mux_main
		);
		
	
	-- Instantiates the flags module
	instance_flags : flags 
		
		port map (
			overflow 		    => overflow_arithmetic_unit,
			carry_borrow_in_au => carry_out_arithmetic_unit,
			carry_borrow_in_lm => carry_out_logic_module,
			result_mux 			 => out_mux_main,
			operation_f 		 => operation_f,
			
			carry_borrow_out 	 => carry_borrow_out,
			overflow_out 		 => overflow,
			below_equal			 => below_equal,
			greater_equal 		 => greater_equal,
			parity				 => parity,
			zeros					 => zero
		);
		
	result <= out_mux_main;
			
end behavioral;
	




	