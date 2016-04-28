// $Id: $
// File name:   tb_cs_stack.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: test banch for cs_stack
`timescale 1ns / 10ps
`include "defines_package.vh"

module tb_cs_stack();
      
   // Define parameters
   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   logic tb_clk;
   logic tb_n_rst;
   Triangle3D tb_tri_in;
   logic tb_push;
   logic tb_pop;
   longint i;
   longint err_count;
      	
   // DUT outputs
   Triangle3D tb_tri_out;
   logic tb_empty;
   logic tb_full;   
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   Triangle3D data_test_vector [7:0];
   
   // Test case expected output values for the test case
   Triangle3D         tb_expected_tri_out;
   
   // DUT portmap
   cs_stack DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .tri_in(tb_tri_in),
      .tri_out(tb_tri_out),
      .push(tb_push),
      .pop(tb_pop),
      .empty(tb_empty),
      .full(tb_full)
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
   
   task check_triangle;
      input Triangle3D e_tri;

      begin
	 assert(e_tri==tb_tri_out)
	   $info("Test case %0d: Correct tri_out", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect tri_out Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri, tb_tri_out);
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
	     
	     tb_tri_in.p.x = 0;
	     tb_tri_in.p.y = 0;
	     tb_tri_in.p.z = 0;
	     tb_tri_in.q.x = 0;
	     tb_tri_in.q.y = 0;
	     tb_tri_in.q.z = 0;
	     tb_tri_in.r.x = 0;
	     tb_tri_in.r.y = 0;
	     tb_tri_in.r.z = 0;
	     
	     tb_push = 1'b0;
	     tb_pop = 1'b0;
	   	   
	     // Test case 0: Basic Power on Reset
	     tb_test_case = 0;
	     
	     // DUT Reset
	     reset_dut;

	     for(i=0; i < 8; i++) begin
		data_test_vector[i] = {{10*i+i,20*i+2*i,30*i+3*i},{i,2*i,4*i},{8*i,6*i,7*i}};
	     end
	     
	     tb_test_case += 1;
	     
	     tb_expected_tri_out = '0;
	     
	     @(negedge tb_clk);
	     
	     check_triangle(tb_expected_tri_out);

	     tb_push = 1;

	     for(i=0; i < 8; i++) begin		
		tb_tri_in = data_test_vector[i];
		@(negedge tb_clk);
	     end

	     tb_push = 0;
	     
	     tb_pop = 1;
	     
	     for(i=0; i < 8; i++) begin		
		tb_expected_tri_out = data_test_vector[7-i];
		@(negedge tb_clk);
		check_triangle(tb_expected_tri_out);
	     end

	     
	     $info("Error Count: %0d", err_count);
	end // block: TEST_", tb_test_case);
endmodule
