// $Id: $
// File name:   outcode.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: Computes the outcode of a point

`include "defines_package.vh"

`define INSIDE 'b0000
`define LEFT 'b0001
`define RIGHT 'b0010
`define BOTTOM 'b0100
`define TOP 'b1000
`define XMIN 0
`define XMAX 640
`define YMAX 480
`define YMIN 0

module outcode
  (
   input Point2D p,
   output logic [3:0] code
   );

   always_comb begin
      code = `INSIDE;          // initialised as being inside of clip window
      
      if (p.x < `XMIN)           // to the left of clip window
	code |= `LEFT;
      else if (p.x > `XMAX)      // to the right of clip window
	code |= `RIGHT;
      
      if (p.y < `YMIN)           // below the clip window
	code |= `BOTTOM;
      else if (p.y > `YMAX)      // above the clip window
	code |= `TOP;
   end // always_comb
   
endmodule // outcode

