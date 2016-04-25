import defines_package::*;

module colorsm(
	input wire clk;
	input wire n_rst;


);

	typedef enum logic [3:0] {IDLE, } state_type;
	state_type curr, next;

always_ff @(posedge clk, negedge n_rst) begin
	if(!n_rst) begin
		curr <= IDLE;
	end
	else begin
		curr <= next;
	end
	
end

always_comb begin
	case(curr)
		IDLE: 	begin
				

			end


		
	
end


