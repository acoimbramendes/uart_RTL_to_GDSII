class uart_transaction;// extends uvm_sequence_item;
	 rand bit[7:0] data_byte;
	 rand bit[4:0] delay;

     function new(string name = "");
          //super.new(name);
     endfunction: new
	 
	 //macros uvm 
     //`uvm_object_utils_begin(uart_transaction)
     //`uvm_field_int(data_byte, UVM_ALL_ON)
	 //`uvm_field_int(delay, UVM_ALL_ON)
     //`uvm_object_utils_end
endclass: uart_transaction


