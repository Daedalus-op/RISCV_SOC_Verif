transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/imm_extend.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/adder.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/alu.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/alu_decoder.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/controller.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/datapath.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/load_extend.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/main_decoder.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/mux2.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/mux4.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/reg_file.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/reset_ff.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/store_extend.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/data_mem.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/riscv_cpu.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/riscv_cpu_full.sv}
vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT {C:/Users/deves/Downloads/FINAL_PROJECT/instr_mem.sv}

vlog -sv -work work +incdir+C:/Users/deves/Downloads/FINAL_PROJECT/.testbench {C:/Users/deves/Downloads/FINAL_PROJECT/.testbench/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
