// $Id: $
// File name:   poly_clip.sv
// Created:     4/29/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: clips a polygon against 1 side and returns the clipped polygon


`include "defines_package.vh"

module poly_clip
  #(
    parameter clip_side = `TOP
    )
   (
    input wire clk,
    input wire n_rst,
    input      Polygon2D in_poly,
    output     Polygon2D out_poly,
    );

   
   co_su CLIP1
     #(
       .clip_side(clip_side)
       )
   (
    .line_in({in_poly.side[0], in_poly.side[1]}),
    .line_out(clip_out1),
    .accept(clip_acc1)
    );
   
   co_su CLIP2
     #(
       .clip_side(clip_side)
       )
   (
    .line_in({in_poly.side[1], in_poly.side[2]}),
    .line_out(clip_out2),
    .accept(clip_acc2)
    );
   
   co_su CLIP3
     #(
       .clip_side(clip_side)
       )
   (
    .line_in({in_poly.side[3], in_poly.side[4]}),
    .line_out(clip_out3),
    .accept(clip_acc3)
    );
   
   co_su CLI4
     #(
       .clip_side(clip_side)
       )
   (
    .line_in({in_poly.side[4], in_poly.side[5]}),
    .line_out(clip_out4),
    .accept(clip_acc4)
    );
   
   co_su CLIP5
     #(
       .clip_side(clip_side)
       )
   (
    .line_in({in_poly.side[5], in_poly.side[6]}),
    .line_out(clip_out5),
    .accept(clip_acc5)
    );
   
   co_su CLIP6
     #(
       .clip_side(clip_side)
       )
   (
    .line_in({in_poly.side[6], in_poly.side[7]}),
    .line_out(clip_out6),
    .accept(clip_acc6)
    );
         
   always_ff @(posedge clk) begin
      
      if(acc[i] == 1) begin
	 out[i] = clipout[i].s;
	 out[i+1] = clipout[i].p;
	 i++;
	 
	 end
      end

      if(clip_acc1) begin
	 next_point1 = clip_out1.s;
	 next_point2 = clip_out1.p;
	 
	 side_count = clip_out1.p;
	 inc_side_count = 1;
      end

      if(clip_acc2) begin
	 if(curr_point1
	 next_point1 = clip_out2.s;
	 next_point2 = clip_out2.p;
	 		       
	 side_count = clip_out1.p;
	 inc_side_count = 1;
      end
      
      
   end // always_comb begin
      
endmodule // texel_assembler
