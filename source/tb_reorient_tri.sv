// $Id: $
// File name:   tb_reorient_tri.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: test bench for triangle reorient

`timescale 1ns / 10ps
`include "defines_package.vh"

module tb_reorient_tri();
      
   // Define parameters
   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   logic tb_clk;
   logic tb_n_rst;
   Triangle3D tb_tri_in;
   Triangle3D tb_tri_buff;
   longint i;
   longint err_count;
   
   longint dist1;
   longint dist2;
   longint dist3;
   logic [1:0] maxdist;
	
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
   reorient_tri DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .tri_in(tb_tri_in),
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
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.p.y-tb_tri_out.p.y)) < 2)
	   $info("Test case %0d: Correct p.y", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect p.y Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.p.y, tb_tri_out.p.y);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.p.z-tb_tri_out.p.z)) < 2)
	   $info("Test case %0d: Correct p.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect p.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.p.z, tb_tri_out.p.z);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.q.x-tb_tri_out.q.x)) < 2)
	   $info("Test case %0d: Correct q.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect q.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.q.x, tb_tri_out.q.x);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.q.y-tb_tri_out.q.y)) < 2)
	   $info("Test case %0d: Correct q.y", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect q.y Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.q.y, tb_tri_out.q.y);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.q.z-tb_tri_out.q.z)) < 2)
	   $info("Test case %0d: Correct q.z", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect q.z Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.q.z, tb_tri_out.q.z);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.r.x-tb_tri_out.r.x)) < 2)
	   $info("Test case %0d: Correct r.x", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect r.x Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.r.x, tb_tri_out.r.x);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.r.y-tb_tri_out.r.y)) < 2)
	   $info("Test case %0d: Correct r.y", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect r.y Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.r.y, tb_tri_out.r.y);
	    err_count++;
	 end // UNMATCHED !!
	 assert((16'h7FFF&(e_tri.r.z-tb_tri_out.r.z)) < 2)
	   $info("Test case %0d: Correct r.z", tb_test_case);
         else begin
            $error("Test case %0d: Incorrect r.z Output", tb_test_case);
	    $error("Expected %0d, got %0d", e_tri.r.z, tb_tri_out.r.z);
	    err_count++;
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
	     err_count = 0;
	     	   
	   // Initilize all inputs to inactive/idle values
	   tb_n_rst = 1'b1; // Initially inactive

	   tb_tri_buff.p.x = 0;
	   tb_tri_buff.p.y = 0;
	   tb_tri_buff.p.z = 0;
	   tb_tri_buff.q.x = 0;
	   tb_tri_buff.q.y = 0;
	   tb_tri_buff.q.z = 0;
	   tb_tri_buff.r.x = 0;
	   tb_tri_buff.r.y = 0;
	   tb_tri_buff.r.z = 0;
	   
	   	   
	   // Test case 0: Basic Power on Reset
	   tb_test_case = 0;
	   
	   // Define expected ouputs for this test case
	   // Note: expected outputs should all be inactive/idle values
	   // For a good packet RX Data value should match data sent

	   // DUT Reset
	   reset_dut;

	   for(i=0; i<1001; i++) begin
	      tb_test_case += 1;
	
	      if(i == 1000) begin
		 tb_tri_buff.p.x = -(2**14 - 1);
		 tb_tri_buff.p.y = -(2**14 - 1);
		 tb_tri_buff.p.z = -(2**14 - 1);
		 tb_tri_buff.q.x = (2**14 - 1);
		 tb_tri_buff.q.y = (2**14 - 1);
		 tb_tri_buff.q.z = (2**14 - 1);
		 tb_tri_buff.r.x = -(2**14 - 1);
		 tb_tri_buff.r.y = (2**14 - 1);
		 tb_tri_buff.r.z = -(2**14 - 1);
	      end
	      else begin
		 tb_tri_buff.p.x = -(10 + 2*i);
		 tb_tri_buff.p.y = -(3 + 30*i);
		 tb_tri_buff.p.z = -(23 + 5*i);
		 tb_tri_buff.q.x = 16 + 7*i;
		 tb_tri_buff.q.y = 32 + 32*i;
		 tb_tri_buff.q.z = 9 * i;
		 tb_tri_buff.r.x = -(3 + 32*i);
		 tb_tri_buff.r.y = 6 * (i+456)/i;
		 tb_tri_buff.r.z = -((8 * i) + (1000/i));
	      end // else: !if(i == 1000)
	      
	      //Main Tests
	      @(negedge tb_clk);
	      
	      dist1 = ((((tb_tri_buff.p.x-tb_tri_buff.q.x)**2) + ((tb_tri_buff.p.y-tb_tri_buff.q.y)**2)));
	      dist2 = ((((tb_tri_buff.q.x-tb_tri_buff.r.x)**2) + ((tb_tri_buff.q.y-tb_tri_buff.r.y)**2)));
	      dist3 = ((((tb_tri_buff.r.x-tb_tri_buff.p.x)**2) + ((tb_tri_buff.r.y-tb_tri_buff.p.y)**2)));


	      maxdist = (dist1 > dist2) ? ((dist1 > dist3) ? 2'd1 : 2'd3) : ((dist2 > dist3) ? 2'd2 : 2'd3);

/*	      if((dist1 > dist2) && (dist1 > dist3)) begin
		 maxdist = 2'd1;
	      end
	      else begin
		 if((dist2 > dist1) && (dist2 > dist3)) begin
		    maxdist = 2'd2;
		 end
		 else begin
		    maxdist = 2'd3;
		 end
	      end*/
	      
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
	      
	      
	      tb_expected_tri_out.r = tb_tri_in.r;
	      
	      

	   end // for (i=0; i<100; i++)

	     $info("Error Count: %0d", err_count);
	end // block: TEST_", tb_test_case);
endmodule
