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

   reg [31:0] 	      buffer [5:0];
   reg 		      ahb_shift_enable;
   
   
   assign texel_vertices_out.p.x = buffer[0][15:0];
   assign texel_vertices_out.p.y = buffer[0][31:16];
   assign texel_vertices_out.p.z = buffer[1][15:0];
   
   assign texel_vertices_out.q.x = buffer[1][31:16];
   assign texel_vertices_out.q.y = buffer[2][15:0];
   assign texel_vertices_out.q.z = buffer[2][31:16];
   
   assign texel_vertices_out.r.x = buffer[3][15:0];
   assign texel_vertices_out.r.y = buffer[3][31:16];
   assign texel_vertices_out.r.z = buffer[4][15:0];
   
   assign texel_color_out.r = buffer[4][23:16];
   assign texel_color_out.g = buffer[4][31:24];
   assign texel_color_out.b = buffer[5][7:0];
   
   
   always_comb begin
      dist_1 = sqrt((tri_in.p.x-tri_in.q.x)*(tri_in.p.x-tri_in.q.x) + (tri_in.p.y-tri_in.q.y)*(tri_in.p.y-tri_in.q.y));
      dist_2 = sqrt((tri_in.q.x-tri_in.r.x)*(tri_in.q.x-tri_in.r.x) + (tri_in.q.y-tri_in.r.y)*(tri_in.q.y-tri_in.r.y));
      dist_3 = sqrt((tri_in.r.x-tri_in.p.x)*(tri_in.r.x-tri_in.p.x) + (tri_in.r.y-tri_in.p.y)*(tri_in.r.y-tri_in.p.y));
      max_dist = (dist_1 > dist_2) ? ((dist_1 > dist_3) ? dist_1 : dist_3) : ((dist_2 > dist_3) ? dist_2 : dist_3);

      if(max_dist == dist_1) begin
	 tri_mid.p = tri_in.p;
	 tri_mid.p = tri_in.q;
	 tri_mid.p = tri_in.r;
      end
      else if(max_dist == dist_2) begin
	 tri_mid.p = tri_in.q;
	 tri_mid.p = tri_in.r;
	 tri_mid.p = tri_in.p;
      end
      else begin
	 tri_mid.p = tri_in.r;
	 tri_mid.p = tri_in.p;
	 tri_mid.p = tri_in.q;
      end

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


