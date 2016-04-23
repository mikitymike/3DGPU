// $Id: $
// File name:   tb_texel_assembler.sv
// Created:     4/21/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Texel Assembler Test Bench

`timescale 1ns / 10ps

module tb_usb_receiver();
      
   // Define parameters
   parameter CLK_PERIOD				= 2.5;
   parameter NORM_DATA_PERIOD	= (10 * CLK_PERIOD);
   
   localparam OUTPUT_CHECK_DELAY = (CLK_PERIOD - 0.2);
      
   //  DUT inputs
   reg tb_clk;
   reg tb_n_rst;
   reg tb_d_plus;
   reg tb_d_minus;
   reg tb_r_enable; 
   integer i;
   	
   // DUT outputs
   reg 	    tb_rcving;
   reg 	     tb_r_error;
   wire [7:0] tb_r_data;
   wire       tb_empty;
   wire       tb_full;
   
   // Test bench debug signals
   // Overall test case number for reference
   integer tb_test_case;
   
   // Test case 'inputs' used for test stimulus
   reg [7:0] data_test_vector [0:7];
   
   // Test case expected output values for the test case
   reg [7:0] tb_expected_r_data;
   reg 	     tb_expected_empty;
   reg 	     tb_expected_full;
   reg 	     tb_expected_rcving;
   reg 	     tb_expected_r_error;
   reg [7:0] tb_temp_data;
         
   // DUT portmap
   usb_receiver DUT
     (
      .clk(tb_clk),
      .n_rst(tb_n_rst),
      .d_plus(tb_d_plus),
      .d_minus(tb_d_minus),
      .r_data(tb_r_data),
      .full(tb_full),
      .empty(tb_empty),
      .r_enable(tb_r_enable),
      .rcving(tb_rcving),
      .r_error(tb_r_error)
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
   
   task send_bit;
      input logic bit_val;
      begin
	 tb_d_plus = bit_val == 1'b1 ? tb_d_plus : !tb_d_plus;
	 tb_d_minus = !tb_d_plus;
      end
   endtask // send_bit

   task send_byte;
      input logic [7:0] byte_val;
      begin
	 foreach(byte_val[j]) begin
	    send_bit(byte_val[j]);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	    @(negedge tb_clk);
	 end
      end
   endtask // send_byte
   
   task send_eop;
      begin
	 tb_d_plus = 1'b0;
	 tb_d_minus = 1'b0;
	 @(negedge tb_clk);
	 @(negedge tb_clk);
	 tb_d_plus = 1'b1;
	 @(negedge tb_clk);
      end
   endtask // send_eop
   
   task check_outputs;
      input       [7:0] expected_r_data;
      input 		expected_empty;
      input 		expected_full;

      
      
      begin
	 assert(expected_r_data == tb_r_data)
	   $info("Test case %0d: Correct r_data Output", tb_test_case);
         else begin
           $error("Test case %0d: Incorrect r_data Output", tb_test_case);
           $error("Expected %0d, got %0d", expected_r_data, tb_r_data);
         end
	 
	 assert(expected_empty == tb_empty)
	   $info("Test case %0d: Correct empty Output", tb_test_case);
	 else begin
	   $error("Test case %0d: Incorrect empty Output", tb_test_case);
	   $error("Expected %0d, got %0d", expected_empty, tb_empty);
	 end

	 assert(expected_full == tb_full)
	   $info("Test case %0d: Correct full Output", tb_test_case);
         else begin
           $error("Test case %0d: Incorrect full Output", tb_test_case);
           $error("Expected %0d, got %0d", expected_full, tb_full);
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
	   tb_d_plus = 1'b1;
	   tb_d_minus = 1'b0;
	   tb_r_enable = 1'b0;
	   
	   // Test case 0: Basic Power on Reset
	   tb_test_case = 0;
	   
	   // Define expected ouputs for this test case
	   // Note: expected outputs should all be inactive/idle values
	   // For a good packet RX Data value should match data sent

	   
	   	   
	   // DUT Reset
	   reset_dut;
	  	  	   	   
	  	  
	   //Main Tests
	   @(negedge tb_clk);
	   
	   data_test_vector = {8'b00000001,8'b00000000,8'b00111100,8'b00111000,8'b10011001,8'b11111110,8'b00101101,8'b00110011};
	   	   	   
	   for(i=0; i<8; i=i+1) begin
	      tb_test_case += 1;
	      send_byte(data_test_vector[i]);
	      tb_r_enable = 1'b1;
	      @(negedge tb_clk);
	      tb_r_enable = 1'b0;
	      @(negedge tb_clk);
	      tb_temp_data = data_test_vector[i];
	      foreach(tb_temp_data[k]) begin
		 tb_expected_r_data[k] = tb_temp_data[7-k];
	      end
	      check_outputs(tb_expected_r_data, 1'b1, 1'b0);
	      
	   end // for (i=0; i<32; i=i+1)

	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   send_eop;

	   tb_test_case += 1;
	   send_byte(8'b00000001);
	   	   	   
	   tb_expected_r_error = 1'b1;
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   @(negedge tb_clk);
	   assert(tb_expected_r_error == tb_r_error)
	   $info("Test case %0d: Correct error Output", tb_test_case);
         else begin
           $error("Test case %0d: Incorrect error Output", tb_test_case);
           $error("Expected %0d, got %0d", tb_expected_r_error, tb_r_error);
         end

	   send_eop;

	   tb_test_case += 1;

	   send_byte(8'b00000001);
	   
	end // block: TEST_PROC
   
endmodule
