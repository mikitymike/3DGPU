// File name:   rasterizer.sv
// Author:      Zach Miller
// Version:     1.0  Initial Design Entry
// Description: Triangle Rasterization module


`include "defines_package.vh"


module rasterizer
(
	input wire clk,
	input wire n_rst,
	input Triangle3D itriangle,
	output Triangle3D otriangle,
	input Color icolor,
	output Color ocolor,
	output wire write_en,
	output wire wf_data,
	output wire [(`WIREFRAME_ADDR_SIZE-1):0] addr,
	output wire done,
	input wire cf_ready,	
	output wire tri_read,
	input wire tri_ready
);


Point2D p, q;
wire bresen_done;
wire bresen_start;

Point2D plot_point, clear_point;
wire plot;
wire clear;


rasterizer_controller CONTROLLER
	(
		.clk(clk),
		.n_rst(n_rst),
		
		.itri3(itriangle),
		.otri3(otriangle),
		.icolor(icolor),
		.ocolor(ocolor),
		
		.p(p),
		.q(q),
		.bresen_start(bresen_start),
		.bresen_done(bresen_done),
		
		.clear_point(clear_point),
		.clear(clear),
		.done(done),
		.cf_ready(cf_ready),	
		.tri_read(tri_read),
		.tri_ready(tri_ready)
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


endmodule
