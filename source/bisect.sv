// $Id: $
// File name:   bisect.sv
// Created:     4/25/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Bisects an orthogonally projected 3D triangle

module bisect
  (
   input wire 	      clk,
   input wire 	      n_rst,
   input Triangle3D   tri_in,   
   output Triangle3D  tri_out,
   input wire 	      tri_select,
   );

   
   reg [1:0] 	      max_dist;
   reg [15:0] 	      dist_1;
   reg [15:0] 	      dist_2;
   reg [15:0] 	      dist_3;
   
    
   always_comb begin

      // Find distance between each of the 3 points (in 2D ignoring z)
      dist_1 = sqrt((tri_in.p.x-tri_in.q.x)*(tri_in.p.x-tri_in.q.x) + (tri_in.p.y-tri_in.q.y)*(tri_in.p.y-tri_in.q.y));
      dist_2 = sqrt((tri_in.q.x-tri_in.r.x)*(tri_in.q.x-tri_in.r.x) + (tri_in.q.y-tri_in.r.y)*(tri_in.q.y-tri_in.r.y));
      dist_3 = sqrt((tri_in.r.x-tri_in.p.x)*(tri_in.r.x-tri_in.p.x) + (tri_in.r.y-tri_in.p.y)*(tri_in.r.y-tri_in.p.y));

      // Determine which distance is the longest distance
      max_dist = (dist_1 > dist_2) ? ((dist_1 > dist_3) ? 2'd1 : 2'd3) : ((dist_2 > dist_3) ? 2'd2 : 2'd3);

      // Bisect the longest side
      if(max_dist == 2'd1) begin
	 tri_mid.p = tri_in.p;
	 tri_mid.p = tri_in.q;
	 tri_mid.p = tri_in.r;
      end
      else if(max_dist == 2'd2) begin
	 tri_mid.p = tri_in.q;
	 tri_mid.p = tri_in.r;
	 tri_mid.p = tri_in.p;
      end
      else begin
	 tri_mid.p = tri_in.r;
	 tri_mid.p = tri_in.p;
	 tri_mid.p = tri_in.q;
      end

      //      Longest side
      // P1-------Q1P2----Q2
      //   \       |     /
      //     \     |   /
      //       \   | /
      //         R1R2
      
      // T1
      tri_out_1.p = tri_mid.p;

      tri_out_1.q.x = (tri_mid.p.x - tri_mid.q.x) >> 1;
      tri_out_1.q.y = (tri_mid.p.y - tri_mid.q.y) >> 1;

      tri_out_1.r = tri_mid.r;

      tri_out_2.p.x = tri_out_2.q.x;
      tri_out_2.p.y = tri_out_2.q.y;

      tri_out_1.q = tri_mid.q;
      tri_out_1.r = tri_mid.r;
      
   end // always_comb begin
   
      
endmodule // bisect


