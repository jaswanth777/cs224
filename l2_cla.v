`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:14 01/29/2020 
// Design Name: 
// Module Name:    cla 
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
module cla(
    output [3:0] Sum,
    output Cout,
    input [3:0] A,B,
	 input cin);
wire [3:0] c;
wire [3:0] p;
wire [3:0] g;
wire [9:0] i;
xor #1(p[0],A[0],B[0]);
xor #1(p[1],A[1],B[1]);
xor #1(p[2],A[2],B[2]);
xor #1(p[3],A[3],B[3]);
and #1(g[0],A[0],B[0]);
and #1(g[1],A[1],B[1]);
and #1(g[2],A[2],B[2]);
and #1(g[3],A[3],B[3]);
and #1(i[0],p[0],cin);
and #1(i[1],p[1],g[0]);
and #1(i[2],p[1],p[0],cin);
and #1(i[3],p[2],g[1]);
and #1(i[4],p[2],p[1],g[0]);
and #1(i[5],p[2],p[1],p[0],cin);
and #1(i[6],p[3],g[2]);
and #1(i[7],p[3],p[2],g[1]);
and #1(i[8],p[3],p[2],g[1],g[0]);
and #1(i[9],p[3],p[2],p[1],p[0],cin);
or #1(c[1],g[0],i[0]);
or #1(c[2],g[1],i[1],i[2]);
or #1(c[3],g[2],i[3],i[4],i[5]);
or #1(Cout,g[3],i[6],i[7],i[8],i[9]);
xor #1(Sum[0],p[0],cin);
xor #1(Sum[1],p[1],c[1]);
xor #1(Sum[2],p[2],c[2]);
xor #1(Sum[3],p[3],c[3]);
			 
endmodule
