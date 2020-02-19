`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:53 02/06/2020 
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
    input a,
	 input clk,
	 output reg q0,q1,q2
	 );
	
	 always @(posedge clk)
	 begin
 	 q2=q1;
    q1=q0;
	 q0=a;
	 

	 end
endmodule
