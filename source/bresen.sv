/*
	Bresenham's line algorithm.
*/


`include "defines_package.vh"
//import defines_package::*;

module bresen
(
	input wire clk,
	input wire n_rst,
	input wire start,
	input Point2D p,
	input Point2D q,
	output Point2D point,
	output wire plot,
	output wire done
);


typedef enum logic [3:0] { IDLE, SETUP, PLOT, STEP, CHECK, DONE } State;

State state, next_state;
shortint pdx, pdy, dx, dy, err, e2, x, y;
wire down, right;

assign pdx = q.x - p.x;
assign pdy = q.y - p.y;
assign right = ~(pdx[15]);
assign dx = !right ? -pdx : pdx;
assign down = ~(pdy[15]);
assign dy = down ? -pdy : pdy;

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
			else begin
				next_state = IDLE;
			end
		end
		SETUP: begin
			next_state = PLOT;
			err = dx + dy;
			x = p.x;
			y = p.y;
		end
		PLOT: begin
			next_state = CHECK;
		end
		CHECK: begin
			if(x == q.x && y == q.y) begin
				next_state = DONE;
			end
			else begin
				next_state = STEP;
			end
		end
		STEP: begin
			next_state = PLOT;
			e2 = err << 1;
			if(e2 > dy) begin
				err = err + dy;
				if(right) begin
					x = x + 1;
				end
				else begin
					x = x - 1;
				end
			end
			if(e2 < dx) begin
				err = err + dx;
				if(down) begin
					y = y + 1;
				end
				else begin
					y = y - 1;
				end
			end
		end
		DONE: begin
			next_state = IDLE;
		end
	endcase
end

assign done = (state == DONE);
assign point.x = x;
assign point.y = y;
assign plot = (state == PLOT);

endmodule
