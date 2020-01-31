`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:05 01/30/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
    output [3:0] o,
	 output cout,
	 input [3:0] a,
	 input [3:0] b,
	 input [2:0] s,
	 input cin);
	 reg [3:0] o;
	 reg cout;
	 always @ (*)
	 begin
	  case( s )
	   0 : {cout,o}=a+b+cin;
	   1 :  {cout,o}=a-b-cin;
		2 :  o=a|b;
		3 :  o=a&b;
		4 :  o=a<<1;
		5 :  o=a>>1;
		6 :  o=a<<1 | a[3];
		7 :  o=a>>a[3];
	 endcase
	end
endmodule
