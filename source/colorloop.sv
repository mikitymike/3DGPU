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
	output Color data_out_color
);


shortint height_count;
shortint next_height_count;
reg data_ready;
typedef enum logic [1:0] {IDLE, LOOP,WAIT, DONE} state_type;
state_type curr, next;


always_ff @(posedge clk, negedge n_rst)  begin
	if(!n_rst) begin
		curr <= IDLE;
		height_count <= 0;
	end
	else begin
		curr <= next;
		height_count <= next_height_count;  
	end
	
end
always_comb begin
	next = curr;
	next_height_count = height_count;
	case(curr)
		IDLE: begin
			if(color_en) begin
				next = LOOP;
				next_height_count = height;
			end
			else begin
				next = IDLE;
			end
		end
		LOOP: begin
			if(next_height_count == `CHUNK_SIZE) begin //CHANGE BACK TO CHUNK SIZE ??????
				next = DONE;
			end
			else begin
				 // do i need extra states so color fill can process or should i use data_ready
				next = WAIT;
			end
		end
		WAIT: begin
			if(data_ready) begin
				next = LOOP;
				//height_count = height_count + 1;
				next_height_count = height_count + 1;
			end
			else begin
				next = WAIT;
			end	
		end
		DONE: begin
			next = IDLE;
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
	.color_en(color_en),
	.data_ready(data_ready),
	.sram_addr(sram_addr),
	.zbuf_addr(zbuf_addr),
	.fb_addr(fb_addr),
	.data_out(data_out),
	.write_en(write_en),
	.data_out_color(data_out_color)
);

endmodule


