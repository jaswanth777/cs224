`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:52:46 01/23/2020
// Design Name:   four_bit_ripple_carry
// Module Name:   /home/jaswanth/Desktop/lab_1/four_bit_test.v
// Project Name:  lab_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_ripple_carry
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	four_bit_ripple_carry uut (
		.Sum(Sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A=4'b0001;B=4'b0000;Cin=0;
		
		// Wait 100 ns for global reset to finish
		#100;
		
		A=4'b1010;B=4'b0011;Cin=0;
		
		// Wait 100 ns for global reset to finish
		#100;
		
	end
      
endmodule

