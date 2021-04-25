// Copyright (C) 2016 DSPIA INC.
// Author: Muzaffer Kal<kal@dspia.com>
// 
// IOBUF BD IP For Xilinx
//

module IOBUF #(TRI_ACT_LOW = 1) (
  input        io_out,
  input        io_tri,
  output  io_in,
  inout    io_pad);

  assign io_in = io_pad;

  generate
    if(TRI_ACT_LOW)
      bufif0 u0(io_pad, in_out, io_tri);
    else
      bufif1 u0(io_pad, in_out, io_tri);
  endgenerate

endmodule