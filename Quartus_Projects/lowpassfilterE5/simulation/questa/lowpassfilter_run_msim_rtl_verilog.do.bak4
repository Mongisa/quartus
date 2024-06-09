transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/lowpassfilterE5 {/home/ubuntu/Documents/Quartus_Projects/lowpassfilterE5/lowpassfilter.v}

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/lowpassfilterE5 {/home/ubuntu/Documents/Quartus_Projects/lowpassfilterE5/tb_lowpassfilter.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_lowpassfilter

add wave *
view structure
view signals
run -all
