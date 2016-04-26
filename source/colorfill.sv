`include "defines_package.vh"

//figure out how to find address associated with minx and maxx
//or take in full line? then send back changed line to memory

module colorfill
(
	input wire zbuf_val,
	input wire sram_val,
	input wire clk,
	input wire n_rst,
	input shortint height,
	input Color rgb_val,
	input Triangle3D 3DVer,
	input wire color_en,
	output reg data_ready,
	output reg [18:0] sram_addr,
	output reg [18:0] zbuf_addr,
	output reg write_en,
	output reg [7:0] data_out
);

	typedef enum logic [2:0] {IDLE,FIND1L,FIND1R,FILLLEFT,FILLRIGHT,DONE} state_type;
	state_type curr, next;

	shortint left;
	shortint right;
	reg [18:0] srambaseaddr;
	reg [18:0] sramnextaddr;
	Point2D point;
	reg [7:0] zbuf;
	

always_ff @(posedge clk negedge n_rst) begin
	if(!n_rst) begin
		curr <= IDLE;
	end
	else begin
		curr <= next;
		sram_addr <= sramnextaddr;
	end
	
end

assign point.y = height; 
assign point.x = left;
assign srambaseaddr = height * 640; 

always_comb begin
	case(curr)
		IDLE:	begin
					if(color_en) begin
						next = FIND1L;
						left = 0;
						right = `WIDTH-1;
						sramnextaddr = left + srambaseaddr;
					end
					else begin
						next = IDLE;
					end
				end

		FIND1L: begin
					
					if(sram_val) begin
						next = FIND1R;
						sramnextaddr = right + srambaseaddr;
						point.x = left
					end
					else begin
						next = FIND1L;
						left = left + 1;
						sramnextaddr = left + srambaseaddr;
					end
					
				end

		FIND1R: begin
					if(sram_val) begin 
						next = FILL;
					end
					else begin
						next = FIND1R;
						right = right - 1;
						sramnextaddr = right + srambaseaddr;
					end
				end

		FILL:begin
					write_en = 0;
					if(left > right) begin
						next = DONE;
					end
					else begin
						next = CHECKZ;
					end
					
					
			end

		CHECKZ:
				if(zbuf > zbuf_val) begin 
					//FILL the current address
					write_en = 1;
					zbuf_addr = height * 640 + left;
					data_out = zbuf;
				end
				left = left +1;
				next = FILL;
				end
		
		DONE:	begin
					next = IDLE; //how long do i need to asser done
				end
	endcase				
end

assign data_ready = (curr == DONE);

z_interpolation ZI(
	.triangle(3DVer),
	.point(point),
	.z(zbuf)
);

endmodule
