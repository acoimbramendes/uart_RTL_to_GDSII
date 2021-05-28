`timescale 1ns/1ps

module testbench ();

//instancia dos drivers e monitors
uart_test_pkg::uart_tx_driver uart_tx_driver;
uart_test_pkg::uart_rx_driver uart_rx_driver;
uart_test_pkg::uart_tx_monitor uart_tx_monitor;
uart_test_pkg::uart_rx_monitor uart_rx_monitor;

//instancia do pkt de dados que sera randomizado
uart_test_pkg::uart_transaction uart_pkt;

//interface
uart_tx_if tx_if();
uart_rx_if rx_if();
clock_if   clk_if();

//DESIGN back-to-back
uart_b2b uart_b2b(	.tx_if_clk16x(tx_if.clk16x),
					.tx_if_clrn(tx_if.clrn),
					.tx_if_d_in(tx_if.d_in),
					.tx_if_wrn(tx_if.wrn),			
					.tx_if_t_empty(tx_if.t_empty),
					.tx_if_sending(tx_if.sending),
					.rx_if_clk16x(tx_if.clk16x),
					.rx_if_clrn(rx_if.clrn),
					.rx_if_rdn(rx_if.rdn),
					.rx_if_d_out(rx_if.d_out),
					.rx_if_r_ready(rx_if.r_ready),
					.rx_if_parity_error(rx_if.parity_error),
					.rx_if_frame_error(rx_if.frame_error));

//clk
reg clk_16x;
assign tx_if.clk16x = clk_16x;
assign rx_if.clk16x = clk_16x;
assign clk_if.clk   = clk_16x; //clock da cpu, coloquei igual 16xBaudrate mas pode ser diferente

task construct_env();
	uart_tx_driver = new("uart_tx_driver");
	uart_rx_driver = new("uart_rx_driver");
	uart_tx_monitor = new("uart_tx_monitor");
	uart_rx_monitor = new("uart_rx_monitor");
endtask

task connect_env_to_dut(); //connectando as interfaces com as virtual interfaces
	uart_tx_driver.vif      = tx_if;
	uart_rx_driver.vif      = rx_if;
	uart_tx_driver.clk_vif  = clk_if;
	uart_rx_driver.clk_vif  = clk_if;
	uart_tx_monitor.vif     = tx_if;
	uart_rx_monitor.vif     = rx_if;
endtask

task reset_dut();
	fork //rodar em paralelo e blocking
		begin
			uart_tx_driver.reset();
		end 
		begin
			uart_rx_driver.reset();
		end 
	join
endtask

task monitor_start();
	fork //rodar em paralelo e nao blocking
		begin
			uart_tx_monitor.monitoring_tx();
		end 
		begin
			uart_rx_monitor.monitoring_rx();
		end 
	join_none
endtask 

task run();
	repeat(`NUMBER_OF_TRANSACTIONS) begin
		uart_pkt = new();
		assert(uart_pkt.randomize());
		uart_tx_driver.drive_data(uart_pkt,1);
	end
endtask

task results();
	//espera alguns clocks para terminar as transações
	int error_xtion;
	error_xtion = 0;
	repeat(1000) @(posedge clk_if.clk);
	$display("\n\nRESULTADOS FINAIS: ");
	
	// comparando enviado com recebido
	for(int y = 0; y < uart_tx_monitor.i; y++) begin
		if (uart_tx_monitor.tx_in[y] == uart_rx_monitor.rx_out[y]) begin
			$display("\t Transação %d: OK - (%b)", y, uart_tx_monitor.tx_in[y]);
		end else begin
			$display("\t Transação %d: ERROR - (%b)", y, uart_tx_monitor.tx_in[y]);
			error_xtion++;
		end
	end
	$display("\t ERRO TOTAL em transações: %d ", error_xtion);
	
	//Checando se teve erro de parity ou frame_error
	$display("\t ERRO TOTAL de paridade:   %d ", uart_rx_monitor.error_count);
	
	//Checando se teve erro no envio
	$display("\t ERRO TOTAL no envio:      %d ", uart_tx_monitor.error_count);

endtask

initial begin
	$timeformat(-6, 2, " us", 20);

	construct_env();

	connect_env_to_dut();

	reset_dut();
	
	//start monitors
	monitor_start();
	
	//start response driver for RX in parallel
	fork
		uart_rx_driver.start_response();
	join_none

	//start tx driver stimulus
	run();
	
	//compare results
	results();
	
	$finish;
end

//clock
initial begin
	clk_16x = 1'b0;
	forever begin
		#271.267 // = 3.6864 MHz -> clk pro baudrate 230400 (mais rapido dos comuns)
		clk_16x = ~clk_16x;
	end
end

endmodule