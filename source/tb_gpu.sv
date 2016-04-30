/*
	GPU Testbench
*/


`include "defines_package.vh"


`timescale 1ns / 10ps

module tb_gpu
();
	localparam CLK_PERIOD = 20;
	localparam DELAY = 6;
	localparam NUM_TRIANGLES = 4;
	
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
	reg tb_new_frame;

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
			.data_out(tb_data_out),
			.new_frame(tb_new_frame)
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
	Point3D points [4];
	initial begin
		$display("Intializing triangle values.");	
		// init triangles and colors	
		/*
		points[0] = {x:`WIDTH/2, y:`HEIGHT/2-30, z:50};
		points[1] = {x:`WIDTH/2-100, y:`HEIGHT/2, z:30};
		points[2] = {x:`WIDTH/2+100, y:`HEIGHT/2, z:30};
		points[3] = {x:`WIDTH/2, y:`HEIGHT/4, z:40};
		*/
		
		points[0] = {x:`WIDTH/2, y:`HEIGHT-30, z:50};
		points[1] = {x:`WIDTH/8, y:`HEIGHT-1, z:30};
		points[2] = {x:`WIDTH*7/8, y:`HEIGHT-1, z:30};
		points[3] = {x:`WIDTH/2, y:`HEIGHT/8, z:40};
		
		triangles[0].p = points[0];
		triangles[0].q = points[1];
		triangles[0].r = points[2];
		
		triangles[1].p = points[0];
		triangles[1].q = points[1];
		triangles[1].r = points[3];
		
		triangles[2].p = points[0];
		triangles[2].q = points[2];
		triangles[2].r = points[3];
		
		triangles[3].p = points[1];
		triangles[3].q = points[2];
		triangles[3].r = points[3];
		colors[0] = {r:255, g:0, b:0};
		colors[1] = {r:0, g:255, b:0};	
		colors[2] = {r:0, g:0, b:0255};	
		colors[3] = {r:255, g:255, b:255};	
		
		// initial_values
		tb_ready_for_data = 0;
		tb_tri_ready = 0;
		tb_new_frame = 0;

		$display("Resetting GPU.");	
		// reset
		tb_n_rst = 1;
		#DELAY;
		tb_n_rst = 0;
		#DELAY;
		tb_n_rst = 1;
		#DELAY;

		tb_new_frame = 1;
		@(posedge tb_clk);
		tb_new_frame = 0;

		for(test = 0; test < NUM_TRIANGLES; test++) begin
			// setup current values
			tb_triangle = triangles[test];
			tb_color = colors[test];
			$display("Starting round.");	
			// begin
			tb_tri_ready = 1;
			@(posedge tb_tri_read);
			tb_tri_ready = 0;

			// wait for completion
			@(posedge tb_cf_done);
							
		end
		
		tb_new_frame = 1;
		@(posedge tb_clk);
		tb_new_frame = 0;
		
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
		fp = $fopen("gpu.ppm", "w");
		$fwrite(fp, "P3\n");
		$fwrite(fp, "# Wireframe and Colorfill\n");
		$fwrite(fp, "%d %d\n", `WIDTH, `HEIGHT);
		$fwrite(fp, "255\n");
		for(i = 0; i < `HEIGHT; i++) begin
			for(j = 0; j < `WIDTH-1; j++) begin
			//	tc = image_data[i*`WIDTH+j];		
			//	$fwrite(fp, "%d %d %d ", tc.r, tc.g, tc.b);
			//end
			//tc = image_data[i*`WIDTH+j];		
			//$fwrite(fp, "%d %d %d\n", tc.r, tc.g, tc.b);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][23:16]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][15:8]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][7:0]); // need to write r g b				
			end
			$fwrite(fp, "%d ", image_data[i*`WIDTH+j][23:16]);
			$fwrite(fp, "%d ", image_data[i*`WIDTH+j][15:8]);
			$fwrite(fp, "%d\n", image_data[i*`WIDTH+j][7:0]); // need to write r g b	
		
		
		end
		$fclose(fp);
		$display("File written.");

	end

endmodule
