// $Id: $
// File name:   tb_outcode.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: testbench for outcode


`timescale 1ns / 10ps
`include "defines_package.vh"

`define INSIDE 'b0000
`define LEFT 'b0001
`define RIGHT 'b0010
`define BOTTOM 'b0100
`define TOP 'b1000
`define XMIN 0
`define XMAX 640
`define YMAX 480
`define YMIN 0

module tb_outcode();
      
   // Define parameters
   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   logic tb_clk;
   logic tb_n_rst;
   Point2D tb_p;
   longint i;
   longint err_count;
   
   // DUT outputs
   logic [3:0] tb_code;
      
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   Point2D data_test_vector [18];
   
   // Test case expected output values for the test case
   logic [3:0]         tb_expected_code;
   
   // DUT portmap
   outcode DUT
     (
      .p(tb_p),
      .code(tb_code)
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
   
   task check_code;
      input logic [3:0] expected_code;

      begin
	 assert(expected_code == tb_code)
	   $info("Test case %0d: Correct outcode", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect outcode", tb_test_case);
	    $error("Expected %0d, got %0d", expected_code, tb_code);
	    err_count++;
	 end // UNMATCHED !!
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
	err_count = 0;
	
	// Initilize all inputs to inactive/idle values
	tb_n_rst = 1'b1; // Initially inactive
	
	tb_p = '0;
	
	// Test case 0: Basic Power on Reset
	tb_test_case = 0;
	
	// Define expected ouputs for this test case
	// Note: expected outputs should all be inactive/idle values
	// For a good packet RX Data value should match data sent
	
	// DUT Reset
	reset_dut;
	
	data_test_vector = {-100,560,300,560,750,560,-100,300,300,300,750,300,-100,-100,300,-100,750,-100};
	
	@(negedge tb_clk);	   
	   for(i=0; i<9; i++) begin
	      tb_test_case += 1;
	
	      tb_p.x = data_test_vector[2*i];
	      tb_p.y = data_test_vector[2*i+1];
	      
	    	      
	      //Main Tests

	      
	      tb_expected_code = `INSIDE;          // initialised as being inside of clip window
      
	      if (tb_p.x < `XMIN)           // to the left of clip window
		tb_expected_code |= `LEFT;
	      else if (tb_p.x > `XMAX)      // to the right of clip window
		tb_expected_code |= `RIGHT;
	      
	      if (tb_p.y < `YMIN)           // below the clip window
		tb_expected_code |= `BOTTOM;
	      else if (tb_p.y > `YMAX)      // above the clip window
		tb_expected_code |= `TOP;
	      
	      @(negedge tb_clk);	   
	      check_code(tb_expected_code);
	      
	   end // for (i=0; i<100; i++)
	
	$info("Error Count: %0d", err_count);
     end // block: TEST_", tb_test_case);
endmodule
