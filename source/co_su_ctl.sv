// $Id: $
// File name:   co_su_ctl.sv
// Created:     4/28/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: controller for co su

`include "defines_package.vh"

module co_su_ctl
  (
   input wire clk,
   input wire n_rst,
   input      Polygon2D in_poly,
   output     Polygon2D out_poly
   );

   Polygon2D top_out;
   Polygon2D bottom_out;
   Polygon2D left_out;
   
   poly_clip CLIP_TOP
     #(
       .clip_side(`TOP)
       )
   (
    .clk(.clk),
    .n_rst(.n_rst),
    .in_poly(top_in),
    .out_poly(top_out)
    );
   
   poly_clip CLIP_BOTTOM
     #(
       .clip_side(`BOTTOM)
       )
   (
    .clk(.clk),
    .n_rst(.n_rst),
    .in_poly(bottom_in),
    .out_poly(bottom_out)
    );
   
   poly_clip CLIP_LEFT
     #(
       .clip_side(`LEFT)
       )
   (
    .clk(.clk),
    .n_rst(.n_rst),
    .in_poly(left_in),
    .out_poly(left_out)
    );
   
   poly_clip CLIP_RIGHT
     #(
       .clip_side(`RIGHT)
       )
   (
    .clk(.clk),
    .n_rst(.n_rst),
    .in_poly(right_in),
    .out_poly(out_poly)
    );
      
endmodule // co_su_ctl

