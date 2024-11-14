-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/14/2024 15:55:18"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	operation_bit_0 : IN std_logic;
	operation_bit_1 : IN std_logic;
	operation_bit_2 : IN std_logic;
	carry_borrow_in : IN std_logic;
	result : BUFFER std_logic_vector(3 DOWNTO 0);
	carry_borrow_out : BUFFER std_logic;
	overflow : BUFFER std_logic;
	zero : BUFFER std_logic;
	parity : BUFFER std_logic;
	greater_equal : BUFFER std_logic;
	below_equal : BUFFER std_logic
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_borrow_out	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parity	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- greater_equal	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- below_equal	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation_bit_1	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_borrow_in	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation_bit_2	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation_bit_0	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operation_bit_0 : std_logic;
SIGNAL ww_operation_bit_1 : std_logic;
SIGNAL ww_operation_bit_2 : std_logic;
SIGNAL ww_carry_borrow_in : std_logic;
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carry_borrow_out : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_parity : std_logic;
SIGNAL ww_greater_equal : std_logic;
SIGNAL ww_below_equal : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \carry_borrow_out~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \parity~output_o\ : std_logic;
SIGNAL \greater_equal~output_o\ : std_logic;
SIGNAL \below_equal~output_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \operation_bit_2~input_o\ : std_logic;
SIGNAL \operation_bit_0~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \operation_bit_1~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \instance_mux|result[0]~0_combout\ : std_logic;
SIGNAL \instance_mux|result[0]~1_combout\ : std_logic;
SIGNAL \carry_borrow_in~input_o\ : std_logic;
SIGNAL \instance_yor|result~0_combout\ : std_logic;
SIGNAL \instance_mux|result[0]~2_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \instance_mux|result[1]~3_combout\ : std_logic;
SIGNAL \instance_mux|result[1]~4_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \instance_mux|result[1]~5_combout\ : std_logic;
SIGNAL \instance_yor|result~1_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \instance_yor|result~2_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \instance_mux|result[2]~6_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \instance_mux|result[2]~7_combout\ : std_logic;
SIGNAL \instance_mux|result[2]~8_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ : std_logic;
SIGNAL \instance_mux|result[3]~9_combout\ : std_logic;
SIGNAL \instance_mux|result[3]~10_combout\ : std_logic;
SIGNAL \instance_mux|result[3]~11_combout\ : std_logic;
SIGNAL \instance_yor|result~3_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\ : std_logic;
SIGNAL \instance_flags|carry_borrow_out~0_combout\ : std_logic;
SIGNAL \instance_flags|carry_borrow_out~1_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_flags|overflow~0_combout\ : std_logic;
SIGNAL \instance_flags|instance_odd_parity_checker|Z~0_combout\ : std_logic;
SIGNAL \instance_flags|instance_odd_parity_checker|P~0_combout\ : std_logic;
SIGNAL \instance_flags|greater_equal~0_combout\ : std_logic;
SIGNAL \instance_flags|greater_equal~1_combout\ : std_logic;
SIGNAL \instance_flags|below_equal~combout\ : std_logic;
SIGNAL \instance_flags|instance_odd_parity_checker|ALT_INV_Z~0_combout\ : std_logic;
SIGNAL \instance_arithmetic_unit|instance_flags|ALT_INV_overflow~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_operation_bit_0 <= operation_bit_0;
ww_operation_bit_1 <= operation_bit_1;
ww_operation_bit_2 <= operation_bit_2;
ww_carry_borrow_in <= carry_borrow_in;
result <= ww_result;
carry_borrow_out <= ww_carry_borrow_out;
overflow <= ww_overflow;
zero <= ww_zero;
parity <= ww_parity;
greater_equal <= ww_greater_equal;
below_equal <= ww_below_equal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\instance_flags|instance_odd_parity_checker|ALT_INV_Z~0_combout\ <= NOT \instance_flags|instance_odd_parity_checker|Z~0_combout\;
\instance_arithmetic_unit|instance_flags|ALT_INV_overflow~0_combout\ <= NOT \instance_arithmetic_unit|instance_flags|overflow~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y29_N2
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_mux|result[0]~2_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_mux|result[1]~5_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_mux|result[2]~8_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_mux|result[3]~11_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\carry_borrow_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_flags|carry_borrow_out~1_combout\,
	devoe => ww_devoe,
	o => \carry_borrow_out~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_arithmetic_unit|instance_flags|ALT_INV_overflow~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\zero~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_flags|instance_odd_parity_checker|ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\parity~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_flags|instance_odd_parity_checker|P~0_combout\,
	devoe => ww_devoe,
	o => \parity~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\greater_equal~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_flags|greater_equal~1_combout\,
	devoe => ww_devoe,
	o => \greater_equal~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\below_equal~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_flags|below_equal~combout\,
	devoe => ww_devoe,
	o => \below_equal~output_o\);

-- Location: IOIBUF_X0_Y30_N22
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\operation_bit_2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation_bit_2,
	o => \operation_bit_2~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\operation_bit_0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation_bit_0,
	o => \operation_bit_0~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\Y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X0_Y29_N8
\operation_bit_1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation_bit_1,
	o => \operation_bit_1~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X1_Y30_N18
\instance_mux|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[0]~0_combout\ = (\operation_bit_2~input_o\ & (\operation_bit_1~input_o\ & ((!\X[0]~input_o\) # (!\Y[0]~input_o\)))) # (!\operation_bit_2~input_o\ & (((\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \operation_bit_1~input_o\,
	datac => \X[0]~input_o\,
	datad => \operation_bit_2~input_o\,
	combout => \instance_mux|result[0]~0_combout\);

-- Location: LCCOMB_X1_Y30_N12
\instance_mux|result[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[0]~1_combout\ = (\operation_bit_2~input_o\ & ((\operation_bit_0~input_o\ & ((\instance_mux|result[0]~0_combout\))) # (!\operation_bit_0~input_o\ & (\X[1]~input_o\)))) # (!\operation_bit_2~input_o\ & 
-- (((\instance_mux|result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \operation_bit_2~input_o\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_mux|result[0]~0_combout\,
	combout => \instance_mux|result[0]~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\carry_borrow_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_borrow_in,
	o => \carry_borrow_in~input_o\);

-- Location: LCCOMB_X1_Y30_N24
\instance_yor|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_yor|result~0_combout\ = (\Y[0]~input_o\ & \operation_bit_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datac => \operation_bit_1~input_o\,
	combout => \instance_yor|result~0_combout\);

-- Location: LCCOMB_X1_Y30_N30
\instance_mux|result[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[0]~2_combout\ = \instance_mux|result[0]~1_combout\ $ (((!\operation_bit_2~input_o\ & (\carry_borrow_in~input_o\ $ (\instance_yor|result~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_mux|result[0]~1_combout\,
	datab => \operation_bit_2~input_o\,
	datac => \carry_borrow_in~input_o\,
	datad => \instance_yor|result~0_combout\,
	combout => \instance_mux|result[0]~2_combout\);

-- Location: IOIBUF_X0_Y35_N22
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X0_Y30_N15
\Y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X1_Y30_N0
\instance_mux|result[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[1]~3_combout\ = (\operation_bit_1~input_o\ & (((!\X[1]~input_o\) # (!\Y[1]~input_o\)))) # (!\operation_bit_1~input_o\ & (\X[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \operation_bit_1~input_o\,
	datad => \X[1]~input_o\,
	combout => \instance_mux|result[1]~3_combout\);

-- Location: LCCOMB_X1_Y30_N10
\instance_mux|result[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[1]~4_combout\ = (\operation_bit_2~input_o\ & ((\operation_bit_0~input_o\ & ((\instance_mux|result[1]~3_combout\))) # (!\operation_bit_0~input_o\ & (\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \operation_bit_2~input_o\,
	datac => \X[2]~input_o\,
	datad => \instance_mux|result[1]~3_combout\,
	combout => \instance_mux|result[1]~4_combout\);

-- Location: LCCOMB_X1_Y30_N28
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ = (\carry_borrow_in~input_o\ & ((\instance_yor|result~0_combout\ & ((!\operation_bit_0~input_o\))) # 
-- (!\instance_yor|result~0_combout\ & (\X[0]~input_o\)))) # (!\carry_borrow_in~input_o\ & ((\instance_yor|result~0_combout\ & (\X[0]~input_o\)) # (!\instance_yor|result~0_combout\ & ((\operation_bit_0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \carry_borrow_in~input_o\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_yor|result~0_combout\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\);

-- Location: LCCOMB_X1_Y30_N14
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\ = \operation_bit_0~input_o\ $ (\X[1]~input_o\ $ (((\Y[1]~input_o\ & \operation_bit_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \Y[1]~input_o\,
	datac => \operation_bit_1~input_o\,
	datad => \X[1]~input_o\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X1_Y30_N16
\instance_mux|result[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[1]~5_combout\ = (\instance_mux|result[1]~4_combout\) # ((!\operation_bit_2~input_o\ & (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ $ 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_mux|result[1]~4_combout\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\,
	datac => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\,
	datad => \operation_bit_2~input_o\,
	combout => \instance_mux|result[1]~5_combout\);

-- Location: LCCOMB_X1_Y30_N6
\instance_yor|result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_yor|result~1_combout\ = (\operation_bit_1~input_o\ & \Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation_bit_1~input_o\,
	datad => \Y[1]~input_o\,
	combout => \instance_yor|result~1_combout\);

-- Location: LCCOMB_X1_Y30_N8
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ = (\X[1]~input_o\ & 
-- ((\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\) # (\operation_bit_0~input_o\ $ (\instance_yor|result~1_combout\)))) # (!\X[1]~input_o\ & 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ & (\operation_bit_0~input_o\ $ (\instance_yor|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_yor|result~1_combout\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\);

-- Location: IOIBUF_X0_Y30_N1
\Y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X1_Y30_N2
\instance_yor|result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_yor|result~2_combout\ = (\operation_bit_1~input_o\ & \Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation_bit_1~input_o\,
	datad => \Y[2]~input_o\,
	combout => \instance_yor|result~2_combout\);

-- Location: LCCOMB_X1_Y30_N20
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\ = \operation_bit_0~input_o\ $ 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ $ (\X[2]~input_o\ $ (\instance_yor|result~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\,
	datac => \X[2]~input_o\,
	datad => \instance_yor|result~2_combout\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\);

-- Location: LCCOMB_X1_Y30_N26
\instance_mux|result[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[2]~6_combout\ = (\operation_bit_1~input_o\ & (((!\X[2]~input_o\)) # (!\Y[2]~input_o\))) # (!\operation_bit_1~input_o\ & (((\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \operation_bit_1~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[1]~input_o\,
	combout => \instance_mux|result[2]~6_combout\);

-- Location: IOIBUF_X0_Y30_N8
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X1_Y30_N4
\instance_mux|result[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[2]~7_combout\ = (\operation_bit_2~input_o\ & ((\operation_bit_0~input_o\ & (\instance_mux|result[2]~6_combout\)) # (!\operation_bit_0~input_o\ & ((\X[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \operation_bit_2~input_o\,
	datac => \instance_mux|result[2]~6_combout\,
	datad => \X[3]~input_o\,
	combout => \instance_mux|result[2]~7_combout\);

-- Location: LCCOMB_X1_Y34_N0
\instance_mux|result[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[2]~8_combout\ = (\instance_mux|result[2]~7_combout\) # ((!\operation_bit_2~input_o\ & \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operation_bit_2~input_o\,
	datac => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\,
	datad => \instance_mux|result[2]~7_combout\,
	combout => \instance_mux|result[2]~8_combout\);

-- Location: IOIBUF_X0_Y35_N15
\Y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y34_N30
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ = \operation_bit_0~input_o\ $ (\X[3]~input_o\ $ (((\Y[3]~input_o\ & \operation_bit_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \Y[3]~input_o\,
	datac => \operation_bit_1~input_o\,
	datad => \X[3]~input_o\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X1_Y30_N22
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ = 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ & ((\X[2]~input_o\) # (\operation_bit_0~input_o\ $ (\instance_yor|result~2_combout\)))) # 
-- (!\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ & (\X[2]~input_o\ & (\operation_bit_0~input_o\ $ (\instance_yor|result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\,
	datac => \X[2]~input_o\,
	datad => \instance_yor|result~2_combout\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\);

-- Location: LCCOMB_X1_Y34_N18
\instance_mux|result[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[3]~9_combout\ = (\operation_bit_1~input_o\ & (((!\Y[3]~input_o\)) # (!\X[3]~input_o\))) # (!\operation_bit_1~input_o\ & (((\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \operation_bit_1~input_o\,
	datad => \X[2]~input_o\,
	combout => \instance_mux|result[3]~9_combout\);

-- Location: LCCOMB_X1_Y34_N4
\instance_mux|result[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[3]~10_combout\ = (\operation_bit_0~input_o\ & (\instance_mux|result[3]~9_combout\)) # (!\operation_bit_0~input_o\ & (((\operation_bit_1~input_o\ & \X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \instance_mux|result[3]~9_combout\,
	datac => \operation_bit_1~input_o\,
	datad => \X[3]~input_o\,
	combout => \instance_mux|result[3]~10_combout\);

-- Location: LCCOMB_X1_Y34_N16
\instance_mux|result[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_mux|result[3]~11_combout\ = (\operation_bit_2~input_o\ & (((\instance_mux|result[3]~10_combout\)))) # (!\operation_bit_2~input_o\ & 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ $ 
-- ((\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\,
	datac => \instance_mux|result[3]~10_combout\,
	datad => \operation_bit_2~input_o\,
	combout => \instance_mux|result[3]~11_combout\);

-- Location: LCCOMB_X1_Y34_N28
\instance_yor|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_yor|result~3_combout\ = (\operation_bit_1~input_o\ & \Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \operation_bit_1~input_o\,
	datad => \Y[3]~input_o\,
	combout => \instance_yor|result~3_combout\);

-- Location: LCCOMB_X1_Y34_N6
\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\ = (\X[3]~input_o\ & 
-- ((\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\) # (\operation_bit_0~input_o\ $ (\instance_yor|result~3_combout\)))) # (!\X[3]~input_o\ & 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ & (\operation_bit_0~input_o\ $ (\instance_yor|result~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_yor|result~3_combout\,
	combout => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\);

-- Location: LCCOMB_X1_Y34_N2
\instance_flags|carry_borrow_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|carry_borrow_out~0_combout\ = (\operation_bit_1~input_o\ & (!\operation_bit_0~input_o\ & ((\X[3]~input_o\)))) # (!\operation_bit_1~input_o\ & (((\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operation_bit_0~input_o\,
	datab => \X[0]~input_o\,
	datac => \operation_bit_1~input_o\,
	datad => \X[3]~input_o\,
	combout => \instance_flags|carry_borrow_out~0_combout\);

-- Location: LCCOMB_X1_Y34_N8
\instance_flags|carry_borrow_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|carry_borrow_out~1_combout\ = (\operation_bit_2~input_o\ & (((\instance_flags|carry_borrow_out~0_combout\)))) # (!\operation_bit_2~input_o\ & 
-- (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\ $ ((\operation_bit_0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\,
	datab => \operation_bit_2~input_o\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_flags|carry_borrow_out~0_combout\,
	combout => \instance_flags|carry_borrow_out~1_combout\);

-- Location: LCCOMB_X1_Y34_N10
\instance_arithmetic_unit|instance_flags|overflow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_arithmetic_unit|instance_flags|overflow~0_combout\ = (\X[3]~input_o\ & ((\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\) # (\operation_bit_0~input_o\ $ 
-- (!\instance_yor|result~3_combout\)))) # (!\X[3]~input_o\ & ((\operation_bit_0~input_o\ $ (\instance_yor|result~3_combout\)) # 
-- (!\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_yor|result~3_combout\,
	combout => \instance_arithmetic_unit|instance_flags|overflow~0_combout\);

-- Location: LCCOMB_X1_Y34_N20
\instance_flags|instance_odd_parity_checker|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|instance_odd_parity_checker|Z~0_combout\ = (\instance_mux|result[1]~5_combout\) # ((\instance_mux|result[3]~11_combout\) # ((\instance_mux|result[0]~2_combout\) # (\instance_mux|result[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_mux|result[1]~5_combout\,
	datab => \instance_mux|result[3]~11_combout\,
	datac => \instance_mux|result[0]~2_combout\,
	datad => \instance_mux|result[2]~8_combout\,
	combout => \instance_flags|instance_odd_parity_checker|Z~0_combout\);

-- Location: LCCOMB_X1_Y34_N14
\instance_flags|instance_odd_parity_checker|P~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|instance_odd_parity_checker|P~0_combout\ = \instance_mux|result[1]~5_combout\ $ (\instance_mux|result[3]~11_combout\ $ (\instance_mux|result[0]~2_combout\ $ (\instance_mux|result[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_mux|result[1]~5_combout\,
	datab => \instance_mux|result[3]~11_combout\,
	datac => \instance_mux|result[0]~2_combout\,
	datad => \instance_mux|result[2]~8_combout\,
	combout => \instance_flags|instance_odd_parity_checker|P~0_combout\);

-- Location: LCCOMB_X1_Y34_N24
\instance_flags|greater_equal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|greater_equal~0_combout\ = (!\instance_mux|result[2]~7_combout\ & (!\instance_mux|result[1]~5_combout\ & ((\operation_bit_2~input_o\) # 
-- (!\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_mux|result[2]~7_combout\,
	datab => \operation_bit_2~input_o\,
	datac => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~combout\,
	datad => \instance_mux|result[1]~5_combout\,
	combout => \instance_flags|greater_equal~0_combout\);

-- Location: LCCOMB_X1_Y34_N26
\instance_flags|greater_equal~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|greater_equal~1_combout\ = (\instance_arithmetic_unit|instance_flags|overflow~0_combout\ & (((!\instance_mux|result[3]~11_combout\)))) # (!\instance_arithmetic_unit|instance_flags|overflow~0_combout\ & 
-- ((\instance_mux|result[3]~11_combout\) # ((\instance_flags|greater_equal~0_combout\ & !\instance_mux|result[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_arithmetic_unit|instance_flags|overflow~0_combout\,
	datab => \instance_flags|greater_equal~0_combout\,
	datac => \instance_mux|result[0]~2_combout\,
	datad => \instance_mux|result[3]~11_combout\,
	combout => \instance_flags|greater_equal~1_combout\);

-- Location: LCCOMB_X1_Y34_N12
\instance_flags|below_equal\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|below_equal~combout\ = (\instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\ $ (\operation_bit_0~input_o\)) # 
-- (!\instance_flags|instance_odd_parity_checker|Z~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_arithmetic_unit|instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|carry_out~0_combout\,
	datac => \operation_bit_0~input_o\,
	datad => \instance_flags|instance_odd_parity_checker|Z~0_combout\,
	combout => \instance_flags|below_equal~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_carry_borrow_out <= \carry_borrow_out~output_o\;

ww_overflow <= \overflow~output_o\;

ww_zero <= \zero~output_o\;

ww_parity <= \parity~output_o\;

ww_greater_equal <= \greater_equal~output_o\;

ww_below_equal <= \below_equal~output_o\;
END structure;


