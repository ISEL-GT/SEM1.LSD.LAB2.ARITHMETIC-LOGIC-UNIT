library ieee;
use ieee.std_logic_1164.all;

-- This entity is responsible for acting like a MUX, and giving the output based
-- on the selected inputs
entity mux_4inputs is

	port (
 
	 A : in std_logic_vector (3 downto 0);
	 B : in std_logic_vector (3 downto 0);
	 C : in std_logic_vector (3 downto 0);
	 D : in std_logic_vector (3 downto 0);

	 result : out std_logic_vector (3 downto 0)
 );
 
end mux_4inputs;


ARCHITECTURE logicFunction OF MUX4R IS
BEGIN

Y(0) <= (not S and A(0)) or (S and B(0));			
Y(1) <= (not S and A(1)) or (S and B(1));
Y(2) <= (not S and A(2)) or (S and B(2));
Y(3) <= (not S and A(3)) or (S and B(3));


END LogicFunction;