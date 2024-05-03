transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {display_encoder.vo}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/cap9_es4 {/home/ubuntu/Documents/Quartus_Projects/cap9_es4/tb_display_encoder.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_display_encoder

add wave *
view structure
view signals
run -all
