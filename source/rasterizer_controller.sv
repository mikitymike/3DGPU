/*
	Rasterizer Control Unit.
*/


`include "defines_package.vh"
//import defines_package::*;


module rasterizer_controller
(
	input wire clk,
	input wire n_rst,
	input wire start,
	input Triangle2D triangle,
	input wire bresen_done,
	
	output Point2D p,
	output Point2D q,
	output wire bresen_start,
	output wire done
);

typedef enum logic [3:0] { IDLE, CLEAR, SETUP1, DRAW1, SETUP2, DRAW2, SETUP3, DRAW3, DONE } State;

State state, next_state;

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end
end

always_comb begin
	next_state = state;
	p.x = 0;
	p.y = 0;
	q.x = 0;
	q.y = 0;
	case(state)
		IDLE: begin
			if(start) begin
				next_state = CLEAR;
			end
			else begin
				next_state = IDLE;
			end
		end
		CLEAR: begin
			// TODO: make clear
			next_state = SETUP1;				
		end
		SETUP1: begin
			next_state = DRAW1;
			p = triangle.p;
			q = triangle.q;
		end
		DRAW1: begin
			p = triangle.p;
			q = triangle.q;
			if(bresen_done) begin
				next_state = SETUP2;
			end
			else begin
				next_state = DRAW1;
			end
		end
		SETUP2: begin
			next_state = DRAW2;
			p = triangle.q;
			q = triangle.r;
		end
		DRAW2: begin
			p = triangle.q;
			q = triangle.r;
			if(bresen_done) begin
				next_state = SETUP3;
			end
			else begin
				next_state = DRAW2;	
			end			
		end
		SETUP3: begin
			next_state = DRAW3;
			p = triangle.r;
			q = triangle.p;
		end
		DRAW3: begin
			p = triangle.r;
			q = triangle.p;
			if(bresen_done) begin
				next_state = DONE;
			end
			else begin
				next_state = DRAW3;
			end
		end
		DONE: begin
			next_state = IDLE;
		end
	endcase

end

assign bresen_start = (state == SETUP1 || state == SETUP2 || state == SETUP3);
assign done = (state == DONE);

endmodule
