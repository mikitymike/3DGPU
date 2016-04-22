
import defines_package::*;

module rasterizer
(
	input wire clk;
	input wire n_rst;
		
	input Triangle3D i_triangle;
	input Color i_color;

	output Triangle3D o_triangle;
	output Color o_color;
	
	output wire done;
);

assign o_triangle = i_triangle;
assign o_color = i_color;


typedef enum { } StateType;



StateType state, nextstate;



endmodule
