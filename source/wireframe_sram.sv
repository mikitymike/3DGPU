/*
	Wire frame SRAM.
	Includes row for parity bits at end of each row.
	No protection for addressing outside available
	memory.
*/


import defines_package::*;


module wireframe_sram
(
	input wire clk,
	input wire n_rst,
	input wire write_en,
	input wire data_in,
	input wire flip,
	input wire [(WIREFRAME_ADDR_SIZE-1):0] write_addr,
	input wire [(WIREFRAME_ADDR_SIZE-1):0] read_addr
	output reg data_out
);

reg write_buffer;
reg ram0[0:((WIDTH+1)*HEIGHT)];
reg ram1[0:((WIDTH+1)*HEIGHT)];

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst) begin
		write_buffer <= 0;
	end
	else if(write_en) begin
		if(write_buffer == 0) begin
			ram0[write_addr] <= data_in;
		end
		else begin
			ram1[write_addr] <= data_in;
		end
	end

	if(write_buffer == 0) begin
		data_out <= ram1[read_addr];
	end
	else begin
		data_out <= ram0[read_addr];
	end

	if(flip) begin
		write_buffer <= ~write_buffer;
	end
end
