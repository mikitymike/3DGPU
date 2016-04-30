// $Id: $
// File name:   bounds_check.sv
// Created:     4/29/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: checks if triangle is within bounds

`include "defines_package.vh"
`include "clip_defines.vh"

module bounds_check
  (
   input  Triangle3D texel_in,
   output logic out_of_bounds
   );

   shortint points [9];
   logic 	oob[9];
   
   assign points[0] = texel_in.p.x;
   assign points[1] = texel_in.q.x;
   assign points[2] = texel_in.r.x;
   assign points[3] = texel_in.p.y;
   assign points[4] = texel_in.q.y;
   assign points[5] = texel_in.r.y;
   assign points[6] = texel_in.p.z;
   assign points[7] = texel_in.q.z;
   assign points[8] = texel_in.r.z;   

   shortint i;
   
   always_comb begin

      for(i=0;i<3;i++)
	oob[i] = (points[i] < `XMIN) || (points[i] > `XMAX);
      for(i=3;i<6;i++)
	oob[i] = (points[i] < `YMIN) || (points[i] > `YMAX);
      for(i=6;i<9;i++)
	oob[i] = (points[i] < `ZMIN) || (points[i] > `ZMAX);

      out_of_bounds = oob[0]|oob[1]|oob[2]|oob[3]|oob[4]|oob[5]|oob[6]|oob[7]|oob[8];
            
   end // always_comb begin

endmodule
