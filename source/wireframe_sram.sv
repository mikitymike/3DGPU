/*
	Wire frame SRAM.
	Includes row for parity bits at end of each row.
	No protection for addressing outside available
	memory.
*/


import defines_package::*;


module wireframe_sram
(
	input wire clk;
	input wire write_en;
	input wire data_in;
	input wire [(WIREFRAME_ADDR_SIZE-1):0] addr;
	output reg data_out;
);

reg ram[0:((WIDTH+1)*HEIGHT)];

always @(posedge clk) begin
	if(write_en) begin
		ram[addr] <= data_in;
	end
	data_out <= ram[addr];
end

endmodule
