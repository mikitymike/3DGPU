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
   input wire pop
   );

   parameter DEPTH = 8;
      
   logic [DEPTH-1:0] ptr;
   Triangle3D stack [DEPTH-1:0];
   
   always @(posedge clk, negedge n_rst) begin
      if (n_rst == 1'b0)
	ptr <= 0;
      else if (push)
	ptr <= ptr + 1;
      else if (pop)
	ptr <= ptr - 1;
   end
   
   always @(posedge clk) begin
      if (push) begin
	 stack[ptr] <= tri_in;
      end
      else if (pop) begin
	 tri_out <= stack[ptr-1];
      end
   end
   
endmodule
