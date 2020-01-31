`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:52 01/30/2020
// Design Name:   four_mux_2
// Module Name:   /home/jaswanth/Desktop/lab_3/muxtest_2.v
// Project Name:  lab_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_mux_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtest_2;

	// Inputs
	reg [1:0] s;
	reg i0;
	reg i1;
	reg i2;
	reg i3;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	four_mux_2 uut (
		.o(o), 
		.s(s), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s=0;
		// Wait 100 ns for global reset to finish
		#100;
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s=1;
		// Wait 100 ns for global reset to finish
		#100;
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s=2;
		// Wait 100 ns for global reset to finish
		#100;
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s=3;
	end
      
endmodule

