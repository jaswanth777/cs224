`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:44 01/30/2020
// Design Name:   alu
// Module Name:   /home/jaswanth/Desktop/lab_3/alutest.v
// Project Name:  lab_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alutest;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] s;
	reg cin;

	// Outputs
	wire [3:0] o;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.o(o), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.s(s), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 3;
		b = 1;
		s = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
     a = 3;
		b = 1;
		s = 1;
		cin = 0;
		#100;
		a = 3;
		b = 1;
		s = 2;
		cin = 0;
		#100;
		a = 3;
		b = 1;
		s = 3;
		cin = 0;
		#100;
		a = 3;
		b = 1;
		s = 4;
		cin = 0;
		#100;
		a = 3;
		b = 1;
		s = 6;
		cin = 0;
	end
      
endmodule

