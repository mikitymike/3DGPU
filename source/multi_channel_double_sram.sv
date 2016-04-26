


module multi_channel_double_sram
#(
	parameter WRITE_CHANNELS = 1;
	parameter READ_CHANNELS = 1;
	parameter ADDR_SIZE = 8;
	parameter DATA_SIZE = 1;
	parameter SIZE = 256;
)
(
	input wire clk,
	input wire n_rst,
	input wire write_enables [CHANNELS],
	input wire [(DATA_SIZE-1):0] data_ins [CHANNELS],
	input wire flip,
	input wire [(ADDR_SIZE-1):0] write_addrs [CHANNELS],
	input wire [(ADDR_SIZE-1):0] read_addrs  [CHANNELS],
	output reg [(DATA_SIZE-1):0] data_outs [CHANNELS]
);

genvar i;

reg write_buffer;
reg [(DATA_SIZE-1):0] ram0[SIZE];
reg [(DATA_SIZE-1):0] ram1[SIZE];

always_ff @(posedge clk, negedge n_rst) begin
	if(n_rst == 0) begin
		write_buffer <= 0;
	end
	else begin
		generate
			for(i = 0; i < WRITE_CHANNELS; i++) begin
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
		for(i = 0; i < READ_CHANNELS; i++) begin
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
