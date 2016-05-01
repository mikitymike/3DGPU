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
	localparam FRAME_START = 32'd0;
   	localparam FRAME_END = 32'd1;


	reg tb_clk;
	reg tb_n_rst;
	// Triangle3D tb_triangle;
	// Color tb_color;
	// reg tb_tri_ready;
	// reg tb_tri_read;
	reg tb_cf_done;
	reg tb_new_frame;
	
	reg tb_transfer_done;
	reg tb_ready_for_data;
	reg [31:0] tb_data_out;

	reg [31:0] tb_ahb_buffer;
	reg tb_ahb_data_available;
	reg tb_ahb_user_read_buffer;

	gpu DUT
		(
			.clk(tb_clk),
			.n_rst(tb_n_rst),
			//.triangle(tb_triangle),
			//.color(tb_color),
			//.tri_ready(tb_tri_ready),
			//.tri_read(tb_tri_read),
			.cf_done(tb_cf_done),
			.new_frame(tb_new_frame),
			
			.transfer_done(tb_transfer_done),
			.ready_for_data(tb_ready_for_data),
			.data_out(tb_data_out),

			.ahb_buffer(tb_ahb_buffer),
			.ahb_data_available(tb_ahb_data_available),
			.ahb_user_read_buffer(tb_ahb_user_read_buffer)
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
	
	/* From clip and split tb */
	task ahb_send_word;
	      input logic [31:0] word_val;
	      begin
		 tb_ahb_buffer = word_val;
		 tb_ahb_data_available = 1'b1;
	      end
	   endtask // send_byte

	   task send_frame_start;
	      ahb_send_word(FRAME_START);
	   endtask // ahb_send_word

	   task send_frame_end;
	      ahb_send_word(FRAME_END);
	   endtask // ahb_send_word
			  
	   task send_triangle;
	      
	      input Triangle3D otri;
	      input Color ocol;
	      
	      logic [31:0] triangle_vector [6];

	      triangle_vector[0] = ((32'h0000FFFF) & otri.p.x) | (otri.p.y<<16);
	      triangle_vector[1] = ((32'h0000FFFF) & otri.p.z) | (otri.q.x<<16);
	      triangle_vector[2] = ((32'h0000FFFF) & otri.q.y) | (otri.q.z<<16);
	      triangle_vector[3] = ((32'h0000FFFF) & otri.r.x) | (otri.r.y<<16);
	      triangle_vector[4] = ((32'h0000FFFF) & otri.r.z) | (((32'h000000FF) & ocol.r)<<16) | (((32'h000000FF) & ocol.g)<<24);
	      triangle_vector[5] = (32'h000000FF) & ocol.b;


	      begin
		 
		 for(i = 0; i < 6; i = i + 1) begin
		    // tb_test_case += 1;
		    tb_ahb_buffer = triangle_vector[i];
		    tb_ahb_data_available = 1'b1;
		    // tb_expected_triangle_ready = 1'b0;
		    // tb_expected_ahb_user_read_buffer = 1'b1;
		    // if(i==5) begin
		    //    tb_expected_triangle_ready = 1'b1;
		    //    tb_expected_ahb_user_read_buffer = 1'b0;
		    // end
		    // if(oob)
		    //   tb_expected_triangle_ready = 1'b0;
		    
		    @(negedge tb_clk);
		    // check_flags(tb_expected_triangle_ready,tb_expected_ahb_user_read_buffer);
		    tb_ahb_data_available = 1'b0;
		 end // for (i=0; i<6; i=i+1)
	      end
	   endtask // for

	Triangle3D triangles [4];
	Color colors [4];
	Point3D points [4];

	integer triangle_count = 0;

	always @(posedge tb_clk) begin
		if(tb_cf_done) begin
			triangle_count += 1;
			$display("Triangle drawn.");
		end
	end
	
	initial begin
		$display("Intializing triangle values.");	
		// init triangles and colors	
		/*
		points[0] = {x:`WIDTH/2, y:`HEIGHT/2-30, z:50};
		points[1] = {x:`WIDTH/2-100, y:`HEIGHT/2, z:30};
		points[2] = {x:`WIDTH/2+100, y:`HEIGHT/2, z:30};
		points[3] = {x:`WIDTH/2, y:`HEIGHT/4, z:40};
		*/
		points[0] = {x:`WIDTH/2, y:`HEIGHT-50, z:50};
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
		colors[2] = {r:0, g:0, b:255};	
		colors[3] = {r:255, g:255, b:255};	
			
		// initial_values
		tb_ready_for_data = 0;
		tb_ahb_buffer = 0;
	   	tb_ahb_data_available = 0;

		// tb_tri_ready = 0;
		// tb_new_frame = 0;
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

		$display("Sending start frame.");	
		
		@(negedge tb_clk);
		send_frame_start();
		@(negedge tb_clk);
		// tb_ahb_data_available = 1;
		// @(posedge tb_ahb_user_read_buffer);
		tb_ahb_data_available = 0;
	
		//$display("%x", colors[0]);
		
		// send_triangle(triangles[0], colors[0]);
		// @(negedge tb_clk);
		// while(tb_ahb_user_read_buffer != 1) begin
		//		@(posedge tb_clk);
		// end

		@(negedge tb_clk);
		for(test = 0; test < NUM_TRIANGLES; test++) begin
			$display("Sending Triangle.");	
			// @(negedge tb_clk);
			send_triangle(triangles[test], colors[test]);
			@(negedge tb_clk);
			tb_ahb_data_available = 1;
			if(test != NUM_TRIANGLES-1) begin
				while(tb_ahb_user_read_buffer != 1) begin
					@(negedge tb_clk);
				end
			end
			else begin
				$display("Sending end frame.");	
				send_frame_end();
				@(negedge tb_clk);
			end
		end
		
	
		// send_frame_end();
		// @(negedge tb_clk);
		
		
		while(triangle_count != NUM_TRIANGLES) begin
			@(posedge tb_clk);
		end
		
		tb_ahb_data_available = 0;
		
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
		tb_ready_for_data = 0;
		$display("Frame buffer transfer complete.");
		
		// write data to file
		$display("Writing data to file.");
		fp = $fopen("gpu.ppm", "w");
		// ppm header
		$fwrite(fp, "P3\n");
		$fwrite(fp, "# Wireframe and Colorfill\n");
		$fwrite(fp, "%d %d\n", `WIDTH, `HEIGHT);
		$fwrite(fp, "255\n");
		
		for(i = 0; i < `HEIGHT; i++) begin
			for(j = 0; j < `WIDTH-1; j++) begin
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][23:16]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][15:8]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][7:0]);
			end
			$fwrite(fp, "%d ", image_data[i*`WIDTH+j][23:16]);
			$fwrite(fp, "%d ", image_data[i*`WIDTH+j][15:8]);
			$fwrite(fp, "%d\n", image_data[i*`WIDTH+j][7:0]);
		end
		$fclose(fp);
		$display("File written.");
	end
endmodule
