/*
	Bresenham's line algorithm.



	??? Check if points need to be changed based on the octant.
*/


import defines_package::*;


module bresen
(
	input wire clk,
	input wire n_rst,
	input wire start,
	input Point2D p,
	input Point2D q,
	output wire write_en,
	output wire wf_data,
	output wire [(WIREFRAME_ADDR_SIZE-1):0] addr,
	output wire done
);

typedef enum logic [3:0] { IDLE, SETUP, WRITE, STEP, CHECK, DONE } State;

State state, next_state;

shortint dx, dy, D, x, y;

assign dx = q.x - p.x;
assign dy = q.y - p.y;

always_ff @ (posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end
end

always_comb begin
	next_state = state;
	case(state)
		IDLE: begin
			if(start) begin
				next_state = SETUP;
			end
		end
		SETUP: begin
			next_state = WRITE;
			D = dy - dx;
			x = p.x;
			y = p.y;
		end
		WRITE: begin
			next_state = STEP;
			write_en = 1;
			wf_data = 1;
			addr = [y*WIDTH + x]; // probably doesn't work
		end
		STEP: begin
			next_state = CHECK;
			if(D >= 0) begin
				y = y + 1;
				D = D - dx;
			end
			D = D + dy;
			x = x + 1;
		end
		CHECK: begin
			if(x >= q.x) begin
				next_state = DONE;
			end
			else begin
				next_state = WRITE;
			end
		end
		DONE: begin
			next_state = IDLE;
		end
end

assign done = (state == DONE);

endmodule
