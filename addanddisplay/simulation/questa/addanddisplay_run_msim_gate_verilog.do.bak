transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {addanddisplay.vo}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/addanddisplay {/home/ubuntu/Documents/Quartus_Projects/addanddisplay/tb_addanddisplay.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_addanddisplay

add wave *
view structure
view signals
run -all
