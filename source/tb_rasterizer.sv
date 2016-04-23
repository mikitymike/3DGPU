/*
	Rasterizer Testbench
*/


// timescale


import defines_package::*;


module tb_rasterizer
();
	
	reg tb_clk;
	reg tb_n_rst;
	reg tb_start;
	Triangle3D tb_i_triangle;
	Triangle3D tb_o_triangle;
	Color tb_i_color;
	Color tb_o_color;
	reg tb_write_en;
	reg tb_wf_data;
	reg [(WIREFRAME_ADDR_SIZE-1):0] tb_addr;
	reg tb_done;


	always begin
		tb_clk = 0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1;
		#(CLK_PERIOD/2.0);
	end


	rasterizer DUT
		(
			.clk(tb_clk),
			.n_rst(tb_n_rst),
			.start(tb_start),
			.i_triangle(tb_i_triangle),
			.i_color(tb_i_color),
			.o_triangle(tb_o_triangle),
			.o_color(tb_o_color),
			.write_en(tb_write_en),
			.wf_data(tb_wf_data),
			.addr(tb_addr),
			.done(tb_done),
		);

	
	initial begin


	end
	

endmodule
