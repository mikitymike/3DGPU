// $Id: $
// File name:   bisect.sv
// Created:     4/25/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Bisects an orthogonally projected 3D triangle


`include "defines_package.vh"
`include "alt_sqrt.v"

module bisect
  (
   input wire clk,
   input wire n_rst,
   input      Triangle3D tri_in, 
   input wire tri_select,
   output     Triangle3D tri_out
   );

   
   logic [1:0] max_dist;
   logic [15:0] dist_1;
   logic [31:0] dist_1_pre;
   logic [15:0] dist_2;
   logic [31:0] dist_2_pre;
   logic [15:0] dist_3;
   logic [31:0] dist_3_pre;
   
   Triangle3D tri_out_1;
   Triangle3D tri_out_2;
   Triangle3D tri_mid;
   
   
   alt_sqrt alt_sqrt_inst1 (
			    .radical (dist_1_pre),
			    .q (dist_1),
			    .remainder()
			    );
   
   alt_sqrt alt_sqrt_inst2 (
			    .radical (dist_2_pre),
			    .q (dist_2),
			    .remainder()
			    );
   
   alt_sqrt alt_sqrt_inst3 (
			    .radical (dist_3_pre),
			    .q (dist_3),
			    .remainder()
			    );
   
   
   always_comb begin

      // Find distance between each of the 3 points (in 2D ignoring z)
      dist_1_pre = (tri_in.p.x-tri_in.q.x)*(tri_in.p.x-tri_in.q.x) + (tri_in.p.y-tri_in.q.y)*(tri_in.p.y-tri_in.q.y);
      dist_2_pre = (tri_in.q.x-tri_in.r.x)*(tri_in.q.x-tri_in.r.x) + (tri_in.q.y-tri_in.r.y)*(tri_in.q.y-tri_in.r.y);
      dist_3_pre = (tri_in.r.x-tri_in.p.x)*(tri_in.r.x-tri_in.p.x) + (tri_in.r.y-tri_in.p.y)*(tri_in.r.y-tri_in.p.y);

      // Determine which distance is the longest distance
      max_dist = (dist_1 > dist_2) ? ((dist_1 > dist_3) ? 2'd1 : 2'd3) : ((dist_2 > dist_3) ? 2'd2 : 2'd3);


      // Rotate triangle coordinates so PQ is the longest side
      
      // PQ is longest
      if(max_dist == 2'd1) begin
	 tri_mid.p = tri_in.p;
	 tri_mid.q = tri_in.q;
	 tri_mid.r = tri_in.r;
      end
      //QR is longest
      else if(max_dist == 2'd2) begin
	 tri_mid.p = tri_in.q;
	 tri_mid.q = tri_in.r;
	 tri_mid.r = tri_in.p;
      end
      //RP is longest
      else begin
	 tri_mid.p = tri_in.r;
	 tri_mid.q = tri_in.p;
	 tri_mid.r = tri_in.q;
      end
      
      //      Longest side
      // P1-------Q1P2----Q2
      //   \       |     /
      //     \     |   /
      //       \   | /
      //         R1R2
      
      // T1

      //P1
      tri_out_1.p = tri_mid.p;

      //Q1
      if(tri_mid.p.x > tri_mid.q.x)
	tri_out_1.q.x = tri_mid.q.x + ((tri_mid.p.x - tri_mid.q.x) >> 1);
      else
	tri_out_1.q.x = tri_mid.p.x + ((tri_mid.q.x - tri_mid.p.x) >> 1);
      
      if(tri_mid.p.y > tri_mid.q.y)
	tri_out_1.q.y = tri_mid.q.y + ((tri_mid.p.y - tri_mid.q.y) >> 1);
      else
	tri_out_1.q.y = tri_mid.p.y + ((tri_mid.q.y - tri_mid.p.y) >> 1);
      
      if(tri_mid.p.z > tri_mid.q.z)
	tri_out_1.q.z = tri_mid.q.z + ((tri_mid.p.z - tri_mid.q.z) >> 1);
      else
	tri_out_1.q.z = tri_mid.p.z + ((tri_mid.q.z - tri_mid.p.z) >> 1);
      
      //R1
      tri_out_1.r = tri_mid.r;

      //P2 = Q1
      tri_out_2.p.x = tri_out_1.q.x;
      tri_out_2.p.y = tri_out_1.q.y;
      tri_out_2.p.z = tri_out_1.q.z;
      
      //Q2
      tri_out_2.q = tri_mid.q;

      //R1
      tri_out_2.r = tri_mid.r;

      
   end // always_comb begin

   
   // Multiplex the split triangles
   assign tri_out = tri_select == 1'b0 ? tri_out_1 : tri_out_2;      

   		  
endmodule // bisect


