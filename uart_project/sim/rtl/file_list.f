-elaborate -smartorder -top testbench -access +rwc
-sv
-uvm
+incdir+../
+define+NUMBER_OF_TRANSACTIONS=200
-timescale "1ns/1ps"
../uart_test_pkg.sv 
../interfaces.sv
../uart.v 
../uart_b2b.sv
../testbench.sv

