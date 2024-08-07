transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/sqrt {/home/ubuntu/Documents/Quartus_Projects/sqrt/sqrt.v}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/sqrt {/home/ubuntu/Documents/Quartus_Projects/sqrt/tb_sqrt.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_sqrt

add wave *
view structure
view signals
run -all
