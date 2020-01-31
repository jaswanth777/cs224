`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:13 01/30/2020
// Design Name:   four_mux
// Module Name:   /home/jaswanth/Desktop/lab_3/muxtest.v
// Project Name:  lab_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtest;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	four_mux uut (
		.o(o), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s0 = 0;
		s1 = 1;
		// Wait 100 ns for global reset to finish
		#100;
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s0 = 1;
		s1 = 0;
		// Wait 100 ns for global reset to finish
		#100;
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s0 = 1;
		s1 = 1;
	end
      
endmodule

