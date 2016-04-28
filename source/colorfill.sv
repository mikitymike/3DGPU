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
	output reg [(`SRAM_ADDR_SIZE-1):0] zbuf_addr,
	output reg [(`FRAME_BUFFER_ADDR_SIZE-1):0] fb_addr,
	output reg write_en,
	output reg [7:0] data_out,
	output Color data_out_color
);

typedef enum logic [3:0] {IDLE, FIND1L, FIND1R, FILL, WAITZ, WAITZ2, WAITZ3, WAITZ4, CHECKZ, WRITE, STEP, DONE, WAIT, WAITL} state_type;
state_type curr, next;

shortint left;
shortint right;
reg [18:0] srambaseaddr;
reg [18:0] sramnextaddr;
Point2D point;
logic [7:0] zbuf;
shortint next_right, next_left;
shortint count;
	

always_ff @(posedge clk, negedge n_rst) begin
	if(!n_rst) begin
		curr <= IDLE;
		left <= 0;
		right <= 0;
		sram_addr <= 0;
	end
	else begin
		curr <= next;
		sram_addr <= sramnextaddr;
		left <= next_left;
		right <= next_right;
	end
	
end

assign point.y = height; 
assign point.x = left;
assign srambaseaddr = height * 640; 
assign data_out_color = rgb_val;
assign data_out = zbuf;
assign zbuf_addr = height * 640 + left;
assign fb_addr = height * 640 + left;

always_comb begin
	next = curr;
	next_left = left;
	next_right = right;
	sramnextaddr = sram_addr;//maybe
	write_en = 0;
	case(curr)
		IDLE:	begin
					if(color_en) begin
						next = WAITL;
						next_left = 0;
						next_right = `WIDTH-1;
						sramnextaddr = left + srambaseaddr;
						count = 0;
					end
					else begin
						next = IDLE;
					end
				end
		WAITL:	begin
				next = FIND1L;

			end
		FIND1L: begin
					
					if(sram_val || left == (`WIDTH-1)) begin
						next = WAIT;
						sramnextaddr = right + srambaseaddr;
						
					end
					else begin
						next = FIND1L;
						next_left = left + 1;
						sramnextaddr = left + srambaseaddr;
					end
					
				end

		WAIT: begin
				next = FIND1R;
		      end

		FIND1R: begin
					if(sram_val || right == 0) begin 
						next = FILL;
					end
					else begin
						next = FIND1R;
						next_right = right - 1;
						sramnextaddr = right + srambaseaddr;
					end
				end

		FILL:begin
					write_en = 0;
					if(left > right) begin
						next = DONE;
					end
					else begin
						next = WAITZ;
					end
					
					
			end
		WAITZ: begin
				next = WAITZ2;
			end
		WAITZ2: begin
				next = WAITZ3;

			end
		WAITZ3: begin
				next = WAITZ4;
			end
		WAITZ4: begin
				next = CHECKZ;
			end

		CHECKZ: begin
				//$display("zbuf = %d zbuf_val(ram) = %d\n",zbuf, zbuf_val);
				if(zbuf > zbuf_val) begin 
					next = WRITE;						
					//write_en = 1;
					//$display("zbuf = %d zbuf_val(ram) = %d\n",zbuf, zbuf_val);
					//data_out = zbuf;
				end
				else begin
					next = STEP;
				end
				//next_left = left + 1;
				//next = FILL;
				
			end
		WRITE: begin
			write_en = 1;
			next = STEP;
			//$display("zbuf = %d zbuf_val(ram) = %d\n",zbuf, zbuf_val);
		end
		STEP: begin
			next = FILL;
			next_left = left + 1;
		end
		DONE:	begin
				next = IDLE; //how long do i need to asser done
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
