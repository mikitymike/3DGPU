import defines_package::*;

parameter ADDR_WIDTH = 19;

module wireframe_sram
(
	input wire clk;
	input wire n_rst;
	input wire write_en;
	input wire data_in;
	input wire [(ADDR_WIDTH-1):0] addr;
	output reg data_out;
);

reg ram[0:(WIDTH*HEIGHT)];

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst) begin
		ram = '0;
	end
	else if(write_en) begin
		ram[addr] <= data_in;
	end
	data_out <= ram[addr];
end

endmodule
