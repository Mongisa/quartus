transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ubuntu/Documents/Quartus_Projects/cap7_es1_7408 {/home/ubuntu/Documents/Quartus_Projects/cap7_es1_7408/c7408.v}

