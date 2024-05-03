transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {max4bit.vo}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/max4bit {/home/ubuntu/Documents/Quartus_Projects/max4bit/tb_max4bit.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_max4bit

add wave *
view structure
view signals
run -all
