transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/max4bit {/home/ubuntu/Documents/Quartus_Projects/max4bit/max4bit.v}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/max4bit {/home/ubuntu/Documents/Quartus_Projects/max4bit/tb_max4bit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_max4bit

add wave *
view structure
view signals
run -all
