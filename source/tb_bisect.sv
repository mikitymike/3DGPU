// $Id: $
// File name:   tb_bisect.sv
// Created:     4/25/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: Triangle bisector module test bench


`timescale 1ns / 10ps
`include "defines_package.vh"

module tb_bisect();
      
   // Define parameters
   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   logic tb_clk;
   logic tb_n_rst;
   logic tb_tri_select;
   integer dist1;
   integer dist2;
   integer dist3;
   logic [1:0] maxdist;
   Triangle3D tb_tri_in;
   Triangle3D tb_tri_buff;
   longint i;
   	
   // DUT outputs
   Triangle3D tb_tri_out;
      
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   Triangle3D data_test_vector [7:0];
   
   // Test case expected output values for the test case
   Triangle3D         tb_expected_tri_out;
   
   // DUT portmap
   bisect DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .tri_in(tb_tri_in),
      .tri_select(tb_tri_select),
      .tri_out(tb_tri_out)
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
	 assert((16'h7FFF&(e_tri.p.x-tb_tri_out.p.x)) < 2)
	   $info("Test case %0d: Correct p.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect p.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.p.x, tb_tri_out.p.x);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.p.y-tb_tri_out.p.y)) < 2)
	   $info("Test case %0d: Correct p.y", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect p.y Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.p.y, tb_tri_out.p.y);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.p.z-tb_tri_out.p.z)) < 2)
	   $info("Test case %0d: Correct p.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect p.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.p.z, tb_tri_out.p.z);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.q.x-tb_tri_out.q.x)) < 2)
	   $info("Test case %0d: Correct q.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect q.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.q.x, tb_tri_out.q.x);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.q.y-tb_tri_out.q.y)) < 2)
	   $info("Test case %0d: Correct q.y", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect q.y Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.q.y, tb_tri_out.q.y);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.q.z-tb_tri_out.q.z)) < 2)
	   $info("Test case %0d: Correct q.z", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect q.z Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.q.z, tb_tri_out.q.z);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.r.x-tb_tri_out.r.x)) < 2)
	   $info("Test case %0d: Correct r.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect r.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.r.x, tb_tri_out.r.x);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.r.y-tb_tri_out.r.y)) < 2)
	   $info("Test case %0d: Correct r.y", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect r.y Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.r.y, tb_tri_out.r.y);
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.r.z-tb_tri_out.r.z)) < 2)
	   $info("Test case %0d: Correct r.z", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect r.z Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.r.z, tb_tri_out.r.z);
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

	   tb_tri_buff.p.x = 16'd115;
	   tb_tri_buff.p.y = 16'd56;
	   tb_tri_buff.p.z = 16'd0;
	   tb_tri_buff.q.x = 16'd346;
	   tb_tri_buff.q.y = 16'd850;
	   tb_tri_buff.q.z = 16'd0;
	   tb_tri_buff.r.x = 16'd310;
	   tb_tri_buff.r.y = 16'd450;
	   tb_tri_buff.r.z = 16'd0;
	   
	   tb_tri_select = 1'b0;
	   	   
	   // Test case 0: Basic Power on Reset
	   tb_test_case = 0;
	   
	   // Define expected ouputs for this test case
	   // Note: expected outputs should all be inactive/idle values
	   // For a good packet RX Data value should match data sent

	   // DUT Reset
	   reset_dut;
	  	  
	   //Main Tests
	   @(negedge tb_clk);

	   dist1 = ((((tb_tri_buff.p.x-tb_tri_buff.q.x)**2) + ((tb_tri_buff.p.y-tb_tri_buff.q.y)**2)));
	   dist2 = ((((tb_tri_buff.q.x-tb_tri_buff.r.x)**2) + ((tb_tri_buff.q.y-tb_tri_buff.r.y)**2)));
	   dist3 = ((((tb_tri_buff.r.x-tb_tri_buff.p.x)**2) + ((tb_tri_buff.r.y-tb_tri_buff.p.y)**2)));

	   if((dist1 > dist2) && (dist1 > dist3)) begin
	      maxdist = 2'd1;
	   end
	   else begin
	      if((dist2 > dist1) && (dist2 > dist3)) begin
		 maxdist = 2'd2;
	      end
	      else begin
		 maxdist = 2'd3;
	      end
	   end

	   // PQ is longest
	   if(maxdist == 2'd1) begin
	      tb_tri_in.p = tb_tri_buff.p;
	      tb_tri_in.q = tb_tri_buff.q;
	      tb_tri_in.r = tb_tri_buff.r;
	   end
	   //QR is longest
	   else if(maxdist == 2'd2) begin
	      tb_tri_in.p = tb_tri_buff.q;
	      tb_tri_in.q = tb_tri_buff.r;
	      tb_tri_in.r = tb_tri_buff.p;
	   end
	   //RP is longest
	   else begin
	      tb_tri_in.p = tb_tri_buff.r;
	      tb_tri_in.q = tb_tri_buff.p;
	      tb_tri_in.r = tb_tri_buff.q;
	   end
	   
	   tb_expected_tri_out.p = tb_tri_in.p;

	   if(tb_tri_in.p.x > tb_tri_in.q.x)
	     tb_expected_tri_out.q.x = tb_tri_in.q.x + (tb_tri_in.p.x - tb_tri_in.q.x)/2.0;
	   else
	     tb_expected_tri_out.q.x = tb_tri_in.p.x + (tb_tri_in.q.x - tb_tri_in.p.x)/2.0;

	   if(tb_tri_in.p.y > tb_tri_in.q.y)	   
	     tb_expected_tri_out.q.y = tb_tri_in.q.y + (tb_tri_in.p.y - tb_tri_in.q.y)/2.0;
	   else
	     tb_expected_tri_out.q.y = tb_tri_in.p.y + (tb_tri_in.q.y - tb_tri_in.p.y)/2.0;

	   if(tb_tri_in.p.z > tb_tri_in.q.z)	   
	     tb_expected_tri_out.q.z = tb_tri_in.q.z + (tb_tri_in.p.z - tb_tri_in.q.z)/2.0;
	   else
	     tb_expected_tri_out.q.z = tb_tri_in.p.z + (tb_tri_in.q.z - tb_tri_in.p.z)/2.0;
	   
	   tb_expected_tri_out.r = tb_tri_in.r;
	   
/*	   for(i=0; i<8; i=i+1) begin
	      tb_test_case += 1;
	      tb_ahb_buffer = data_test_vector[8-i];
	      tb_ahb_data_available = 1'b1;
	      tb_expected_texel_ready = 1'b0;
	      tb_expected_ahb_user_read_buffer = 1'b1;
	      check_flags(tb_expected_texel_ready,tb_expected_ahb_user_read_buffer);
	      @(negedge tb_clk);
	   end*/

	   @(negedge tb_clk);
	   
	   check_triangle(tb_expected_tri_out);

	   tb_expected_tri_out.p = tb_expected_tri_out.q;
	   tb_expected_tri_out.q = tb_tri_in.q;
	   tb_tri_select = 1'b1;
	   
	   
	   @(negedge tb_clk);

	   check_triangle(tb_expected_tri_out);
	end // block: TEST_PROC
   
endmodule
