// $Id: $
// File name:   cs_stack.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: Stack of triangles for clip and split use

`include "defines_package.vh"

module cs_stack 
  (
   input wire clk,
   input wire n_rst,
   input      Triangle3D tri_in, 
   output     Triangle3D tri_out,
   input wire push,
   input wire pop,
   output logic empty,
   output logic full
   );

   parameter DEPTH = 3;
      
   logic [DEPTH:0] ptr;
   Triangle3D stack [2**DEPTH];
   
   always @(posedge clk, negedge n_rst) begin
      if (n_rst == 1'b0) begin
	 ptr <= 0;
	 
      end
      else if (!full && push)
	ptr <= ptr + 1;
      else if (!empty && pop)
	ptr <= ptr - 1;
   end
   
   always @(posedge clk, negedge n_rst) begin
      if(n_rst == 1'b0) begin
	 tri_out <= '0;
      end
      else begin
	 if (!full && push) begin
	    stack[ptr] <= tri_in;
	 end
	 else if (!empty && pop) begin
	    tri_out <= stack[(ptr-1)];
	 end
      end // else: !if(n_rst == 1'b0)
   end

   assign empty = (ptr == '0);
   assign full = ((ptr >> DEPTH) == 1);
   
endmodule
