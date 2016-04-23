// $Id: $
// File name:   texel_assembler.sv
// Created:     4/20/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Assembles 168-bit wide 3D triangles vertices + color from 32-bit words

`include "defines_package.vh"

module texel_assembler
  (
   input wire 	      clk,
   input wire 	      n_rst,
   input wire [31:0]  ahb_buffer,
   input wire 	      ahb_data_available,
   input wire 	      texel_read,
   output reg 	      ahb_user_read_buffer,
   output Triangle3D         texel_vertices_out,
   output Color              texel_color_out,
   output reg 	      texel_ready   
   );

   reg [31:0] 	      buffer [5:0];
   reg 		      ahb_shift_enable;
   
   parameter FRAME_START = 32'd0;
   parameter FRAME_END = 32'd1;
   
   typedef enum bit [3:0] {IDLE, T1, T2, T3, T4, T5, T6, READ_WAIT, END_CHK} states;

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
	  if ((ahb_buffer == FRAME_START) && (ahb_data_available == 1'b1))
	    nextstate = T1;
	  else
	    nextstate = IDLE;
	T1:
	  if(ahb_data_available)
	    nextstate = T2;
	  else
	    nextstate = T1;
	T2:
	    if(ahb_data_available)
	    nextstate = T3;
	  else
	    nextstate = T2;
	T3:
	  if(ahb_data_available)
	    nextstate = T4;
	  else
	    nextstate = T3;
	T4:
	  if(ahb_data_available)
	    nextstate = T5;
	  else
	    nextstate = T4;
	T5:
	  if(ahb_data_available)
	    nextstate = T6;
	  else
	    nextstate = T5;
	T6:
	  if(ahb_data_available)
	    nextstate = READ_WAIT;
	  else
	    nextstate = T6;
	READ_WAIT:
	  if (texel_read == 1'b1)
	    nextstate = IDLE;
	  else
	    nextstate = READ_WAIT;
	END_CHK:
	  if(ahb_data_available) begin
	    if (ahb_buffer == FRAME_END)
	      nextstate = IDLE;
	    else
	      nextstate = T1;
	  end
	  else
	    nextstate = END_CHK;
	default:
	  nextstate = IDLE;
      endcase
   end // always_comb begin
   
   always @ (posedge clk, negedge n_rst) begin
      if(n_rst==1'b0) begin
	 integer i;
	 for(i = 0; i < 6; i = i + 1) begin
	    buffer[i] <= '1;
	 end	 
      end
      else begin
	 if(ahb_shift_enable == 1'b1) begin
	    integer i;
	    for(i = 0; i < 5; i = i + 1) begin
	       buffer[i] <= buffer[i+1];
	    end
	    buffer[5] <= ahb_buffer;
	 end
      end
   end // always @ (posedge clk, negedge n_rst)
   
   always_comb begin
      case (state)
	IDLE:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b0;
	  end
	T1:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	T2:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	T3:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	T4:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	T5:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	T6:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b1;
	     ahb_shift_enable = 1'b1;
	  end
	READ_WAIT:
	  begin
	     texel_ready = 1'b1;
	     ahb_user_read_buffer = 1'b0;
	     ahb_shift_enable = 1'b0;
	  end
	END_CHK:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b0;
	     ahb_shift_enable = 1'b0;
	  end
	default:
	  begin
	     texel_ready = 1'b0;
	     ahb_user_read_buffer = 1'b0;
	     ahb_shift_enable = 1'b0;
	  end
      endcase
   end
   
   
endmodule // texel_assembler
