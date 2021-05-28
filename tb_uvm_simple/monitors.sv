
class uart_tx_monitor; // extends uvm_monitor;
     //`uvm_component_utils(uart_transaction)
    
     bit[7:0] tx_in[`NUMBER_OF_TRANSACTIONS+1];
	 
	 int i, error_count = 0;

 
     virtual uart_tx_if vif;
 
     function new(string name, uvm_component parent=null);
         // super.new(name, parent);
     endfunction: new
 
 /*Nao utilizarei a factory/phases de UVM para simplificar
	 uvm_analysis_port#(simpleadder_transaction) mon_ap_tx;
     function void build_phase(uvm_phase phase);
          super.build_phase(phase);
 
          void'(uvm_resource_db#(virtual uart_tx_if)::read_by_name (.scope("ifs"), .name("uart_tx_if"), .val(vif)));
          mon_ap_tx = new(.name("mon_ap_tx"), .parent(this));
     endfunction: build_phase
 
     task run_phase(uvm_phase phase);
          //Our code here
     endtask: run_phase */

	task monitoring_tx(); // como se fosse run_phase
		i = 0;
		forever begin
			wait(!vif.wrn);
			
			$display("\n%t: Sending transaction(%d) : \n\t\t data: %b ",$time,i, vif.d_in);
			
			tx_in[i] = vif.d_in;
			
			if(!vif.t_empty) begin
				$display("\t\t t_empty: ERROR ");
				error_count++;
			end else
				$display("\t\t t_empty: OK \n");
			
			
			while(!vif.wrn) begin
				if(tx_in[i] != vif.d_in ) begin
					$display("\t\t ERROR: d_in changed before tx get the data new: %b old: %b", vif.d_in, tx_in[i]);
					error_count++;
				end
				@(posedge vif.clk16x);
			end
			i+=1;
		end
	endtask
	
endclass: uart_tx_monitor

class uart_rx_monitor;// extends uvm_monitor;
     //`uvm_component_utils(uart_transaction)
 
     bit[7:0] rx_out[`NUMBER_OF_TRANSACTIONS+1];
	 
	 int i, error_count = 0;
     
	 virtual uart_rx_if vif;
 
     function new(string name, uvm_component parent=null);
         // super.new(name, parent);
     endfunction: new
 
 /*Nao utilizarei a factory/phases de UVM para simplificar
	 uvm_analysis_port#(simpleadder_transaction) mon_ap_rx;
     function void build_phase(uvm_phase phase);
          super.build_phase(phase);
 
          void'(uvm_resource_db#(virtual uart_rx_if)::read_by_name (.scope("ifs"), .name("uart_rx_if"), .val(vif)));
          mon_ap_rx = new(.name("mon_ap_rx"), .parent(this));
     endfunction: build_phase
 
     task run_phase(uvm_phase phase);
          //Our code here
     endtask: run_phase */

	task monitoring_rx(); // como se fosse run_phase
		i = 0;
		
		forever begin
			@(posedge vif.rdn);
				$display("\n%t: Received transaction(%d) : \n\t\t data: %b ",$time,i,vif.d_out);
				rx_out[i] = vif.d_out;
			if(vif.parity_error) begin
				$display(" \t\t Parity: ERROR", vif.d_out);			
				error_count++;
			end else begin
				$display(" \t\t Parity: OK");			
			end
			
			if(vif.frame_error) begin
				$display(" \t\t Frame: ERROR");			
				error_count++;
			end else begin
				$display(" \t\t Frame: OK");			
			end
			wait(!vif.r_ready);
			i += 1;
		end
	endtask
	
endclass: uart_rx_monitor