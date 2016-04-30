

`include "defines_package.vh"


module gpu
(
	input wire clk,
	input wire n_rst,
	/*
	input wire [31:0] data_in,
	input wire data_ready,
	output wire data_read,
	output wire [31:0] data_out,
	output wire data_ready_out,
	input wire write_buffer_full
	*/
	input Triangle3D triangle,
	input Color color,
	input wire tri_ready,
	output wire tri_read,
	output wire cf_done,
	output wire transfer_done,
	input wire ready_for_data,
	output [31:0] data_out
);


Triangle3D rtoc_tri;
Color rtoc_color;
wire ras_done;

wire wf_write_enables [1];
wire wf_data_ins [1];
wire [(`WIREFRAME_ADDR_SIZE-1):0] wf_write_addrs [1];
wire [(`WIREFRAME_ADDR_SIZE-1):0] wf_read_addrs [`NUM_CF_MODS];
wire wf_data_outs [`NUM_CF_MODS];

wire fb_write_enables [`NUM_CF_MODS];
wire [(`COLOR_BITS-1):0] fb_data_ins [`NUM_CF_MODS];
wire [(`FRAME_BUFFER_ADDR_SIZE-1):0] fb_write_addrs [`NUM_CF_MODS];
wire [(`FRAME_BUFFER_ADDR_SIZE-1):0] fb_read_addrs [1];
wire [(`COLOR_BITS-1):0] fb_data_outs [1];

wire zb_write_enables [`NUM_CF_MODS];
wire [(`LAYER_SIZE-1):0] zb_data_ins [`NUM_CF_MODS];
wire [(`SRAM_ADDR_SIZE-1):0] zb_addrs [`NUM_CF_MODS];
wire [(`LAYER_SIZE-1):0] zb_data_outs [`NUM_CF_MODS];

rasterizer RASTERIZER
	(
		.clk(clk),
		.n_rst(n_rst),
		.itriangle(triangle),
		.otriangle(rtoc_tri),
		.icolor(color),
		.ocolor(rtoc_color),
		.write_en(wf_write_enables[0]),
		.wf_data(wf_data_ins[0]),
		.addr(wf_write_addrs[0]),
		.done(ras_done),
		.tri_read(tri_read),
		.tri_ready(tri_ready)
	);


multi_channel_double_sram #(1, `NUM_CF_MODS, `WIREFRAME_ADDR_SIZE, 1, `WIDTH * `HEIGHT) WIREFRAME_SRAM 
	(
		.clk(clk),
		.n_rst(n_rst),
		.write_enables(wf_write_enables),
		.data_ins(wf_data_ins),
		.flip(wf_flip),
		.write_addrs(wf_write_addrs),
		.read_addrs(wf_read_addrs),
		.data_outs(wf_data_outs)
	); 




multi_channel_double_sram #(`NUM_CF_MODS, 1, `FRAME_BUFFER_ADDR_SIZE, `COLOR_BITS, `WIDTH * `HEIGHT) FRAME_BUFFER_SRAM 
	(
		.clk(clk),
		.n_rst(n_rst),
		.write_enables(fb_write_enables),
		.data_ins(fb_data_ins),
		.flip(fb_flip),
		.write_addrs(fb_write_addrs),
		.read_addrs(fb_read_addrs),
		.data_outs(fb_data_outs)
	);



zbuffer_sram #(`NUM_CF_MODS, `SRAM_ADDR_SIZE, `LAYER_SIZE, `WIDTH * `HEIGHT) ZBUFFER_SRAM 
	(
		.clk(clk),
		.n_rst(n_rst),
		.write_enables(zb_write_enables),
		.data_ins(zb_data_ins),
		.addrs(zb_addrs),
		.data_outs(zb_data_outs)
	);


wire cl_done [`NUM_CF_MODS];
logic tmps [`NUM_CF_MODS];

wire cl_write_enables [`NUM_CF_MODS];
assign zb_write_enables = cl_write_enables;
assign fb_write_enables = cl_write_enables;

genvar i;
generate
	for(i = 0; i < `NUM_CF_MODS; i++) begin
		colorloop CL 
			(
				.clk(clk),
				.n_rst(n_rst),
				.zbuf_val(zb_data_outs[i]),
				.sram_val(wf_data_outs[i]),
				.height((i*`CHUNK_SIZE)),
				.rgb_val(rtoc_color),
				.ver(rtoc_tri),
				.color_en(ras_done), // start signal
				.sram_addr(wf_read_addrs[i]),
				.zbuf_addr(zb_addrs[i]),
				.data_out(zb_data_ins[i]),
				.write_en(cl_write_enables[i]),
				.done(cl_done[i]),
				.data_out_color(fb_data_ins[i]),
				.fb_addr(fb_write_addrs[i])		
			);
		if(i == 0) begin
			assign tmps[i] = cl_done[i];
		end
		else begin
			assign tmps[i] = cl_done[i] & tmps[i-1];
		end
	end
endgenerate

// TODO: make colorloops/fills hold done until all are done then go back to IDLE
assign cf_done = tmps[`NUM_CF_MODS-1];


frame_buffer_transfer FBT
	(
		.clk(clk),
		.n_rst(n_rst),
		.data(data_out),
		.done(transfer_done),
		.ready_for_data(ready_for_data),
		.addr(fb_read_addrs[0]),
		.color(fb_data_outs[0])
	);
endmodule
