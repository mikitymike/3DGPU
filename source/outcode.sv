// $Id: $
// File name:   outcode.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: Computes the outcode of a point

`include "defines_package.vh"

`define INSIDE 4'b0000
`define LEFT 4'b0001
`define RIGHT 4'b0010
`define BOTTOM 4'b0100
`define TOP 4'b1000
`define XMIN 16'd0
`define XMAX 16'd640
`define YMAX 16'd480
`define YMIN 16'd0

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

