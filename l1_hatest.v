`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:18:56 01/23/2020
// Design Name:   halfadder
// Module Name:   /home/jaswanth/Desktop/lab_1/hatest.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hatest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	halfadder uut (
		.s(s), 
		.c(c), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//change input
		a = 0;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		//change input
		a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//change input
		a = 1;
		b = 1;

	end
      
endmodule

