// $Id: $
// File name:   tb_texel_assembler.sv
// Created:     4/21/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Texel Assembler Test Bench

`timescale 1ns / 10ps
`include "defines_package.vh"

module tb_texel_assembler();
      
   // Define parameters
   parameter FRAME_START = 32'd0;
   parameter FRAME_END = 32'd1;

   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   reg tb_clk;
   reg tb_n_rst;
   reg [31:0] tb_ahb_buffer;
   reg 	      tb_ahb_data_available;
   reg 	      tb_texel_read;
   integer i;
   	
   // DUT outputs
   wire    tb_ahb_user_read_buffer;
   wire [167:0] tb_texel_buffer;
   Triangle3D         tb_texel_vertices_out;
   Color              tb_texel_color_out;
   wire 	tb_texel_ready;
   
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   reg [31:0] data_test_vector [7:0];
   
   // Test case expected output values for the test case
   reg 	      tb_expected_ahb_user_read_buffer;
   Triangle3D         tb_expected_texel_vertices_out;
   Color              tb_expected_texel_color_out;
   reg 	       tb_expected_texel_ready;
   reg [167:0] texel_word;
   
   // DUT portmap
   texel_assembler DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .ahb_buffer(tb_ahb_buffer),
      .ahb_data_available(tb_ahb_data_available),
      .texel_read(tb_texel_read),
      .ahb_user_read_buffer(tb_ahb_user_read_buffer),
      .texel_vertices_out(tb_texel_vertices_out),
      .texel_color_out(tb_texel_color_out),
      .texel_ready(tb_texel_ready)
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
   
   task check_texel;
      input Triangle3D expected_texel_vertices_out;
      input Color expected_texel_color_out;
      			  
      begin
	 assert(tb_expected_texel_vertices_out == tb_texel_vertices_out)
	   $info("Test case %0d: Correct texel_vertices Output", tb_test_case);
	 else begin
            $error("Test case %0d: Incorrect texel_vertices Output", tb_test_case);
	    $error("Expected %0d, got %0d", tb_expected_texel_vertices_out, tb_texel_vertices_out);
	 end
	 
	 assert(tb_expected_texel_color_out == tb_texel_color_out)
	   $info("Test case %0d: Correct texel_color Output", tb_test_case);
         else begin
	    $error("Test case %0d: Incorrect texel_color Output", tb_test_case);
	    $error("Expected %0d, got %0d", tb_expected_texel_color_out, tb_texel_color_out);
	 end
      end
   endtask

   task check_flags;
      input 		expected_texel_ready;
      input 		expected_ahb_user_read_buffer;

      begin
	 assert(expected_texel_ready == tb_texel_ready)
	   $info("Test case %0d: Correct texel_ready Output", tb_test_case);
	 else begin
	    $error("Test case %0d: Incorrect texel_ready Output", tb_test_case);
	    $error("Expected %0d, got %0d", expected_texel_ready, tb_texel_ready);
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
	   tb_texel_read = '0;
	   	   
	   // Test case 0: Basic Power on Reset
	   tb_test_case = 0;
	   
	   // Define expected ouputs for this test case
	   // Note: expected outputs should all be inactive/idle values
	   // For a good packet RX Data value should match data sent

	   // DUT Reset
	   reset_dut;
	  	  
	   //Main Tests
	   @(negedge tb_clk);
	   
	   data_test_vector = {FRAME_START, 32'h33221100, 32'h77665544, 32'hBBAA9988, 32'hFFEEDDCC, 32'h76543210, 32'hFEDBCA98, FRAME_END};
	   
	   tb_expected_texel_vertices_out.p.x = data_test_vector[6][15:0];
	   tb_expected_texel_vertices_out.p.y = data_test_vector[6][31:16];
	   tb_expected_texel_vertices_out.p.z = data_test_vector[5][15:0];
	   
	   tb_expected_texel_vertices_out.q.x = data_test_vector[5][31:16];
	   tb_expected_texel_vertices_out.q.y = data_test_vector[4][15:0];
	   tb_expected_texel_vertices_out.q.z = data_test_vector[4][31:16];
   
	   tb_expected_texel_vertices_out.r.x = data_test_vector[3][15:0];
	   tb_expected_texel_vertices_out.r.y = data_test_vector[3][31:16];
	   tb_expected_texel_vertices_out.r.z = data_test_vector[2][15:0];
   
	   tb_expected_texel_color_out.r = data_test_vector[2][23:16];
	   tb_expected_texel_color_out.g = data_test_vector[2][31:24];
	   tb_expected_texel_color_out.b = data_test_vector[1][7:0];
	   
	   for(i=0; i<8; i=i+1) begin
	      tb_test_case += 1;
	      tb_ahb_buffer = data_test_vector[7-i];
	      tb_ahb_data_available = 1'b1;
	      tb_expected_texel_ready = 1'b0;
	      tb_expected_ahb_user_read_buffer = 1'b1;
	      if(i==7) begin
		 tb_expected_texel_ready = 1'b1;
		 tb_expected_ahb_user_read_buffer = 1'b0;
	      end
	      check_flags(tb_expected_texel_ready,tb_expected_ahb_user_read_buffer);
	      @(negedge tb_clk);
	   end
	   
	   check_texel(tb_expected_texel_vertices_out, tb_expected_texel_color_out);
	   tb_expected_texel_ready = 1'b1;
	   tb_expected_ahb_user_read_buffer = 1'b0;
	   check_flags(tb_expected_texel_ready,tb_expected_ahb_user_read_buffer);

	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   
	   check_flags(tb_expected_texel_ready,tb_expected_ahb_user_read_buffer);
	   
	   tb_texel_read = 1'b1;
	   	   
	   @(negedge tb_clk);

	   tb_texel_read = 1'b0;
	   
	   tb_expected_texel_ready = 1'b0;
	   tb_expected_ahb_user_read_buffer = 1'b1;
	   check_flags(tb_expected_texel_ready,tb_expected_ahb_user_read_buffer);	   
	end // block: TEST_PROC
   
endmodule
