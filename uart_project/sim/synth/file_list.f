-elaborate -smartorder -top testbench -access +rwc
-notimingchecks 
-sv
-uvm
-disable_sem2009
+incdir+../
+define+NUMBER_OF_TRANSACTIONS=200
-timescale "1ns/1ps"
-log xrun_synth.log
../uart_test_pkg.sv 
../interfaces.sv
/home/tools/TSMC180/TSMCHOME/digital/Front_End/verilog/tcb018gbwp7t_270a/tcb018gbwp7t.v 
../synthesis/innovus/design.v
../uart_b2b.sv
../testbench.sv
