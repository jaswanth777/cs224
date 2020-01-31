`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:01 01/23/2020 
// Design Name: 
// Module Name:    halfadder 
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
module halfadder(s,c,a,b);
	input a,b;
	output s,c;
	xor x(s,a,b);
	and y(c,a,b);
endmodule