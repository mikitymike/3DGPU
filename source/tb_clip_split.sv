// $Id: $
// File name:   tb_clip_split.sv
// Created:     4/30/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: test bench for clip and split top level module

`timescale 1ns / 10ps
`include "defines_package.vh"
`include "clip_defines.vh"

module tb_clip_split();
      
   // Define parameters
   parameter FRAME_START = 32'd0;
   parameter FRAME_END = 32'd1;

   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   logic tb_clk;
   logic tb_n_rst;
   logic [31:0] tb_ahb_buffer;
   logic 	tb_ahb_data_available;
   logic 	tb_triangle_read;
   integer 	i;
   logic 	oob;
   
   // DUT outputs
   logic 	tb_ahb_user_read_buffer;
   Triangle3D         tb_triangle_vertices_out;
   Color              tb_triangle_color_out;
   logic 	tb_triangle_ready;
   
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   logic [31:0] data_test_vector [7:0];
   Triangle3D test_triangle;
      
   // Test case expected output values for the test case
   reg 	      tb_expected_ahb_user_read_buffer;
   Triangle3D         tb_expected_triangle_vertices_out;
   Color              tb_expected_triangle_color_out;
   reg 	       tb_expected_triangle_ready;
   reg [167:0] triangle_word;
   
   // DUT portmap
   clip_split DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .ahb_buffer(tb_ahb_buffer),
      .ahb_data_available(tb_ahb_data_available),
      .triangle_read(tb_triangle_read),
      .ahb_user_read_buffer(tb_ahb_user_read_buffer),
      .triangle_vertices_out(tb_triangle_vertices_out),
      .triangle_color_out(tb_triangle_color_out),
      .triangle_ready(tb_triangle_ready)
      );
   
  
   task reset_dut;
      begin
	 // Activate the design's reset (does not need to be synchronize with clock)
	 tb_n_rst = 1'b0;
	 
	 // Wait for a couple clock cycles
	 @(posedge tb_clk);
	 @(posedge tb_clk);
	 
	 // Release the reset
	 @(negedge tb_clk);
	 tb_n_rst = 1;
	 
	 // Wait for a while before activating the design
	 @(posedge tb_clk);
	 @(posedge tb_clk);
	 @(posedge tb_clk);
	 @(posedge tb_clk);
	 @(posedge tb_clk);
      end
   endtask // reset_dut
   
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
  	 for(i=0; i<6; i=i+1) begin
	    tb_test_case += 1;
	    tb_ahb_buffer = triangle_vector[i];
	    tb_ahb_data_available = 1'b1;
	    tb_expected_triangle_ready = 1'b0;
	    tb_expected_ahb_user_read_buffer = 1'b1;
	    if(i==7) begin
	       tb_expected_triangle_ready = 1'b1;
	       tb_expected_ahb_user_read_buffer = 1'b0;
	    end
	    if(oob)
	      tb_expected_triangle_ready = 1'b0;
	    check_flags(tb_expected_triangle_ready,tb_expected_ahb_user_read_buffer);
	    @(negedge tb_clk);
	 end // for (i=0; i<6; i=i+1)
      end
   endtask // for
   
   
      
   task check_texel;
      input Triangle3D expected_texel_vertices_out;
      input Color expected_texel_color_out;
      			  
      begin
	 assert(expected_texel_vertices_out == tb_triangle_vertices_out) begin
	    $info("Test case %0d: Correct texel_vertices Output", tb_test_case);
	    $info("Expected %0d, got %0d", expected_texel_vertices_out, tb_triangle_vertices_out);
	 end
	 else begin
            $error("Test case %0d: Incorrect texel_vertices Output", tb_test_case);
	    $error("Expected %0d, got %0d", expected_texel_vertices_out, tb_triangle_vertices_out);
	 end
	 
	 assert(expected_texel_color_out == tb_triangle_color_out)begin
	   $info("Test case %0d: Correct texel_color Output", tb_test_case);
	    $info("Expected %0d, got %0d", expected_texel_vertices_out, tb_triangle_vertices_out);
	 end
         else begin
	    $error("Test case %0d: Incorrect texel_color Output", tb_test_case);
	    $error("Expected %0d, got %0d", expected_texel_color_out, tb_triangle_color_out);
	 end
      end
   endtask

   task check_flags;
      input 		expected_texel_ready;
      input 		expected_ahb_user_read_buffer;

      begin
	 assert(expected_texel_ready == tb_triangle_ready)
	   $info("Test case %0d: Correct texel_ready Output", tb_test_case);
	 else begin
	    $error("Test case %0d: Incorrect texel_ready Output", tb_test_case);
	    $error("Expected %0d, got %0d", expected_texel_ready, tb_triangle_ready);
	 end
	 
	 assert(expected_ahb_user_read_buffer == tb_ahb_user_read_buffer)
	   $info("Test case %0d: Correct read_buffer Output", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect read_buffer Output", tb_test_case);
            $error("Expected %0d, got %0d", expected_ahb_user_read_buffer, tb_ahb_user_read_buffer);
         end
      end
   endtask
   
	always
	begin : CLK_GEN
		tb_clk = 1'b0;
		#(CLK_PERIOD / 2);
		tb_clk = 1'b1;
		#(CLK_PERIOD / 2);
	end

	// Actual test bench process
	initial
	begin : TEST_PROC
	   
	   // Initilize all inputs to inactive/idle values
	   tb_n_rst = '1; // Initially inactive
	   tb_ahb_buffer = '0;
	   tb_ahb_data_available = '0;
	   tb_triangle_read = '0;
	   	   

	   oob = 0;
	   		
	   // Test case 0: Basic Power on Reset
	   tb_test_case = 0;
	   
	   // Define expected ouputs for this test case
	   // Note: expected outputs should all be inactive/idle values
	   // For a good packet RX Data value should match data sent

	   // DUT Reset
	   reset_dut;
	  	  
	   //Main Tests
	   @(negedge tb_clk);
	   
	   data_test_vector = {FRAME_START, 32'h33221100, 32'h77665544, 32'hBBAA9988, 32'hFFEEDDCC, 32'hDDFF3210, 32'hCCCCCCBB,  FRAME_END};

	   	   
	   tb_expected_triangle_vertices_out.p.x = data_test_vector[6][15:0];
	   tb_expected_triangle_vertices_out.p.y = data_test_vector[6][31:16];
	   tb_expected_triangle_vertices_out.p.z = data_test_vector[5][15:0];
	   
	   tb_expected_triangle_vertices_out.q.x = data_test_vector[5][31:16];
	   tb_expected_triangle_vertices_out.q.y = data_test_vector[4][15:0];
	   tb_expected_triangle_vertices_out.q.z = data_test_vector[4][31:16];
   
	   tb_expected_triangle_vertices_out.r.x = data_test_vector[3][15:0];
	   tb_expected_triangle_vertices_out.r.y = data_test_vector[3][31:16];
	   tb_expected_triangle_vertices_out.r.z = data_test_vector[2][15:0];
   
	   tb_expected_triangle_color_out.r = data_test_vector[2][23:16];
	   tb_expected_triangle_color_out.g = data_test_vector[2][31:24];
	   tb_expected_triangle_color_out.b = data_test_vector[1][7:0];

	   
	   if ((tb_expected_triangle_vertices_out.p.x < `XMIN) || (tb_expected_triangle_vertices_out.p.x > `XMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.p.y < `YMIN) || (tb_expected_triangle_vertices_out.p.y > `YMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.p.z < `ZMIN) || (tb_expected_triangle_vertices_out.p.z > `ZMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.q.x < `XMIN) || (tb_expected_triangle_vertices_out.q.x > `XMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.q.y < `YMIN) || (tb_expected_triangle_vertices_out.q.y > `YMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.q.z < `ZMIN) || (tb_expected_triangle_vertices_out.q.z > `ZMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.r.x < `XMIN) || (tb_expected_triangle_vertices_out.r.x > `XMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.r.y < `YMIN) || (tb_expected_triangle_vertices_out.r.y > `YMAX))
	     oob = 1;
	   if ((tb_expected_triangle_vertices_out.r.z < `ZMIN) || (tb_expected_triangle_vertices_out.r.z > `ZMAX))
	     oob = 1;

	   
	   send_frame_start();

	   @(negedge tb_clk);
  
	   send_triangle(tb_expected_triangle_vertices_out, tb_expected_triangle_color_out);
	  
	   
	   if(oob)
	     check_texel(tb_expected_triangle_vertices_out, tb_expected_triangle_color_out);

	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   
	   if(oob)
	     tb_expected_ahb_user_read_buffer = 1'b1;
	   else
	     tb_expected_ahb_user_read_buffer = 1'b0;
	   
	   check_flags(tb_expected_triangle_ready,tb_expected_ahb_user_read_buffer);

	   if(!oob) begin
	   tb_triangle_read = 1'b1;
	   	   
	   @(negedge tb_clk);

	   tb_triangle_read = 1'b0;
	   end
	   
	   tb_expected_triangle_ready = 1'b0;
	   tb_expected_ahb_user_read_buffer = 1'b1;
	   check_flags(tb_expected_triangle_ready,tb_expected_ahb_user_read_buffer);	   
	end // block: TEST_PROC
   
endmodule
