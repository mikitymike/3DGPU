`include "defines_package.vh"

module colorloop
(
	input wire zbuf_val,
	input wire sram_val,
	input wire clk,
	input wire n_rst,
	input shortint height,
	input Color rgb_val,
	input Triangle3D ver,
	input wire color_en,
	output reg done,
	output reg [18:0] sram_addr,
	output reg [18:0] zbuf_addr,
	output reg write_en,
	output reg [7:0] data_out
	
);

shortint count;
shortint height_count;

typedef enum logic [1:0] {IDLE, LOOP, DONE} state_type;
state_type curr, next;


always_ff @(posedge clk, negedge n_rst)  begin
	if(!n_rst) begin
		curr <= IDLE;
	end
	else begin
		curr <= next;
	end
	
end
always_comb begin
	case(state)
		IDLE: begin
			if(color_en) begin
				next = LOOP;
				count = 0;
				
			end
			else begin
				next = IDLE;
			end
		end
		LOOP: begin
			if(count == CHUNK_SIZE) begin
				next = DONE;
			end
			else begin
				height_count = height_count + 1; // do i need extra states so color fill can process or should i use data_ready
				next = WAIT;
			end
		end
		WAIT: begin
			if(data_ready) begin
				next = LOOP;
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
	.zbuf_val(data_in_clr),
	.sram_val(),
	.height(height_count),
	.rgb_val(color),
	.3DVer(3DVer),
	.color_en(color_en),
	.data_ready(data_ready),
	.sram_addr(),
	.zbuf_addr(zbuf_addr),
	.data_out(data_out_clr),
	.write_en(write_en)
)


