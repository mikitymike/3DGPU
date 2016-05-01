`include "defines_package.vh"

module colorloop
(
	input wire clk,
	input wire n_rst,
	input wire [(`LAYER_SIZE-1):0] zbuf_val,
	input wire sram_val,
	input shortint height,
	input Color rgb_val,
	input Triangle3D ver,
	input wire color_en,
	output reg done,
	output reg [(`WIREFRAME_ADDR_SIZE-1):0] sram_addr,
	output reg [(`SRAM_ADDR_SIZE-1):0] zbuf_addr,
	output reg [(`FRAME_BUFFER_ADDR_SIZE-1):0] fb_addr,
	output reg write_en,
	output reg [(`LAYER_SIZE-1):0] data_out,
	output Color data_out_color,
	input wire all_done,
	input wire new_frame,
	output wire ready
);


shortint height_count;
shortint next_height_count;
logic data_ready;
typedef enum logic [2:0] {IDLE, CLEARZ, LOOP, WAIT, DONE} state_type;
state_type curr, next;

logic [(`SRAM_ADDR_SIZE)-1:0] clear_zbuf_addr, next_clear_zbuf_addr;
logic [(`SRAM_ADDR_SIZE)-1:0] cf_zbuf_addr;
logic cf_color_en;
logic [(`LAYER_SIZE-1):0] cf_data_out;
logic cf_write_en;

assign ready = (curr == IDLE);

always_ff @(posedge clk, negedge n_rst)  begin
	if(!n_rst) begin
		curr <= IDLE;
		height_count <= 0;
		clear_zbuf_addr <= 0;
	end
	else begin
		curr <= next;
		height_count <= next_height_count;
		clear_zbuf_addr <= next_clear_zbuf_addr;
	end
	
end


assign zbuf_addr = (curr == CLEARZ) ? clear_zbuf_addr : cf_zbuf_addr;
assign data_out = (curr == CLEARZ) ? 0 : cf_data_out;
assign write_en = (curr == CLEARZ) ? 1 : cf_write_en; 

always_comb begin
	next = curr;
	next_height_count = height_count;
	cf_color_en = 0;
	case(curr)
		IDLE: begin
			if(new_frame) begin
				next = CLEARZ;
				next_clear_zbuf_addr = 0;
			end
			else if(color_en) begin
				next = LOOP;
				next_height_count = height;
			end
			else begin
				next = IDLE;
			end
		end
		CLEARZ: begin
			if(clear_zbuf_addr == (`WIDTH * `HEIGHT)) begin
				next = IDLE;
			end
			else begin
				next = CLEARZ;
				next_clear_zbuf_addr = clear_zbuf_addr + 1;
			end
		end
		LOOP: begin
			if(next_height_count == `CHUNK_SIZE) begin
				next = DONE;
			end
			else begin
				next = WAIT;
				cf_color_en = 1;
			end
		end
		WAIT: begin
			if(data_ready) begin
				next = LOOP;
				next_height_count = height_count + 1;
			end
			else begin
				next = WAIT;
			end	
		end
		DONE: begin
			if(all_done) begin
				next = IDLE;
			end
			else begin
				next = DONE;
			end
		end
	endcase
end

assign done = (curr == DONE);

colorfill CF(
	.clk(clk),
	.n_rst(n_rst),
	.zbuf_val(zbuf_val),
	.sram_val(sram_val),
	.height(height_count),
	.rgb_val(rgb_val),
	.ver(ver),
	.color_en(cf_color_en),
	.data_ready(data_ready),
	.sram_addr(sram_addr),
	.zbuf_addr(cf_zbuf_addr),
	.fb_addr(fb_addr),
	.data_out(cf_data_out),
	.write_en(cf_write_en),
	.data_out_color(data_out_color)
);

endmodule


