library ieee;
use ieee.std_logic_1164.all;

entity flags is

	port (
		overflow 		 		: in std_logic;
		carry_borrow_in_au 	: in std_logic;
		carry_borrow_in_lm	: in std_logic;  
		result_mux   	 		: in std_logic;
		operation_f   			: in std_logic;
		
		carry_borrow_out : out std_logic; 
		overflow_out 	  : out std_logic;
		below_equal 	  : out std_logic; 
		greater_equal	  : out std_logic; 
		parity			  : out std_logic; 
		zeros				  : out std_logic 
	);
	
end flags;

architecture behavioral of flags is

	-- Import of the odd_parity_checker
	component odd_parity_checker
	
		port(
			I0 : in std_logic;
			I1 : in std_logic;
			I2 : in std_logic;
			I3 : in std_logic;
			
			P : out std_logic;
			Z : out std_logic
		);
	
	end component;
		
begin
	
		-- Instantiation of the odd_parity_checker
	instance_odd_parity_checker : odd_parity_checker
	
		port map (
			I0 => result_mux(0),
			I1 => result_mux(1),			I2 => result_mux(2),
			I3 => result_mux(3),
			
			
			P => parity,
			Z => zeros
		);
		
		overflow_out  		<= overflow;
		below_equal   		<= carry_borrow_in_au or Z;
		greater_equal 		<= not (z or result_mux(3) or overflow) or (overflow and result_mux(3)) or Z;
		carry_borrow_out 	<= (carry_borrow_in_lm and operation_f) or (carry_borrow_in_au and not operation_f);
		
end behavioral;