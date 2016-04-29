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

   Points2D points [9];
   logic 	oob[9];
   
   points[0] = texel_in.p.x;
   points[1] = texel_in.q.x;
   points[2] = texel_in.r.x;
   points[3] = texel_in.p.y;
   points[4] = texel_in.q.y;
   points[5] = texel_in.r.y;
   points[6] = texel_in.p.z;
   points[7] = texel_in.q.z;
   points[8] = texel_in.r.z;   

   genvar i;
   
   always_comb begin

      
      
      for(i=0;i<3;i++)
	oob[i] = (points[i] < `XMIN) || (points[i] > `XMAX);
      for(i=3;i<6;i++)
	oob[i] = (points[i] < `YMIN) || (points[i] > `YMAX);
      for(i=6;i<9;i++)
	oob[i] = (points[i] < `ZMIN) || (points[i] > `ZMAX);

      out_of_bounds = |oob;
      
      
   end // always_comb begin

