/*
	Triangle Rasterizer Structure.

	wireframe_sram can't be in this structure since
	colorfill needs to know about it.
*/

`include "defines_package.vh"
//import defines_package::*;


module rasterizer
(
	input wire clk,
	input wire n_rst,
	input wire start,
	input Triangle3D i_triangle,
	input Color i_color,
	output Triangle3D o_triangle,
	output Color o_color,
	output wire write_en,
	output wire wf_data,
	output wire [(`WIREFRAME_ADDR_SIZE-1):0] addr,
	output wire done
);


Triangle2D transform;
Point2D p;
Point2D q;
Point2D plot_point;
wire plot;
wire bresen_done;
wire bresen_start;

assign o_triangle = i_triangle;
assign o_color = i_color;


ortho_proj ORTHO_PROJ
	(
		.tri3(i_triangle),
		.tri2(transform)
	);


rasterizer_controller CONTROLLER
	(
		.clk(clk),
		.n_rst(n_rst),
		.start(start),
		.triangle(transform),
		.bresen_done(bresen_done),
		.p(p),
		.q(q),
		.bresen_start(bresen_start),
		.done(done)
	);


bresen BRESEN
	(
		.clk(clk),
		.n_rst(n_rst),
		.start(bresen_start),
		.p(p),
		.q(q),
		.point(plot_point),
		.plot(plot),
		.done(bresen_done)
	);


plot PLOT
	(
		.plot(plot),
		.point(plot_point),
		.write_en(write_en),
		.wf_data(wf_data),
		.addr(addr)
	);


endmodule
