interface clock_if;

	logic clk; // baud rate * 16 clock
	
endinterface

interface uart_rx_if;

	logic clk16x, clrn; // baud rate * 16 clock
	// signals for receiver
	logic rdn; // cpu read, active low
	logic [7:0] d_out; // data byte to cpu
	logic r_ready; // receiver is ready
	logic parity_error; // parity check error
	logic frame_error; // data frame error
	
	//	logic rxd; // uart rxd -> nao precisa
	
endinterface

interface uart_tx_if;
	logic clk16x, clrn; // baud rate * 16 clock
	
	// signals for transmitter
	logic [7:0] d_in; // data byte from cpu
	logic wrn; // cpu write, active low

	logic t_empty; // transmitter empty
	logic sending; // sending a txd bit

//	logic txd; // uart txd -> não precisa
	
endinterface