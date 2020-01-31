`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:30:46 01/23/2020
// Design Name:   fulladder
// Module Name:   /home/jaswanth/Desktop/lab_1/fatest.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fatest;

	// Inputs
	reg a;
	reg b;
	reg c0;

	// Outputs
	wire s;
	wire c1;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.s(s), 
		.c1(c1), 
		.a(a), 
		.b(b), 
		.c0(c0)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 0;
		c0 = 1;
		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		c0 = 0;
		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		c0 = 1;
		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 0;
		c0 = 0;
		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 0;
		c0 = 1;
		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		c0 = 0;
		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		c0 = 1;

	end
      
endmodule

