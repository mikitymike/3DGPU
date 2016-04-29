`include "defines_package.vh"

//figure out how to find address associated with minx and maxx
//or take in full line? then send back changed line to memory

module colorfill
(
	input wire [(`LAYER_SIZE-1):0] zbuf_val,
	input wire sram_val,
	input wire clk,
	input wire n_rst,
	input shortint height,
	input Color rgb_val,
	input Triangle3D ver,
	input wire color_en,
	output reg data_ready,
	output reg [(`WIREFRAME_ADDR_SIZE-1):0] sram_addr,
	output wire [(`SRAM_ADDR_SIZE-1):0] zbuf_addr,
	output wire [(`FRAME_BUFFER_ADDR_SIZE-1):0] fb_addr,
	output reg write_en,
	output wire [7:0] data_out,
	output Color data_out_color
);

typedef enum logic [4:0] {IDLE, WAITL, FIND1L, WAITR, FIND1R, FILL, WAITZ, CHECKZ, WRITE, STEP, DONE } state_type;
state_type curr, next;

Point2D point;
logic signed [15:0] left, right, next_left, next_right;
logic [(`WIREFRAME_ADDR_SIZE-1):0] base_addr;
logic [(`WIREFRAME_ADDR_SIZE-1):0] next_sram_addr;
logic [(`LAYER_SIZE-1):0] zbuf;


always_ff @(posedge clk, negedge n_rst) begin
	if(!n_rst) begin
		curr      <= IDLE;
		left      <= 0;
		right     <= 0;
		sram_addr <= 0;
	end
	else begin
		curr      <= next;
		sram_addr <= next_sram_addr;
		left      <= next_left;
		right     <= next_right;
	end
end


assign point = {left, height};
assign base_addr = height * 640; 
assign data_out_color = rgb_val;
assign data_out = zbuf;
assign zbuf_addr = base_addr + left;
assign fb_addr = base_addr + left;


always_comb begin
	next = curr;
	next_left = left;
	next_right = right;
	next_sram_addr = sram_addr;
	write_en = 0;
	case(curr)
		IDLE: begin
			if(color_en) begin
				next = WAITL;
				next_left = 0;
				next_right = `WIDTH-1;
				next_sram_addr = left + base_addr;
			end
			else begin
				next = IDLE;
			end
		end
		WAITL: begin
			next = FIND1L;
		end
		FIND1L: begin
			if(sram_val || left == (`WIDTH-1)) begin
				next = WAITR;
				next_sram_addr = right + base_addr;
			end
			else begin
				next = FIND1L;
				next_left = left + 1;
				next_sram_addr = left + base_addr;
			end
		end
		WAITR: begin
			next = FIND1R;
		end
		FIND1R: begin
			if(sram_val || right == 0) begin 
				next = FILL;
			end
			else begin
				next = FIND1R;
				next_right = right - 1;
				next_sram_addr = right + base_addr;
			end
		end
		FILL: begin
			if(left > right) begin
				next = DONE;
			end
			else begin
				next = WAITZ;
			end
		end
		WAITZ: begin
			next = CHECKZ;
		end
		CHECKZ: begin
			if(zbuf > zbuf_val) begin 
				next = WRITE;						
			end
			else begin
				next = STEP;
			end
		end
		WRITE: begin
			write_en = 1;
			next = STEP;
		end
		STEP: begin
			next = FILL;
			next_left = left + 1;
		end
		DONE: begin
			next = IDLE;
			next_left = 0;
		end
	endcase				
end

assign data_ready = (curr == DONE);

z_interpolation ZI(
	.triangle(ver),
	.point(point),
	.z(zbuf)
);

endmodule
