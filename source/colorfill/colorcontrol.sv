import defines_package::*;

module colorcontrol
(
	input wire clk,
	input wire n_rst,
	input Triangle3D 3DVer,
	input wire color_en,
	input Color color,
	input wire [8:0] height,
	output reg data_ready,
	
	
	
);
	reg zbuf_addr;
	reg data_in;
	reg data_out;
	reg write_en;

	colorfill CF(
		.clk(clk),
		.n_rst(n_rst),
		.zbuf_val(data_in_clr),
		.sram_val(),
		.height(height),
		.rgb_val(color),
		.3DVer(3DVer),
		.color_en(color_en),
		.data_ready(data_ready),
		.sram_addr(),
		.zbuf_addr(zbuf_addr),
		.data_out(data_out_clr),
		.write_en(write_en)
	);

	zbuffer_sram ZS(
		.clk(clk),
		.n_rst(n_rst),
		.write_en(write_en),
		.data_in(data_out_clr),
		.addr(zbuf_addr),
		.data_out(data_in_clr)
	);
