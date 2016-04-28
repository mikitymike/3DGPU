// $Id: $
// File name:   co_su
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: Clips a line within a rectangle


`include "defines_package.vh"

module co_su
  (
   input 	     Point2D pin0,
   input 	     Point2D pin1,
   input logic [3:0] outcode0,
   input logic [3:0] outcode1,
   output 	     Point2D pout0,
   output 	     Point2D pout1,
   output logic      accept,
   output logic      reject
   );

   Point2D p0;
   Point2D p1;
   Point2D intp;
   logic [3:0] 	     outcodeOut;
   
   always_comb begin
      accept = 0;
      reject = 0;

      pout1 = pin1;
      pout2 = pin2;
      
      if (!(outcode0 | outcode1)) begin // Bitwise OR is 0. Trivially accept and get out of loop
	 accept = 1;
	 break;
      end
      else if (outcode0 & outcode1) begin // Bitwise AND is not 0. Trivially reject and get out of loop
	 reject = 1;
	 break;
      end else begin
	 
	 // At least one endpoint is outside the clip rectangle; pick it.
	 outcodeOut = outcode0 ? outcode0 : outcode1;
	 
	 // Now find the intersection point;
	 // use formulas y = y0 + slope * (x - x0), x = x0 + (1 / slope) * (y - y0)
	 if (outcodeOut & `TOP) begin           // point is above the clip rectangle
	    intp.x = p0.x + (p1.x - p0.x) * (`YMAX - p0.y) / (p0.y - p0.y);
	    intpy = `YMAX;
	 end else if (outcodeOut & `BOTTOM) begin // point is below the clip rectangle
	    intp.x = p0.x + (p1.x - p0.x) * (`YMIN - p0.y) / (p1.y - p0.y);
	    intp.y = ymin;
	 end else if (outcodeOut & `RIGHT) begin  // point is to the right of clip rectangle
	    intp.y = p0.y + (p1.y - p0.y) * (`XMAX - p0.x) / (p1.x - p0.x);
	    intp.x = `XMAX;
	 end else if (outcodeOut & `LEFT) begin   // point is to the left of clip rectangle
	    intp.y = p0.y + (p1.y - p0.y) * (`XMIN - p0.x) / (p1.x - p0.x);
	    intp.x = `XMIN;
	 end
	 
	 // Now we move outside point to intersection point to clip
	 // and get ready for next pass.
	 if (outcodeOut == outcode0) begin
	    pout0 = intp;
	    pout0 = intp;
	 end else begin
	    pout1 = intp;
	    pout1 = intp;
	 end
      end
   end // always_comb   
   
   
endmodule // co_su

