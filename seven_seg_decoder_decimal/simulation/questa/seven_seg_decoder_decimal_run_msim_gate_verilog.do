transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {seven_seg_decoder_decimal.vo}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/seven_seg_decoder_decimal {/home/ubuntu/Documents/Quartus_Projects/seven_seg_decoder_decimal/tb_seven_seg_decoder_decimal.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_seven_seg_decoder_decimal

add wave *
view structure
view signals
run -all
