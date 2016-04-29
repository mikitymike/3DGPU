/*
	Rasterizer Control Unit.
*/


`include "defines_package.vh"


module rasterizer_controller
(
	input wire clk,
	input wire n_rst,
	input wire start,
	
	input Triangle3D itri3,
	output Triangle3D otri3,
	input Color icolor,
	output Color ocolor,
	
	input wire bresen_done,
	output Point2D p,
	output Point2D q,
	output wire bresen_start,
	
	output reg clear,
	output Point2D clear_point,
	
	output wire done,

	output wire tri_read,
	input wire tri_ready
);

typedef enum logic [3:0] { IDLE, CLEAR, GET_TRIANGLE,
			   SETUP1, DRAW1, SETUP2, DRAW2,
			   SETUP3, DRAW3, DONE } State;

State state, next_state;
shortint next_cleary, cleary;
shortint next_clearx, clearx;

Triangle3D tri3, next_tri3;
Color color, next_color;

Triangle2D triangle;

ortho_proj ORTHO_PROJ
	(
		.tri3(tri3),
		.tri2(triangle)
	);

assign otri3 = tri3;
assign ocolor = color;

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
		cleary <= next_cleary;
		clearx <= next_clearx;
		tri3 <= next_tri3;
		color <= next_color;
	end
end

always_comb begin
	next_state = state;
	p.x = 0;
	p.y = 0;
	q.x = 0;
	q.y = 0;
	next_clearx = 0;
	next_cleary = 0;
	next_tri3 = tri3;
	next_color = color;
	case(state)
		IDLE: begin
			if(tri_ready) begin
				next_state = GET_TRIANGLE;
			end
			else begin
				next_state = IDLE;
			end
		end
		GET_TRIANGLE: begin // Capture values on the line
			next_state = CLEAR;
			next_tri3 = itri3;
			next_color = icolor;
		end
		CLEAR: begin
			if(cleary == `HEIGHT) begin
				next_state = SETUP1;
			end
			else begin
				next_state = CLEAR;
				if(clearx == (`WIDTH-1)) begin
					next_cleary = cleary + 1;
					next_clearx = 0;
				end
				else begin
					next_clearx = clearx + 1;
					next_cleary = cleary;
				end
			end
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
assign clear = (state == CLEAR);
assign clear_point.x = clearx;
assign clear_point.y = cleary;
assign tri_read = (state == SETUP1);

endmodule
