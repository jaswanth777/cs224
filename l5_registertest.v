`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:42:13 02/13/2020
// Design Name:   register
// Module Name:   /home/jaswanth/Desktop/lab_5/registertest.v
// Project Name:  lab_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registertest;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg load;
	reg clear;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.d(d), 
		.clk(clk), 
		.load(load), 
		.clear(clear), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		load = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

