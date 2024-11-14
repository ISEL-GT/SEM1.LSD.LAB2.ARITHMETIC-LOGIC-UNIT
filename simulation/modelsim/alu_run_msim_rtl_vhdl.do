transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/flags/odd_parity_checker.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/logic_module/nand_gate.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/logic_module/mux_4inputs.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/logic_module/logical_shift_right.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/logic_module/logical_shift_left.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/logic_module/logic_module.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/logic_module/arithmetic_shift_right.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/arithmetic_unit/inner_arithmetic.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/arithmetic_unit/half_adder.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/arithmetic_unit/full_adder.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/arithmetic_unit/flags.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/arithmetic_unit/arithmeticunit.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/arithmetic_unit/adder_subtractor_4bits.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/mux_2inputs.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/decoder.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/alu.vhd}
vcom -93 -work work {C:/dev/Quartus/SEM1.LSD.AV2.ARITHMETIC-LOGIC-UNIT/flags/flags.vhd}

