`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:00 01/30/2020 
// Design Name: 
// Module Name:    four_mux_2 
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
module four_mux_2(
		output o,
		input [1:0]s,
		input i0,i1,i2,i3);
		assign o=(s==0)?i0:((s==1)?i1:((s==2)?i2:i3));
endmodule
