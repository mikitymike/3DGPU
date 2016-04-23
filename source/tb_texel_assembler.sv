// $Id: $
// File name:   tb_texel_assembler.sv
// Created:     4/21/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Texel Assembler Test Bench

`timescale 1ns / 10ps

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
   wire 	tb_texel_ready;
   
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   reg [31:0] data_test_vector [7:0];
   
   // Test case expected output values for the test case
   reg 	      tb_expected_ahb_user_read_buffer;
   reg [167:0] tb_expected_texel_buffer;
   reg 	       tb_expected_texel_ready;
   
   // DUT portmap
   texel_assembler DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .ahb_buffer(tb_ahb_buffer),
      .ahb_data_available(tb_ahb_data_available),
      .texel_read(tb_texel_read),
      .ahb_user_read_buffer(tb_ahb_user_read_buffer),
      .texel_buffer(tb_texel_buffer),
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
   
   task check_outputs;
      input       [167:0] expected_texel_buffer;
      input 		expected_texel_ready;
      input 		expected_ahb_user_read_buffer;
      
      begin
	 assert(expected_texel_buffer == tb_texel_buffer)
	   $info("Test case %0d: Correct texel_buffer Output", tb_test_case);
         else begin
           $error("Test case %0d: Incorrect texel_buffer Output", tb_test_case);
           $error("Expected %0d, got %0d", expected_texel_buffer, tb_texel_buffer);
         end
	 
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
	   tb_n_rst = 1'b1; // Initially inactive
	   tb_ahb_buffer = 1'b0;
	   tb_ahb_data_available = 1'b0;
	   tb_texel_read = 1'b0;
	   	   
	   // Test case 0: Basic Power on Reset
	   tb_test_case = 0;
	   
	   // Define expected ouputs for this test case
	   // Note: expected outputs should all be inactive/idle values
	   // For a good packet RX Data value should match data sent

	   // DUT Reset
	   reset_dut;
	  	  
	   //Main Tests
	   @(negedge tb_clk);
	   
	   data_test_vector = {FRAME_START, 32'd1, 32'd2, 32'd3, 32'd4, 32'd5, 32'd6, FRAME_END};
	   	   	   
	   for(i=0; i<8; i=i+1) begin
	      tb_test_case += 1;
	      tb_ahb_buffer = data_test_vector[8-i];
	      tb_ahb_data_available = 1'b1;	      
	      @(negedge tb_clk);
	   end

	   check_outputs(tb_expected_texel_buffer, 1'b1, 1'b0);
	   
	   
	end // block: TEST_PROC
   
endmodule
