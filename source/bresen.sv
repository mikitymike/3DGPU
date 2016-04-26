/*
	Bresenham's line algorithm.
*/


`include "defines_package.vh"


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
shortint pdx, pdy, dx, dy, e2;
shortint err, x, y, next_err, next_x, next_y;
wire down, right;

assign pdx = q.x - p.x;
assign pdy = q.y - p.y;

assign right = ~(pdx[15]);
assign down = ~(pdy[15]);

assign dx = !right ? -pdx : pdx;
assign dy =  down  ? -pdy : pdy;

assign e2 = err << 1;

always_ff @ (posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		state <= IDLE;
		err <= 0;
		x <= 0;
		y <= 0;
	end
	else begin
		state <= next_state;
		err <= next_err;
		x <= next_x;
		y <= next_y;
	end
end

always_comb begin
	next_state = state;
	next_err = err;
	next_x = x;
	next_y = y;
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
			next_err = dx + dy;
			next_x = p.x;
			next_y = p.y;
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
			if(e2 > dy && e2 < dx) begin
				next_err = err + dy + dx;
			end
			else if(e2 > dy) begin
				next_err = err + dy;
			end
			else if(e2 < dx) begin
				next_err = err + dx;
			end

			if(e2 > dy) begin
				if(right) begin
					next_x = x + 1;
				end
				else begin
					next_x = x - 1;
				end
			end

			if(e2 < dx) begin
				if(down) begin
					next_y = y + 1;
				end
				else begin
					next_y = y - 1;
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
