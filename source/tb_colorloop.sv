`timescale 1ns / 10ps


`include "defines_package.vh"



module tb_colorloop
();
	localparam CLK_PERIOD = 20;
	localparam DELAY = 6;

	integer fp;

	

	//input wire [`LAYER_SIZE] zbuf_val,
	//input wire sram_val,
	//input wire clk,
	//input wire n_rst,
	//input shortint height,
	//input Color rgb_val,
	//input Triangle3D ver,
	//input wire color_en,
	//output reg done,
	//output reg [`WIREFRAME_ADDR_SIZE] sram_addr,
	//output reg [`SRAM_ADDR_SIZE] zbuf_addr,
	//output reg [`FB_ADDR_SIZE] fb_addr,
	//output reg write_en,
	//output reg [`LAYER_SIZE] data_out,
	//output Color data_out_color


	//INPUTS
	reg tb_clk;
	reg tb_n_rst;
	reg tb_start;
	Triangle3D tb_i_triangle;
	reg [(`LAYER_SIZE-1):0] tb_zbuf_val;
	reg tb_sram_val;
	shortint tb_height;
	Color tb_rgb_val;
	//OUTPUTS
	reg tb_done;
	reg [(`WIREFRAME_ADDR_SIZE-1):0] tb_sram_addr;
	reg [(`SRAM_ADDR_SIZE-1):0] tb_zbuf_addr;
	reg [(`FRAME_BUFFER_ADDR_SIZE-1):0] tb_fb_addr;
	reg tb_write_en;
	reg [(`LAYER_SIZE-1):0] tb_data_out;
	Color tb_data_out_color;


	reg [(`COLOR_BITS-1):0] image_data [`WIDTH*`HEIGHT]; //could not use integer
	reg [(`LAYER_SIZE-1):0] zbuffer_data [`WIDTH*`HEIGHT];
	reg wireframe_data[`WIDTH*`HEIGHT];
	integer i, j;

	integer ch,fpr;

	integer zfp;
	

	always begin
		tb_clk = 0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1;
		#(CLK_PERIOD/2.0);
	end

	colorloop DUT
		(
			.zbuf_val(tb_zbuf_val),
			.sram_val(tb_sram_val),
			.clk(tb_clk),
			.n_rst(tb_n_rst),
			.height(tb_height),
			.rgb_val(tb_rgb_val),
			.ver(tb_i_triangle),
			.color_en(tb_start),
			.done(tb_done),
			.sram_addr(tb_sram_addr),
			.zbuf_addr(tb_zbuf_addr),
			.fb_addr(tb_fb_addr),
			.write_en(tb_write_en),
			.data_out(tb_data_out),
			.data_out_color(tb_data_out_color)
		);
	
	always @(posedge tb_clk) begin
		if(tb_write_en) begin
			image_data[tb_fb_addr] = {tb_data_out_color.r, tb_data_out_color.g, tb_data_out_color.b};
			zbuffer_data[tb_zbuf_addr] = tb_data_out;

		end
		tb_sram_val = wireframe_data[tb_sram_addr];
		tb_zbuf_val = zbuffer_data[tb_zbuf_addr];
	end
	
	initial begin
		tb_n_rst = 1;
		#DELAY;
		tb_n_rst = 0;
		#DELAY;
		tb_n_rst = 1;
		$display("Opening file.\n");
		fp = $fopen("fill.ppm", "w");
		$fwrite(fp, "P3\n");
		$fwrite(fp, "# 3D fill\n");
		$fwrite(fp, "%d %d\n", `WIDTH, `HEIGHT);
		$fwrite(fp, "%d\n", 255);
		
		$display("Copying wireframe into array.\n");
		fpr = $fopen("wireframe1.ppm", "r");
		ch = $fgetc(fpr);
		
		$display("Initializing image data.\n");
		for(i = 0; i < `WIDTH*`HEIGHT; i++) begin
			image_data[i] = '1;
			zbuffer_data[i] = '0;
		end


		//for(i = 0; i < `WIDTH*`HEIGHT; i++) begin
		//	wireframe_data[i] = 0;
		//end
		i=0;
		while(ch != 32'hFFFF_FFFF)
		begin
			if(ch == "1") begin
				wireframe_data[i] = 1;
				i = i+1;
			end
			else if(ch == "0") begin
				wireframe_data[i] = 0;
				i = i+1;
			end
			//i = i+1;
			ch = $fgetc(fpr);
			
		end
		$fclose(fpr);		

		tb_i_triangle.p.x = 0;
		tb_i_triangle.p.y = 0;
		tb_i_triangle.p.z = 100;
		
		tb_i_triangle.q.x = 0;
		tb_i_triangle.q.y = `HEIGHT-1;
		tb_i_triangle.q.z = 100;

		tb_i_triangle.r.x = `WIDTH-1;
		tb_i_triangle.r.y = `HEIGHT-1;
		tb_i_triangle.r.z = 100;

		tb_rgb_val.r = 255;
		tb_rgb_val.g = 25;
		tb_rgb_val.b = 12;

/*		tb_i_triangle.p.x = 100;
		tb_i_triangle.p.y = 100;
		tb_i_triangle.p.z = 30;
		
		tb_i_triangle.q.x = 400;
		tb_i_triangle.q.y = 400;
		tb_i_triangle.q.z = 10;

		tb_i_triangle.r.x = 50;
		tb_i_triangle.r.y = 300;
		tb_i_triangle.r.z = 20;

		tb_rgb_val.r = 255;
		tb_rgb_val.g = 25;
		tb_rgb_val.b = 12;
*/

		tb_start = 0;
		tb_height = 0;


		tb_n_rst = 1;
		#DELAY;
		tb_n_rst = 0;
		#DELAY;
		tb_n_rst = 1;
		#DELAY;
		#DELAY;
		#DELAY;
		#DELAY;
		#DELAY;
		$display("Starting process.\n");	
		@(posedge tb_clk);
		tb_start = 1;

		//@(posedge tb_done);
		//tb_height = 4;
		

		//@(posedge tb_done);
		//tb_height = 8;
		@(posedge tb_done);
		tb_start = 0;
		
		

		$display("Copying wireframe2 into array.\n");
		fpr = $fopen("wireframe.ppm", "r");
		ch = $fgetc(fpr);

		i=0;
		while(ch != 32'hFFFF_FFFF)
		begin
			if(ch == "1") begin
				wireframe_data[i] = 1;
				i = i+1;
			end
			else if(ch == "0") begin
				wireframe_data[i] = 0;
				i = i+1;
			end
			//i = i+1;
			ch = $fgetc(fpr);
			
		end
		$fclose(fpr);

		tb_i_triangle.p.x = 100;
		tb_i_triangle.p.y = 100;
		tb_i_triangle.p.z = 30;
		
		tb_i_triangle.q.x = 400;
		tb_i_triangle.q.y = 400;
		tb_i_triangle.q.z = 30;

		tb_i_triangle.r.x = 50;
		tb_i_triangle.r.y = 300;
		tb_i_triangle.r.z = 150;

		tb_rgb_val.r = 25;
		tb_rgb_val.g = 255;
		tb_rgb_val.b = 12;


		tb_start = 0;
		tb_height = 0;

		tb_n_rst = 1;
		#DELAY;
		tb_n_rst = 0;
		#DELAY;
		tb_n_rst = 1;
		#DELAY;
		#DELAY;
		#DELAY;
		#DELAY;
		#DELAY;
		$display("Starting process2.\n");

		@(posedge tb_clk);
		tb_start = 1;


		@(posedge tb_done);
		tb_start = 0;
		
		$display("Writing to file.\n");	
		for(i = 0; i < `HEIGHT; i++) begin
			for(j = 0; j < `WIDTH-1; j++) begin
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][23:16]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][15:8]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][7:0]); // need to write r g b				
			end
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][23:16]);
				$fwrite(fp, "%d ", image_data[i*`WIDTH+j][15:8]);
				$fwrite(fp, "%d\n", image_data[i*`WIDTH+j][7:0]); // need to write r g b		
		end

		$fclose(fp);

		zfp = $fopen("zbuffer.ppm", "w");
		$fwrite(zfp, "P2\n");
		$fwrite(zfp, "# 3D fill\n");
		$fwrite(zfp, "%d %d\n", `WIDTH, `HEIGHT);
		$fwrite(zfp, "%d\n", 255);
		
		for(i = 0; i < `HEIGHT; i++) begin
			for(j = 0; j < `WIDTH-1; j++) begin
				$fwrite(zfp, "%d ", zbuffer_data[i*`WIDTH+j]);
			end
			$fwrite(zfp, "%d\n", zbuffer_data[i*`WIDTH+j]);
		end

		$fclose(zfp);
	end
endmodule
