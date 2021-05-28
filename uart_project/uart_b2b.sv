module uart_b2b(
			//interfaces
			uart_tx_if tx_if,
			uart_rx_if rx_if
		);
	

	uart uart_0(.clk16x(tx_if.clk16x),
				.clrn(tx_if.clrn),
				.d_in(tx_if.d_in),
				.wrn(tx_if.wrn),
				.t_empty(tx_if.t_empty),
				.sending(tx_if.sending),
				.txd(uart_0_txd),
				.rxd(uart_1_txd),
				.rdn(1'b1)
				);
				
	uart uart_1(.clk16x(rx_if.clk16x),
				.clrn(rx_if.clrn),
				.d_out(rx_if.d_out),
				.r_ready(rx_if.r_ready),
				.parity_error(rx_if.parity_error),
				.frame_error(rx_if.frame_error),
				.rdn(rx_if.rdn),
				.txd(uart_1_txd),
				.rxd(uart_0_txd),
				.d_in(8'b0),
				.wrn(1'b1)
				);
endmodule
