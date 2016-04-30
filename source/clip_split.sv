// $Id: $
// File name:   clip_split.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: clip and split controller


`include "defines_package.vh"

module clip_split
  (
   input logic 	      clk,
   input logic 	      n_rst,
   input logic [31:0] ahb_buffer,
   input logic 	      ahb_data_available,
   output logic       ahb_user_read_buffer,
   input logic 	      triangle_read,
   output 	      Triangle3D triangle_vertices_out,
   output 	      Color triangle_color_out,
   output logic       triangle_ready
   );

   logic 	      out_of_bounds;
   logic 	      texel_ready;
   logic 	      texel_read;
   
   texel_assembler TXL_ASM
     (
      .clk(clk),
      .n_rst(n_rst),
      .ahb_buffer(ahb_buffer),
      .ahb_data_available(ahb_data_available),
      .texel_read(texel_read),
      .ahb_user_read_buffer(ahb_user_read_buffer),
      .texel_vertices_out(triangle_vertices_out),
      .texel_color_out(triangle_color_out),
      .texel_ready(texel_ready)
      );
   
   bounds_check BND_CHK
     (
      .texel_in(triangle_vertices_out),
      .out_of_bounds(out_of_bounds)
      );
   
   cs_rcu RCU
     (
      .clip_triangle(out_of_bounds),
      .texel_ready(texel_ready),
      .triangle_read(triangle_read),
      .triangle_ready(triangle_ready),
      .texel_read(texel_read)
      );
   
   
endmodule
