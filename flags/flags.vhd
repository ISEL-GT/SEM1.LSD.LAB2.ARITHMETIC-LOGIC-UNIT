library ieee;
use ieee.std_logic_1164.all;

entity flags_main is

	port (
		overflow 		 		: in std_logic;
		carry_borrow_in_au 	: in std_logic;
		carry_borrow_in_lm	: in std_logic;  
		result_mux   	 		: in std_logic_vector(3 downto 0);
		operation_f   			: in std_logic;
		
		carry_borrow_out : out std_logic; 
		overflow_out 	  : out std_logic;
		below_equal 	  : out std_logic; 
		greater_equal	  : out std_logic; 
		parity			  : out std_logic; 
		zeros				  : out std_logic 
	);
	
end flags_main;

architecture behavioral of flags_main is

	-- Import the odd_parity_checker
	component odd_parity_checker
	
		port (
			I0 : in std_logic;
			I1 : in std_logic;
			I2 : in std_logic;
			I3 : in std_logic;
			
			P : out std_logic;
			Z : out std_logic
		);
	
	end component;
	
	signal zero_signal : std_logic;
		
begin
	
	-- Instantiation of the odd_parity_checker
	instance_odd_parity_checker : odd_parity_checker
	
		port map (
			I0 => result_mux(0),
			I1 => result_mux(1),			I2 => result_mux(2),
			I3 => result_mux(3),
			
			P => parity,
			Z => zero_signal
		);
		
		zeros 				<= zero_signal;
		overflow_out  		<= overflow;
		below_equal   		<= carry_borrow_in_au or zero_signal;
		greater_equal 		<= not (zero_signal or result_mux(3) or overflow) or (overflow and result_mux(3)) or zero_signal;
		carry_borrow_out 	<= (carry_borrow_in_lm and operation_f) or (carry_borrow_in_au and not operation_f);
		
end behavioral;