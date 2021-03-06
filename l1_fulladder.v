`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:22:32 01/23/2020 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(s,c1,a,b,c0);
		input a,b,c0;
		output s,c1;
		wire x,y,z;
		halfadder ha1(x,y,a,b);
		xor u2(s,x,c0);
		and u3(z,x,c0);
		or u4 (c1,y,z);
endmodule
