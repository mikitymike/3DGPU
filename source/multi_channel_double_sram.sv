


module multi_channel_double_sram
#(
	parameter CHANNELS = 1;
	parameter ADDR_SIZE = 8;
	parameter DATA_SIZE = 1;
	parameter SIZE = 256;
)
(
	input wire clk,
	input wire n_rst,
	input wire write_enables [0:(CHANNELS-1)],
	input wire [(DATA_SIZE-1):0] data_ins [0:(CHANNELS-1)],
	input wire flip,
	input wire [(ADDR_SIZE-1):0] write_addrs [0:(CHANNELS-1)],
	input wire [(ADDR_SIZE-1):0] read_addrs  [0:(CHANNELS-1)],
	output reg [(DATA_SIZE-1):0] data_outs [0:(CHANNELS-1)]
);

genvar i;

reg write_buffer;
reg ram0[0:((SIZE*DATA_SIZE)-1)];
reg ram1[0:((SIZE*DATA_SIZE)-1)];

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		write_buffer <= 0;
	end
	else begin
		generate
			for(i = 0; i < CHANNELS; i++) begin
				if(write_enables[i]) begin
					if(write_buffer == 0) begin
						ram0[write_addrs[i]] <= data_ins[i];
					end
					else begin
						ram1[write_addrs[i]] <= data_ins[i];
					end
				end
			end
		endgenerate
	end

	generate
		for(i = 0; i < CHANNELS; i++) begin
			if(write_buffer == 0) begin
					data_outs[i] <= ram1[read_addrs[i]];
			end
			else begin
					data_outs[i] <= ram0[read_addrs[i]];
			end	
		end
	endgenerate

	if(flip) begin
		write_buffer <= ~write_buffer;
	end

end


endmodule
