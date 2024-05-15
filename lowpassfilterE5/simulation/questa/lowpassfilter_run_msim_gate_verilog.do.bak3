transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {lowpassfilter.vo}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/lowpassfilterE5 {/home/ubuntu/Documents/Quartus_Projects/lowpassfilterE5/tb_lowpassfilter.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_lowpassfilter

add wave *
view structure
view signals
run -all
