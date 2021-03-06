// $Id: $
// File name:   cs_rcu.sv
// Created:     4/30/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: controller for clip and split

`include "defines_package.vh"

module cs_rcu
  (
   input logic 	clip_triangle,
   input logic 	texel_ready,
   input logic 	triangle_read,
   output logic triangle_ready,
   output logic texel_read
   );

   assign triangle_ready = texel_ready && !clip_triangle;
   assign texel_read = triangle_read || (texel_ready && clip_triangle);
   
endmodule // cs_rcu

