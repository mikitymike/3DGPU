// $Id: $
// File name:   co_su
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: Clips a line within a rectangle


`include "defines_package.vh"
`include "clip_defines.vh"

module co_su
  #(
    parameter clip_side = `TOP
    )
   (
    input 	 Line2D line_in,
    output 	 Line2D line_out,
    output logic accept
    );

   Point2D intp;
   
   logic [3:0] 	     outcodeOut;
   logic [3:0] 	     outcode0;
   logic [3:0] 	     outcode1;

   outcode code0
     (
      .p(line_in.s),
      .code(outcode0)
      );
   
   outcode code1
     (
      .p(line_in.p),
      .code(outcode1)
      )
   
   always_comb begin

      accept = 1;
      line_out = line_in;
      
      if (!(outcode0 | outcode1)) begin // Bitwise OR is 0. Trivially accept and get out of loop
	 break;
      end
      else if (outcode0 & outcode1) begin // Bitwise AND is not 0. Trivially reject and get out of loop
	 accept = 0;
	 break;
      end else begin
	 
	 // At least one endpoint is outside the clip rectangle; pick it.
	 outcodeOut = outcode0 ? outcode0 : outcode1;
	 
	 // Now find the intersection point;
	 // use formulas y = y0 + slope * (x - x0), x = x0 + (1 / slope) * (y - y0)
	 if (outcodeOut & `TOP & clip_side) begin           // point is above the clip rectangle
	    intp.x = line_in.s.x + (line_in.p.x - line_in.s.x) * (`YMAX - line_in.s.y) / (line_in.p.y - line_in.s.y);
	    intp.y = `YMAX;
	 end else if ((outcodeOut & `BOTTOM & clip_side) && begin // point is below the clip rectangle
	    intp.x = line_in.s.x + (line_in.p.x - line_in.s.x) * (`YMIN - line_in.s.y) / (line_in.p.y - line_in.s.y);
	    intp.y = `YMIN;
	 end else if ((outcodeOut & `RIGHT & clip_side) && begin  // point is to the right of clip rectangle
	    intp.y = line_in.s.y + (line_in.p.y - line_in.s.y) * (`XMAX - line_in.s.x) / (line_in.p.x - line_in.s.x);
	    intp.x = `XMAX;
	 end else if ((outcodeOut & `LEFT * clip_side) && begin   // point is to the left of clip rectangle
	    intp.y = line_in.s.y + (line_in.p.y - line_in.s.y) * (`XMIN - line_in.s.x) / (line_in.p.x - line_in.s.x);
	    intp.x = `XMIN;
	 end
	 
	 // Now we move outside point to intersection point to clip
	 // and get ready for next pass.
	 if (outcodeOut == outcode0) begin
	    lineout.s = intp;
	 end else begin
	    lineout.p = intp;
	 end
	 accept = 1;
      end
   end // always_comb   
   
   
endmodule // co_su


