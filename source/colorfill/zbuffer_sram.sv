import defines_package::*;

parameter ADDR_WIDTH = 19;

module zbuffer_sram
(
	input wire clk,
	input wire n_rst,
	input wire write_en,
	input wire data_in,
	input wire [(ADDR_WIDTH-1):0] addr,
	output reg data_out
);

reg [7:0] ram[0:(WIDTH*HEIGHT)]; //8 layer z-buffer

always_ff @(posedge clk) begin
	if(write_en) begin
		ram[addr] <= data_in;
	end
	data_out <= ram[addr];
end

endmodule
