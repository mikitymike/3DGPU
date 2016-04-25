import defines_package::*;

//figure out how to find address associated with minx and maxx
//or take in full line? then send back changed line to memory
parameter ADDR_WIDTH = 19;

module colorfill
(
	input wire zbuf_val,
	input wire sram_val,
	input wire clk,
	input wire n_rst,
	input wire [8:0] height,
	input Color rgb_val,
	input Triangle3D 3DVer,
	input wire color_en,
	output reg data_ready,
	output reg sram_addr,
	output reg zbuf_addr,
	output reg write_en,
	output reg data_out
);

	typedef enum logic [2:0] {IDLE,FIND1L,FIND1R,FILLLEFT,FILLRIGHT,DONE} state_type;
	state_type curr, next;

reg [18:0] laddr = height * 640;
reg [18:0] raddr = laddr + 640;

always_ff @(posedge clk,s negedge n_rst) begin
	if(!n_rst) begin
		curr <= IDLE;
	end
	else begin
		curr <= next;
	end
	
end

assign zbuf = z_interpolation(3DVer, {laddr, height})

always_comb begin
	case(curr)
		IDLE:	begin
					if(color_en) begin
						next = FIND1L;
					end
					else begin
						next = IDLE
					end
				end

		FIND1L: begin
					sram_addr = laddr;
					if(sram_val == 1) begin
						next = FIND1R;
					end
					else begin
						next = FIND1L;
						laddr = laddr + 1;
					end
					
				end

		FIND1R: begin
					sram_addr = raddr;
					if(sram_val == 1) begin //wrong way to ref
						next = FILLLEFT;
					end
					else begin
						next = FIND1R;
						raddr = raddr - 1;
					end
				end

		FILLLEFT:begin
					write_en = 0;
					if(raddr < laddr) begin
						next = DONE;
					end
					else if(zbuf < zbuf_val) begin // wrong way to ref
						//FILL the current address
						write_en = 1;
						zbuf_addr = height * 640 + laddr;
						data_out = zbuf;
						next = FILLRIGHT;
						laddr = laddr +1;
					end
					else begin
						next = FILLRIGHT;
						laddr = laddr +1;
					end
				end
		FILLRIGHT:begin
					write_en = 0;
					if(raddr < laddr) begin
						next = DONE;
					end
					else if(zbuf < zbuf_val) begin
						//FILL the current address
						next = FILLLEFT
						raddr = raddr -1;
					end
					else begin
						next = FILLLEFT;
						raddr = raddr -1;
					end
				end
		DONE:	begin
					next = IDLE; //how long do i need to asser done
				end
					
end

assign data_ready = (curr == DONE);

endmodule
