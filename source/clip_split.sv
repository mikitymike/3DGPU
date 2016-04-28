// $Id: $
// File name:   clip_split.sv
// Created:     4/27/2016
// Author:      Michael Malachowski
// Lab Section: 33704
// Version:     1.0  Initial Design Entry
// Description: clip and split controller


`include "defines_package.vh"

module clip_split
  (
   input wire 	clk,
   input wire 	n_rst,
   input wire 	texel_ready,
   input wire 	triangle_read,
   input 	Triangle3D texel_vertices_out,
   input 	Color texel_color_out,
   output 	Triangle3D triangle_vertices_out,
   output 	Color triangle_color_out,
   output logic triangle_ready,
   output logic texel_read
   );

   
   states state, nextstate;
   
   always_ff @(posedge clk, negedge n_rst) begin
      if(n_rst == 1'b0)
	state <= IDLE;
      else
	state <= nextstate;
   end
   
   always_comb begin
      case (state)
	IDLE:
	  if (texel_ready)
	    nextstate = OOB;
	  else
	    nextstate = IDLE;
	OOB:
	  if(out_of_bounds)
	    nextstate = IDLE;
	  else
	    nextstate = OUTPUT;
	OUTPUT:
	    if(texel_read)
	    nextstate = IDLE;
	  else
	    nextstate = OUTPUT;
	default:
	  nextstate = IDLE;
      endcase
   end // always_comb begin
   
   
   always_comb begin
      case (state)
	IDLE:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b0;
	  end
	OOB:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	OUTPUT:
	  begin
	     
	  end
	default:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b0;
	     ahb_shift_enable = 1'b0;
	  end
      endcase
   end // always_comb

   assign triangle_vertices_out = triangle_vertices_in;
	     triangle_color_out = texel_color_in;
   
   
endmodule
