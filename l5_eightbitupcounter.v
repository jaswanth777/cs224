`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:11 02/13/2020 
// Design Name: 
// Module Name:    eightbitupcounter 
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
module eightbitupcounter(
    input [7:0] d,
	 input clk,
	 input load,clear,incr,
	 output  [7:0] q
    );
	 wire c;
	 wire c1;
	 wire c2;
	 assign c1=d[3:0]-14;
    upcounter2 a(d[3:0],clk,load,clear,incr,q[3:0],c);
	 upcounter2 b(d[7:4],clk,load,clear,c1,q[7:4],c2);
endmodule
