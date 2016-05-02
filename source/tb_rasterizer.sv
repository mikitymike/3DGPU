/*
	Rasterizer Testbench
*/


`timescale 1ns / 10ps


`include "defines_package.vh"


module tb_rasterizer
();
	localparam CLK_PERIOD = 20;
	localparam DELAY = 6;
	localparam NUM_TESTS = 1;

	integer fp;

	
	reg tb_clk;
	reg tb_n_rst;
	Triangle3D tb_i_triangle;
	Triangle3D tb_o_triangle;
	Color tb_i_color;
	Color tb_o_color;
	reg tb_write_en;
	reg tb_wf_data;
	reg [(`WIREFRAME_ADDR_SIZE-1):0] tb_addr;
	reg tb_done;

	reg tb_tri_read, tb_tri_ready;
	reg tb_cf_ready;

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
			.itriangle(tb_i_triangle),
			.icolor(tb_i_color),
			.otriangle(tb_o_triangle),
			.ocolor(tb_o_color),
			.write_en(tb_write_en),
			.wf_data(tb_wf_data),
			.addr(tb_addr),
			.done(tb_done),
			.tri_read(tb_tri_read),
			.tri_ready(tb_tri_ready),
			.cf_ready(tb_cf_ready)
		);
	
	always @(posedge tb_clk) begin
		if(tb_write_en) begin
			image_data[tb_addr] = tb_wf_data;
		end
	end

	integer test = 0;	
	
	integer seed;
	string sseed;
	integer dfp;

	initial begin
		// Get random seed from time
		$system("date +'%s' > tmp.time");
		dfp = $fopen("tmp.time", "r");
		$fscanf(dfp, "%s", sseed);
		seed = sseed.atoi();
		$fclose(dfp);
		$system("rm tmp.time");
		$display("%d", seed);

		for(test = 0; test < NUM_TESTS; test++) begin
			$display("Test %2d", test);
			// $display("Opening file.\n");
			fp = $fopen($psprintf("wireframe%1d.ppm", test), "w");
			$fwrite(fp, "P1\n");
			$fwrite(fp, "# 2D wireframe\n");
			$fwrite(fp, "%d %d\n", `WIDTH, `HEIGHT);
		
			// $display("Initializing image data.\n");
			for(i = 0; i < `WIDTH * `HEIGHT; i++) begin
				image_data[i] = 1;
			end

			tb_i_triangle.p.x = {$random(seed)} % `WIDTH;
			tb_i_triangle.p.y = {$random(seed)} % `HEIGHT;
			tb_i_triangle.p.z = {$random(seed)} % 50;
			// $display("(%d, %d, %d)", tb_i_triangle.p.x, tb_i_triangle.p.y, tb_i_triangle.p.z);
			
			tb_i_triangle.q.x = {$random(seed)} % `WIDTH;
			tb_i_triangle.q.y = {$random(seed)} % `HEIGHT;
			tb_i_triangle.q.z = {$random(seed)} % 50;
			// $display("(%d, %d, %d)", tb_i_triangle.q.x, tb_i_triangle.q.y, tb_i_triangle.q.z);

			tb_i_triangle.r.x = {$random(seed)} % `WIDTH;
			tb_i_triangle.r.y = {$random(seed)} % `HEIGHT;
			tb_i_triangle.r.z = {$random(seed)} % 50;
			// $display("(%d, %d, %d)", tb_i_triangle.r.x, tb_i_triangle.r.y, tb_i_triangle.r.z);

			tb_i_color.r = {$random(seed)} % 256;
			tb_i_color.g = {$random(seed)} % 256;
			tb_i_color.r = {$random(seed)} % 256;


			tb_cf_ready = 1;	

			tb_n_rst = 1;
			#DELAY;
			tb_n_rst = 0;
			#DELAY;
			tb_n_rst = 1;
			#DELAY;
			
			@(posedge tb_clk);
			tb_tri_ready = 1;
			@(posedge tb_clk);
			tb_tri_ready = 0;
			
			@(posedge tb_done);
			
			// $display("Writing to file.\n");	
			for(i = 0; i < `HEIGHT; i++) begin
				for(j = 0; j < `WIDTH-1; j++) begin
					$fwrite(fp, "%d ", image_data[i*`WIDTH+j]);
				end
				$fwrite(fp, "%d\n", image_data[i*`WIDTH+j]);
			end

			$fclose(fp);
		
		end
	end

	

endmodule
