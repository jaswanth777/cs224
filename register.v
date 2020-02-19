`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:38 02/13/2020 
// Design Name: 
// Module Name:    register 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module register(
    input [3:0] d,
	 input clk,
	 input load,clear,
	 output reg [3:0] q
	 );
	 always @(posedge clk)
	 begin
	 if(clear)
	 begin
	 q[0]<=0;
	 q[1]<=0;
	 q[2]<=0;
	 q[3]<=0;
	 end
	 else 
	 begin
	  if(load)
	  begin
	  q[0]<=d[0];
	  q[1]<=d[1];
	  q[2]<=d[2];
	  q[3]<=d[3];
	  end
	 end
    end
endmodule
