library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU_tb is
end ALU_tb;
  
architecture behavioral of ALU_tb is

	component ALU
		port (	X,Y : in std_logic_vector(3 downto 0);
					OP : in std_logic_vector(2 downto 0);
					CBi : in std_logic;
					R : out std_logic_vector(3 downto 0);
					CBo : out std_logic;
					OV : out std_logic;
					Z : out std_logic;
					P : out std_logic;
					GE : out std_logic;
					BE : out std_logic
			 );
	end component;

	signal X_tb, Y_tb : std_logic_vector(3 downto 0);
	signal OP_tb : std_logic_vector(2 downto 0);
	signal CBi_tb : std_logic;
	
	signal R_uut_tb : std_logic_vector(3 downto 0);
	signal CBo_uut_tb : std_logic;
	signal OV_uut_tb : std_logic;
	signal Z_uut_tb : std_logic;
	signal P_uut_tb : std_logic;
	signal GE_uut_tb : std_logic;
	signal BE_uut_tb : std_logic;
	
begin

	UUT : ALU port map (
						X => X_tb,
						Y => Y_tb,
						OP => OP_tb,
						CBi => CBi_tb,
						R => R_uut_tb,
						CBo => CBo_uut_tb,
						OV => OV_uut_tb,
						Z => Z_uut_tb,
						P => P_uut_tb,
						GE => GE_uut_tb,
						BE => BE_uut_tb
					);

	stimulus_generator: process
	begin
		X_tb <= "0000";
		Y_tb <= "1111";
		CBi_tb <= '0';
		OP_tb <= "000";
		
		wait for 10 ns;

		X_tb <= "0101";
		Y_tb <= "0010";
		CBi_tb <= '0';
		OP_tb <= "000";
		
		wait for 10 ns;

		X_tb <= "0000";
		Y_tb <= "1111";
		CBi_tb <= '1';
		OP_tb <= "001";
		
		wait for 10 ns;

		X_tb <= "0010";
		Y_tb <= "0101";
		CBi_tb <= '1';
		OP_tb <= "010";
		
		wait for 10 ns;

		X_tb <= "0011";
		Y_tb <= "0101";
		CBi_tb <= '0';
		OP_tb <= "011";
		
		wait for 10 ns;

		X_tb <= "1101";
		Y_tb <= "1001";
		CBi_tb <= '0';
		OP_tb <= "100";
		
		wait for 10 ns;

		X_tb <= "1001";
		Y_tb <= "0110";
		CBi_tb <= '0';
		OP_tb <= "110";
		
		wait for 10 ns;
		
		wait;

	end process;


End behavioral;