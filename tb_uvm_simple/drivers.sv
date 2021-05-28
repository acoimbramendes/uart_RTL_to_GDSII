class uart_tx_driver; //extends uvm_driver#(uart_transaction);
     //`uvm_component_utils(uart_tx_driver)
 
     //Interface declaration
     virtual interface uart_tx_if vif;
	 virtual interface clock_if clk_vif; //clock da cpu/driver pode ser diferente da uart
 
 
     function new(string name, uvm_component parent=null);
       //   super.new(name, parent);
     endfunction: new
 
 /* Nao utilizarei a factory/phases de UVM para simplificar
     function void build_phase(uvm_phase phase);
          super.build_phase(phase);
		  void'(uvm_resource_db#(virtual uart_tx_if)::read_by_name(.scope("ifs"), .name("uart_tx_if"), .val(vif)));
     endfunction: build_phase
 
     task run_phase(uvm_phase phase);
		
     endtask: run_phase*/	 
	 
	 task drive_data(uart_transaction pkt, bit delay_en); // como se fosse run_phase
			//$display("drive_data: %b", pkt.data_byte);
			if (delay_en) begin
				//$display("delay: %d", pkt.delay);
				$display("Delay between transactions: %d", pkt.delay);
				repeat ((16*pkt.delay)+1) begin
					@(posedge clk_vif.clk);
				end
			end
			// signals for transmitter
			while (!vif.t_empty || vif.sending) begin //espera sinais t_empty e sending ou seja espera o trasmiter estar ready
				@(posedge clk_vif.clk); 
			end
			//$display("sending: %b", pkt.data_byte);
			vif.d_in <= pkt.data_byte; // data byte from cpu
			vif.wrn <= 1'b0; // cpu write, active low
			@(posedge clk_vif.clk); 
			//$display("after: %b", pkt.data_byte);
			vif.d_in <= 8'b0; // data byte from cpu
			vif.wrn <= 1'b1; // cpu write, active low
			
			
			
	 endtask
	 
	 task reset();
		vif.clrn <= 1'b0;
		vif.d_in <= 8'b0; // data byte from cpu
		vif.wrn <= 1'b1;
		repeat(2) @(posedge vif.clk16x);
		vif.clrn <= 1'b1;
	 endtask
	 
endclass: uart_tx_driver

class uart_rx_driver;// extends uvm_driver#(uart_transaction);
    //`uvm_component_utils(uart_rx_driver)
 
     //Interface declaration
     virtual interface uart_rx_if vif;
	 virtual interface clock_if clk_vif;
 
     function new(string name, uvm_component parent=null);
      //    super.new(name, parent);
     endfunction: new
 
 /* Nao utilizarei a factory/phases de UVM para simplificar
     function void build_phase(uvm_phase phase);
          super.build_phase(phase);
		  void'(uvm_resource_db#(virtual uart_rx_if)::read_by_name(.scope("ifs"), .name("uart_rx_if"), .val(vif)));
     endfunction: build_phase
 
     task run_phase(uvm_phase phase);
		forever begin //always checking for transaction
			@(posedge r_ready)    //data ready
			rdn <=1; 		      // cpu read
			@(posedge clk_vif.clk)
			rdn <=0;
		end
     endtask: run_phase */	 
	 
	 task start_response(); // como se fosse run_phase
	 	forever begin //always checking for transaction
			@(posedge vif.r_ready)    //data ready
			@(posedge clk_vif.clk)
			vif.rdn <=0; 		      // cpu read
			@(posedge clk_vif.clk)
			vif.rdn <=1;
		end
	 endtask
	 
	 task reset();
		vif.clrn <= 1'b0;
		vif.rdn <=1; 
		repeat(2) @(posedge vif.clk16x);
		vif.clrn <= 1'b1;
	 endtask
endclass: uart_rx_driver

