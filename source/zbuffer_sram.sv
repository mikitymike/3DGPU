/*
	Zbuffer
*/



module zbuffer_sram
#(
	parameter CHANNELS = 1,
	parameter ADDR_SIZE = 8,
	parameter DATA_SIZE = 1,
	parameter SIZE = 256
)
(
	input wire clk,
	input wire n_rst,
	input wire write_enables [CHANNELS],
	input wire [(DATA_SIZE-1):0] data_ins [CHANNELS],
	input wire [(ADDR_SIZE-1):0] addrs [CHANNELS],
	output reg [(DATA_SIZE-1):0] data_outs [CHANNELS]
);


reg [(DATA_SIZE-1):0] ram[SIZE];

genvar i;
generate
for(i = 0; i < CHANNELS; i++) begin
	always_ff @(posedge clk, negedge n_rst) begin
		if(write_enables[i]) begin
			ram[addrs[i]] <= data_ins[i];
		end
			data_outs[i] <= ram[addrs[i]];
	end
end
endgenerate


endmodule
