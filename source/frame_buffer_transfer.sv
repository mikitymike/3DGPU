 /*
	Frame buffer transfer to AHB.
 */


`include "defines_package.vh"

module frame_buffer_transfer
(
	input wire clk,
	input wire n_rst,
	output reg [31:0] data,
	output reg done,
	input wire ready_for_data,
	output reg [(`FRAME_BUFFER_ADDR_SIZE-1):0] addr,
	input Color color
);

typedef enum logic [2:0] { IDLE, WRITE, CHECK, DONE } State;

State state, next_state;

reg [(`FRAME_BUFFER_ADDR_SIZE-1):0] next_addr;

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		state <= IDLE;
		fb_addr <= 0;
		next_data = 0;
	end
	else begin
		state <= next_state;
		addr <= next_addr;
		data <= next_data;
	end
end

assign data = {8'h00, color};

always_comb begin
	next_state = state;
	next_addr = addr;
	case(state)
		IDLE: begin
			if(ready_for_data) begin
				next_state = WRITE;
				next_addr = 0;
			end
			else begin
				next_state = IDLE;
			end
		end
		WRITE: begin
			if(addr == ((`WIDTH * `HEGIHT)-1)) begin
				next_state = DONE;
			end
			else if(ready_for_data) begin
				next_state = WRITE;
				next_addr = addr + 1;
			end
		end
		DONE: begin
			next_state = IDLE;
		end
	endcase
end

assign done = (state == DONE);

endmodule
