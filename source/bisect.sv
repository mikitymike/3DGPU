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

   Triangle3D tri_out_1;
   Triangle3D tri_out_2;
      
   always_comb begin

      //      Longest side
      // P1-------Q1P2----Q2
      //   \       |     /
      //     \     |   /
      //       \   | /
      //         R1R2
      
      // T1

      //P1
      tri_out_1.p = tri_in.p;

      //Q1
      if(tri_in.p.x > tri_in.q.x)
	tri_out_1.q.x = tri_in.q.x + ((tri_in.p.x - tri_in.q.x) >> 1);
      else
	tri_out_1.q.x = tri_in.p.x + ((tri_in.q.x - tri_in.p.x) >> 1);
      
      if(tri_in.p.y > tri_in.q.y)
	tri_out_1.q.y = tri_in.q.y + ((tri_in.p.y - tri_in.q.y) >> 1);
      else
	tri_out_1.q.y = tri_in.p.y + ((tri_in.q.y - tri_in.p.y) >> 1);
      
      if(tri_in.p.z > tri_in.q.z)
	tri_out_1.q.z = tri_in.q.z + ((tri_in.p.z - tri_in.q.z) >> 1);
      else
	tri_out_1.q.z = tri_in.p.z + ((tri_in.q.z - tri_in.p.z) >> 1);
      
      //R1
      tri_out_1.r = tri_in.r;

      //P2 = Q1
      tri_out_2.p.x = tri_out_1.q.x;
      tri_out_2.p.y = tri_out_1.q.y;
      tri_out_2.p.z = tri_out_1.q.z;
      
      //Q2
      tri_out_2.q = tri_in.q;

      //R1
      tri_out_2.r = tri_in.r;

      
   end // always_comb begin

   
   // Multiplex the split triangles
   assign tri_out = tri_select == 1'b0 ? tri_out_1 : tri_out_2;      

   		  
endmodule // bisect


