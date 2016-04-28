// $Id: $
// File name:   co_su_ctl.sv
// Created:     4/28/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: controller for co su

`include "defines_package.vh"

module co_su_ctl
  (
   input wire 	clk,
   input wire 	n_rst,
   input 	Point2D pin0,
   input 	Point2D pin1,
   output 	Point2D pout0,
   output 	Point2D pout1,
   input logic 	in_line_ready,
   input logic 	read_out_line, 
   output logic out_line_ready,
   output logic read_in_line,
   output logic reject_line
   );

   logic [3:0]	     outcode0;
   logic [3:0]	     outcode1;
   logic [3:0]	     outcodeOut;
   logic 	     accept;
   
   
   Point2D p0;
   Point2D p1;
   Point2D intp;
   Point2D intp0;
   Point2D intp1;

   assign pout0 = p0;
   assign pout1 = p1;
   assign reject_line = reject;
   
   outcode code0
     (
      .p(p0),
      .code(outcode0)
      );
   
   outcode code1
     (
      .p(p1),
      .code(outcode1)
      )
   
   states state, nextstate;
   
   always_ff @(posedge clk, negedge n_rst) begin
      if(n_rst == 1'b0) begin
	 state <= IDLE;
	 p0 = '0;
	 p1 = '0;
      end
      else begin
	 state <= nextstate;
	 p0 = intp0;
	 p1 = intp1;
      end
   end
   
   always_comb begin
      case (state)
	IDLE:
	  if (in_line_ready == 1'b1))
	    nextstate = LINE1;
	  else
	    nextstate = IDLE;
	PASS1:
	  if(accept)
	    nextstate = WAIT;
	  else
	    nextstate = PASS2;
	PASS2:
	  nextstate = WAIT;
	WAIT:
	  if(read_out_line == 1'b1)
	    nextstate = IDLE;
	  else
	    nextstate = WAIT;
	default:
	  nextstate = IDLE;
      endcase
   end // always_comb begin
   
   always_comb begin
      case (state)
	IDLE:
	  begin
	     in_line_read = 1;
	     out_line_ready = 0;
	  end
	PASS1:
	  begin
	     in_line_read = 0;
	     out_line_ready = 0;
	     p1 = intp1;
	  end
	PASS2:
	  begin
	     in_line_read = 0;
	     out_line_ready = 0;
	  end
	WAIT:
	  begin
	     in_line_read = 0;
	     out_line_ready = 1;
	  end
	default:
	  begin
	     in_line_read = 0;
	     out_line_ready = 0;
	  end
      endcase
   end
   
   always_comb begin
      accept = 0;
      reject = 0;
      
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
	    intp0.x = intp.x;
	    intp0.y = intp.y;
	 end else begin
	    intp1.x = intp.x;
	    intp1.y = intp.y;
	 end
      end
   end // always_comb
   
endmodule // co_su_ctl
