// $Id: $
// File name:   reorient_tri.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: reorients triangle so PQ is the longest side

`include "defines_package.vh"

module reorient_tri
  (
   input wire clk,
   input wire n_rst,
   input      Triangle3D tri_in, 
   output     Triangle3D tri_out
   );

   logic [1:0] max_dist;
   logic [31:0] dist_1;
   logic [31:0] dist_2;
   logic [31:0] dist_3;

   
   always_comb begin
      
      // Find distance between each of the 3 points (in 2D ignoring z)
      dist_1 = (tri_in.p.x-tri_in.q.x)*(tri_in.p.x-tri_in.q.x) + (tri_in.p.y-tri_in.q.y)*(tri_in.p.y-tri_in.q.y);
      dist_2 = (tri_in.q.x-tri_in.r.x)*(tri_in.q.x-tri_in.r.x) + (tri_in.q.y-tri_in.r.y)*(tri_in.q.y-tri_in.r.y);
      dist_3 = (tri_in.r.x-tri_in.p.x)*(tri_in.r.x-tri_in.p.x) + (tri_in.r.y-tri_in.p.y)*(tri_in.r.y-tri_in.p.y);

      // Determine which distance is the longest distance
      max_dist = (dist_1 > dist_2) ? ((dist_1 > dist_3) ? 2'd1 : 2'd3) : ((dist_2 > dist_3) ? 2'd2 : 2'd3);


      // Rotate triangle coordinates so PQ is the longest side
      
      // PQ is longest
      if(max_dist == 2'd1) begin
	 tri_out.p = tri_in.p;
	 tri_out.q = tri_in.q;
	 tri_out.r = tri_in.r;
      end
      //QR is longest
      else if(max_dist == 2'd2) begin
	 tri_out.p = tri_in.q;
	 tri_out.q = tri_in.r;
	 tri_out.r = tri_in.p;
      end
      //RP is longest
      else begin
	 tri_out.p = tri_in.r;
	 tri_out.q = tri_in.p;
	 tri_out.r = tri_in.q;
      end // else: !if(max_dist == 2'd2)
   end
endmodule // reorient_tri
