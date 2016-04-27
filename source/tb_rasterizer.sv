/*
	Rasterizer Testbench
*/


`timescale 1ns / 10ps


`include "defines_package.vh"


module tb_rasterizer
();
	localparam CLK_PERIOD = 20;
	localparam DELAY = 6;

	integer fp;

	
	reg tb_clk;
	reg tb_n_rst;
	reg tb_start;
	Triangle3D tb_i_triangle;
	Triangle3D tb_o_triangle;
	Color tb_i_color;
	Color tb_o_color;
	reg tb_write_en;
	reg tb_wf_data;
	reg [(`WIREFRAME_ADDR_SIZE-1):0] tb_addr;
	reg tb_done;


	integer image_data [`WIDTH * `HEIGHT];
	integer i, j;

	
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
			.done(tb_done)
		);
	
	always @(posedge tb_clk) begin
		if(tb_write_en) begin
			image_data[tb_addr] = tb_wf_data;
		end
	end
	
	initial begin
		$display("Opening file.\n");
		fp = $fopen("wireframe.ppm", "w");
		$fwrite(fp, "P1\n");
		$fwrite(fp, "# 2D wireframe\n");
		$fwrite(fp, "%d %d\n", `WIDTH, `HEIGHT);
	
		$display("Initializing image data.\n");
		for(i = 0; i < `WIDTH * `HEIGHT; i++) begin
			image_data[i] = 1;
		end

		tb_i_triangle.p.x = 0;
		tb_i_triangle.p.y = 0;
		tb_i_triangle.p.z = 0;
		
		tb_i_triangle.q.x = `WIDTH-1;
		tb_i_triangle.q.y = `HEIGHT-1;
		tb_i_triangle.q.z = 10;

		tb_i_triangle.r.x = 0;
		tb_i_triangle.r.y = `HEIGHT-1;
		tb_i_triangle.r.z = 20;

		tb_i_color.r = 0;
		tb_i_color.g = 0;
		tb_i_color.r = 0;


		tb_start = 0;


		tb_n_rst = 1;
		#DELAY;
		tb_n_rst = 0;
		#DELAY;
		tb_n_rst = 1;
		#DELAY;
		
		@(posedge tb_clk);
		tb_start = 1;

		@(posedge tb_done);
		
		$display("Writing to file.\n");	
		for(i = 0; i < `HEIGHT; i++) begin
			for(j = 0; j < `WIDTH-1; j++) begin
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j]);
			end
			$fwrite(fp, "%d\n", image_data[i*`WIDTH+j]);
		end

		$fclose(fp);

	
	end

	

endmodule
