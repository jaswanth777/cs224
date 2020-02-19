`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:45 02/06/2020 
// Design Name: 
// Module Name:    register2 
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
module register2(
    input a,
	 input clk,
	 output q10,q11,q12
	 );
	 reg q10,q11,q12;
	 always @(clk)
	 begin
	 if(clk)
	 begin
	 q10<=a;
	 q11<=q10;
	 q12<=q11;

	 end
	 end
endmodule
