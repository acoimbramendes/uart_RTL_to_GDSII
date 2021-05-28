module uart_top (clk_230400, baud_rate_sel, clrn, rdn, 
				d_out, r_ready, rxd, parity_error, 
				frame_error, wrn, d_in, t_empty, txd, 
				cnt16x, no_bits_rcvd, r_buffer, r_clk1x, 
				sampling, r_data, no_bits_sent, t_buffer, 
				t_clk1x, sending, t_data);
    
	input clk_230400, clrn; // baud rate * 16 clock
	input [3:0] baud_rate_sel;
	
	// signals for receiver
	input rdn; // cpu read, active low
	input rxd; // uart rxd
	output [7:0] d_out; // data byte to cpu
	output r_ready; // receiver is ready
	output parity_error; // parity check error
	output frame_error; // data frame error

	// signals for transmitter
	input [7:0] d_in; // data byte from cpu
	input wrn; // cpu write, active low
	output txd; // uart txd
	output t_empty; // transmitter empty

	// for test (internal signals)
	output [10:0] r_buffer; // 11-bit frame
	output [7:0] r_data; // received data bits
	output [7:0] t_buffer; // register for sending
	output [7:0] t_data; // register d_in
	output [3:0] cnt16x; // x16 clock counter
	output [3:0] no_bits_rcvd; // # of bits received
	output [3:0] no_bits_sent; // number of bits sent
	output sampling; // sampling an rxd bit

	output r_clk1x; // clock for sampling rxd
	output sending; // sending a txd bit
	output t_clk1x; // clock for sending txd
	
	//Adicionado: Baud rate
	reg [3:0] baud_rate; // 1: 150, 2: 300, 3: 600, 4: 1200, 5: 2400, 6: 4800, 7: 9600, 8: 19200, 9: 38400, 10: 57600, 11: 115200, 12: 230400
	wire clk16x;
	
	//Select baud_rate
	always @* begin
		case(baud_rate_sel)
			0:  baud_rate = 9600;
			1:  baud_rate = 150;
			2:  baud_rate = 300;
			3:  baud_rate = 600;
			4:  baud_rate = 1200;
			5:  baud_rate = 2400;
			6:  baud_rate = 4800;
			7:  baud_rate = 9600;
			8:  baud_rate = 19200;
			9:  baud_rate = 38400;
			10: baud_rate = 57600;
			11: baud_rate = 115200;
			12: baud_rate = 230400;
			default: baud_rate = 9600;
		endcase
	end
	
	
	//clock divider
	clock_divider clk_divider(.baud_rate(baud_rate), .clk_in(clk_230400), .clk_out(clk16x),.rst(clrn));

	uart uart (clk16x, clrn, rdn, d_out, r_ready, rxd, parity_error, frame_error, wrn, d_in, t_empty, txd, cnt16x,no_bits_rcvd,r_buffer,r_clk1x, sampling, r_data,no_bits_sent,t_buffer,t_clk1x,sending,t_data);

endmodule

module clock_divider(baud_rate,clk_in,clk_out,rst);
	input [3:0] baud_rate;
	input 			 clk_in;
	input 			 rst;
	output 			 clk_out;
	reg [31:0]       clk_count;
	reg [15:0]       div;
	
	always @ * begin
		case(baud_rate)
			   300:  div = 16'd768;
			   600:  div = 16'd384;
			  1200:  div = 16'd192;
			  2400:  div = 16'd96;
			  4800:  div = 16'd48;
			  9600:  div = 16'd24;
			 19200:  div = 16'd12;
			 38400:  div = 16'd6;
			 57600:  div = 16'd4;
			115200:  div = 16'd2;
			230400:  div = 16'd1;
			default: div = 16'd9600;
		endcase
	end
	
	
	always @ (posedge clk_in) begin
		if(rst || (clk_count == div-1)) begin
			clk_count <= 32'h0;
		end
		else begin
			clk_count <= clk_count + 32'h1;
		end
	end
	
	assign clk_out = (div == 1) ? clk_in : (clk_count < (div/2)) ? 1'b0 : 1'b1;

endmodule

module uart (clk16x, clrn, rdn, d_out, r_ready, rxd, parity_error, frame_error, wrn, d_in, t_empty, txd, cnt16x,no_bits_rcvd,r_buffer,r_clk1x, sampling, r_data,no_bits_sent,t_buffer,t_clk1x,sending,t_data);

	input clk16x, clrn; // baud rate * 16 clock
	
	// signals for receiver
	input rdn; // cpu read, active low
	input rxd; // uart rxd
	output [7:0] d_out; // data byte to cpu
	output r_ready; // receiver is ready
	output parity_error; // parity check error
	output frame_error; // data frame error

	// signals for transmitter
	input [7:0] d_in; // data byte from cpu
	input wrn; // cpu write, active low
	output txd; // uart txd
	output t_empty; // transmitter empty

	// for test (internal signals)
	output [10:0] r_buffer; // 11-bit frame
	output [7:0] r_data; // received data bits
	output [7:0] t_buffer; // register for sending
	output [7:0] t_data; // register d_in
	output [3:0] cnt16x; // x16 clock counter
	output [3:0] no_bits_rcvd; // # of bits received
	output [3:0] no_bits_sent; // number of bits sent
	output sampling; // sampling an rxd bit

	output r_clk1x; // clock for sampling rxd
	output sending; // sending a txd bit
	output t_clk1x; // clock for sending txd
	reg [3:0] cnt16x; // x16 clock counter


	// a 4-bit counter
	always @ (posedge clk16x or negedge clrn) begin
		if (!clrn) begin // on reset
			cnt16x <= 4'd0; // clear counter
		end else begin
			cnt16x <= cnt16x + 4'd1; // counter++
		end
	end

	// receiver
	uart_rx recver (clk16x, clrn, rdn, d_out, r_ready, rxd, parity_error,
	frame_error, cnt16x, r_data, no_bits_rcvd, r_buffer,
	r_clk1x, sampling);
	// transmitter
	uart_tx sender (clk16x, clrn, wrn, d_in, t_empty, txd, cnt16x,
	no_bits_sent, t_buffer, t_clk1x, sending, t_data);
	
endmodule


module uart_rx (clk16x, clrn, rdn, d_out, r_ready, rxd, parity_error, frame_error, cnt16x, r_data, no_bits_rcvd, r_buffer,
 clk1x, sampling); // uart receiver
	input [3:0] cnt16x; // x16 clock counter
	input clk16x,clrn; // baud rate * 16 clock
	input rdn; // cpu read, active low
	input rxd; // uart rxd
	output [7:0] d_out; // data byte to cpu
	output reg r_ready; // receiver is ready
	output reg parity_error; // parity check error
	output reg frame_error; // data frame error
	output reg [10:0] r_buffer; // 11-bit frame
	output reg [7:0] r_data; // received data bits
	output reg [3:0] no_bits_rcvd; // # of bits received
	output reg clk1x; // clock for sampling rxd
	output reg sampling; // sampling an rxd bit
	reg [3:0] sampling_place; // center of an rxd bit
	reg rxd_new; // registered rxd
	reg rxd_old; // registered rxd_new
	// latch 2 rxd bits for detecting a falling edge
	always @ (posedge clk16x or negedge clrn) begin
		if (!clrn) begin
			rxd_old <= 1; // stop bits
			rxd_new <= 1; // stop bits
		end else begin
			rxd_old <= rxd_new; // shift registers
			rxd_new <= rxd; // shift registers
		end
	end
	
	// detect start bit and generate sampling signal
	always @ (posedge clk16x or negedge clrn) begin
		if (!clrn) begin
			sampling <= 0; // stop sampling
		end else begin
			if (rxd_old && !rxd_new) begin // had a negative edge
			if (!sampling) // if not sampling yet
				sampling_place <= cnt16x + 4'd8; // +8: center place
				sampling <= 1; // sampling please
			end else begin
				if (no_bits_rcvd == 4'd11) // got one frame
					sampling <= 0; // stop sampling
			end
		end
	end

	// sampling clock: clk1x
	always @ (posedge clk16x or negedge clrn) begin
		if (!clrn) begin
			clk1x <= 0;
		end else begin
			if (sampling) begin // if sampling
				if (cnt16x == sampling_place) // at the center place
					clk1x <= 1; // generate a pos edge
				if (cnt16x == sampling_place + 4'd1)
					clk1x <= 0; // one x16 cycle pulse
			end else 
				clk1x <= 0; // stop clk1x
		end
	end
	
	// number of bits received
	always @ (posedge clk1x or negedge sampling) begin
		if (!sampling) begin
			no_bits_rcvd <= 4'd0; // clear counter
		end else begin
			no_bits_rcvd <= no_bits_rcvd + 4'd1; // counter++
			r_buffer[no_bits_rcvd] <= rxd; // save rxd to r_buffer
		end
	end
	
	// one frame, rdn clears r_ready
	always @ (posedge clk16x or negedge clrn or negedge rdn) begin
		if (!clrn) begin // on a reset
			r_ready <= 0; // clear ready
			parity_error <= 0; // clear parity error
			frame_error <= 0; // clear frame error
			r_buffer <= 0; // clear r_buffer
			r_data <= 0; // clear r_data
		end else begin
			if (!rdn) begin // on a read
				r_ready <= 0; // clear ready
				parity_error <= 0; // clear parity error
				frame_error <= 0; // clear frame error
			end else begin
				if (no_bits_rcvd == 4'd11) begin // got a frame
					r_data <= r_buffer[8:1]; // extract data byte
					r_ready <= 1; // receiver ready
					if ( ^r_buffer[9:1]) begin // parity check (even)
						parity_error <= 1; // parity error
					end
					if (!r_buffer[10]) begin // if no stop bit
						frame_error <= 1; // frame error
					end
				end
			end
		end
	end
	assign d_out = !rdn ? r_data : 8'hz; // data byte output
endmodule


module uart_tx (clk16x,clrn,wrn,d_in,t_empty,txd,cnt16x,no_bits_sent,t_buffer,clk1x,sending,t_data); // uart transmitter

	input [7:0] d_in; // data byte from cpu
	input [3:0] cnt16x; // x16 clock counter
	input clk16x,clrn; // baud rate * 16 clock
	input wrn; // cpu write, active low
	output reg txd; // uart txd
	output reg t_empty; // transmitter empty
	output reg [3:0] no_bits_sent; // number of bits sent
	output reg [7:0] t_data; // reg d_in
	output reg [7:0] t_buffer; // reg for sending
	output clk1x; // clock for sending txd
	output reg sending; // sending a txd bit
	reg load_t_buffer; // load t_buffer

	
	// load data to t_data, then to t_buffer, and generate sending signal
	always @ (posedge clk16x or negedge clrn or negedge wrn) begin
		if (!clrn) begin // on a reset
			sending <= 0; // clear sending
			t_empty <= 1; // transmitter is ready
			load_t_buffer <= 0; // clear load_t_buffer
			t_data <= 0; // clear t_data
			t_buffer <= 0; // clear t_buffer
		end else begin
			if (!wrn) begin // cpu write
				t_data <= d_in; // load t_data
				t_empty <= 0; // transmitter is busy
				load_t_buffer <= 1; // ready to load t_buffer
			end else begin
				if (!sending) begin // not sending
					if (load_t_buffer) begin // d2t ready
						sending <= 1; // sending please
						t_buffer <= t_data; // load t_buffer
						t_empty <= 1; //transmitter is ready
						load_t_buffer <= 0; // clear load_t_buffer
					end
				end else begin // sending
					if (no_bits_sent == 4'd11) // sent a frame
						sending <= 0; // clear sending
				end	
			end
		end
	end
	
	// send a frame: [start, d0, d1, ..., d7, parity, stop]
	assign clk1x = cnt16x[3]; // clock for sending txd
	always @ (posedge clk1x or negedge sending) begin
		if (!sending) begin // if not sending
			no_bits_sent <= 4'd0; // clear counter
			txd <= 1; // stop bits
		end else begin // sending
			case (no_bits_sent) // sending serially
				0: txd <= 0; // sending start bit
				1: txd <= t_buffer[0]; // sending data bit 0
				2: txd <= t_buffer[1]; // sending data bit 1
				3: txd <= t_buffer[2]; // sending data bit 2
				4: txd <= t_buffer[3]; // sending data bit 3
				5: txd <= t_buffer[4]; // sending data bit 4
				6: txd <= t_buffer[5]; // sending data bit 5
				7: txd <= t_buffer[6]; // sending data bit 6
				8: txd <= t_buffer[7]; // sending data bit 7
				9: txd <= ^t_buffer; // sending parity (even)
				default: txd <= 1; // sending stop bit(s)
			endcase
		no_bits_sent <= no_bits_sent + 4'd1; // counter++
		end
	end
endmodule
