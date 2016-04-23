// $Id: $
// File name:   texel_assembler.sv
// Created:     4/20/2016
// Author:      Michael Malachowski
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Assembles 168-bit wide 3D triangles vertices + color from 32-bit words

module texel_assembler
  (
   input wire 	      clk,
   input wire 	      n_rst,
   input wire [31:0]  ahb_buffer,
   input wire 	      ahb_data_available,
   input wire 	      texel_read,
   output reg 	      ahb_user_read_buffer,
   output reg [167:0] texel_buffer,
   output reg 	      texel_ready   
   );

   reg [31:0] 	      buffer [5:0];
   reg 		      ahb_shift_enable;
   
   parameter FRAME_START = 32'd0;
   parameter FRAME_END = 32'd1;
   
   typedef enum bit [3:0] {IDLE, T1, T2, T3, T4, T5, T6, READ_WAIT, END_CHK} states;
   
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
	  if (ahb_buffer == FRAME_START)
	    nextstate = T1;
	  else
	    nextstate = IDLE;
	T1:
	  nextstate = T2;
	T2:
	  nextstate = T3;
	T3:
	  nextstate = T4;
	T4:
	  nextstate = T5;
	T5:
	  nextstate = T6;
	T6:
	  nextstate = READ_WAIT;
	READ_WAIT:
	  if (texel_read == 1'b0)
	    nextstate = IDLE;
	  else
	    nextstate = READ_WAIT;
	END_CHK:
	  if (ahb_buffer == FRAME_END)
	    nextstate = IDLE;
	  else
	    nextstate = T1;
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