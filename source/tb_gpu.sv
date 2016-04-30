/*
	GPU Testbench
*/


`include "defines_package.vh"


`timescale 1ns / 10ps

module tb_gpu
();
	localparam CLK_PERIOD = 20;
	localparam DELAY = 6;
	localparam NUM_TRIANGLES = 2;
	
	reg tb_clk;
	reg tb_n_rst;
	Triangle3D tb_triangle;
	Color tb_color;
	reg tb_tri_ready;
	reg tb_tri_read;
	reg tb_cf_done;
	reg tb_transfer_done;
	reg tb_ready_for_data;
	reg [31:0] tb_data_out;

	gpu DUT
		(
			.clk(tb_clk),
			.n_rst(tb_n_rst),
			.triangle(tb_triangle),
			.color(tb_color),
			.tri_ready(tb_tri_ready),
			.tri_read(tb_tri_read),
			.cf_done(tb_cf_done),
			.transfer_done(tb_transfer_done),
			.ready_for_data(tb_ready_for_data),
			.data_out(tb_data_out)
		);

	always begin
		tb_clk = 0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1;
		#(CLK_PERIOD/2.0);
	end

	Color image_data[`WIDTH * `HEIGHT];
	integer test, i, j, fp;
	Color tc;

	Triangle3D triangles [NUM_TRIANGLES];
	Color colors [NUM_TRIANGLES];

	initial begin
		$display("Intializing triangle values.");	
		// init triangles and colors	
		triangles[0].p = {x:0, y:0, z:0};
		triangles[0].q = {x:0, y:`HEIGHT-1, z:0};
		triangles[0].r = {x:`WIDTH-1, y:`HEIGHT-1, z:0};
		colors[0] = {r:0, g:0, b:0};

		triangles[1].p = {x:0, y:0, z:0};
		triangles[1].q = {x:`WIDTH-1, y:0, z:0};
		triangles[1].r = {x:`WIDTH-1, y:`HEIGHT-1, z:0};
		colors[1] = {r:255, g:255, b:255};	
		
		// initial_values
		tb_ready_for_data = 0;
		tb_tri_ready = 0;
		
		$display("Resetting GPU.");	
		// reset
		tb_n_rst = 1;
		#DELAY;
		tb_n_rst = 0;
		#DELAY;
		tb_n_rst = 1;
		#DELAY;

		for(test = 0; test < NUM_TRIANGLES; test++) begin
			// setup current values
			tb_triangle = triangles[test];
			tb_color = colors[test];
			$display("Starting round.");	
			// begin
			tb_tri_ready = 1;
			@(posedge tb_tri_read)
			tb_tri_ready = 0;

			// wait for completion
			@(posedge tb_cf_done)
			$display("Reading image data from frame buffer.");	
			// write data to array
			tb_ready_for_data = 1;
			for(i = 0; i < `HEIGHT*`WIDTH; i++) begin
				@(posedge tb_clk);
				image_data[i] = tb_data_out[23:0]; 
			end
				
			@(posedge tb_transfer_done);
			$display("Frame buffer transfer complete.");
			tb_ready_for_data = 0;
			// write data to file
			$display("Writing data to file.");
			fp = $fopen($psprintf("gpu%1d.ppm", test), "w");
			$fwrite(fp, "P3\n");
			$fwrite(fp, "# Wireframe and Colorfill\n");
			$fwrite(fp, "%d %d\n", `WIDTH, `HEIGHT);
			for(i = 0; i < `HEIGHT; i++) begin
				for(j = 0; j < `WIDTH-1; j++) begin
					tc = image_data[i*`WIDTH+j];		
					$fwrite(fp, "%d %d %d ", tc.r, tc.g, tc.b);
				end
				tc = image_data[i*`WIDTH+j];		
				$fwrite(fp, "%d %d %d\n", tc.r, tc.g, tc.b);
			end
			$fclose(fp);
			$display("File written.");
		end
	end

endmodule
