library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for the operation logic functions
entity logic_module is

	port (
		A 			: in std_logic_vector(3 downto 0);
		B 			: in std_logic_vector(3 downto 0);
		selector : in std_logic_vector(1 downto 0);
		
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
	
	-- Import of the aritmetic_shift_right circuit
	component aritmetic_shift_right
	
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
		 
			S1 : in std_logic_vector(1 downto 0);
			S2 : in std_logic_vector(1 downto 0);

			result : out std_logic_vector (3 downto 0) 
 	   );
	
	end component;
	
	-- Signal of logical_shift_right
	signal out_logical_shift_right in std_logic_vector(3 downto 0);
	signal carry_logical_shift_right in std_logic
	
	-- Signal of aritmetic_shift_right
	signal out_aritmetic_shift_right in std_logic_vector(3 downto 0);
	signal carry_aritmetic_shift_right in std_logic
	
	-- Signal of logical_shift_left
	signal out_logical_shift_left in std_logic_vector(3 downto 0);
	signal carry_logical_shift_left in std_logic
	
	-- Signal of nand_gate
	signal out_nand_gate in std_logic_vector(3 downto 0);
	
begin

	-- Instantiation of the logical_shift_right
	instance_logical_shift_right : logical_shift_right
	
		port map (
			input => A,
			
			result 	 => out_logical_shift_right,
			carry_out => carry_logical_shift_right
		);
				
	-- Instantiation of the aritmetic_shift_right
	instance_aritmetic_shift_right : aritmetic_shift_right
	
		port map (
			input => A,
			
			result 	 => out_aritmetic_shift_right,
			carry_out => carry_aritmetic_shift_right
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
			B => out_aritmetic_shift_right,
			C => out_logical_shift_left,
			D => out_nand_gate,
			
			S1 => FALTA,
			S2 => FALTA,
			
			result => result
		);
		
	carry_out <= carry_aritmetic_shift_right or carry_logical_shift_left or carry_logical_shift_right;	
		
end behavioral;
		