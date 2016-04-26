/*
	Triangle Rasterizer Structure.
*/


`include "defines_package.vh"


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
Point2D clear_point;
wire plot;
wire bresen_done;
wire bresen_start;
wire clear;

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
		.clear_point(clear_point),
		.clear(clear),
		.done(done)
	);


bresen BRESEN
	(
		.clk(clk),
		.n_rst(n_rst),
		.start(bresen_start),
		.p(p), // start_point
		.q(q), // end_point
		.point(plot_point),
		.plot(plot),
		.done(bresen_done)
	);


wireframe_plot WF_PLOT
	(
		.plot(plot),
		.clear(clear),
		.clear_point(clear_point),
		.plot_point(plot_point),
		.write_en(write_en),
		.wf_data(wf_data),
		.addr(addr)
	);
/*
plot PLOT
	(
		.plot(plot),
		.point(plot_point),
		.write_en(write_en),
		.wf_data(wf_data),
		.addr(addr)
	);
*/

endmodule
