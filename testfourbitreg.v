`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:40 02/06/2020
// Design Name:   fourbitregister
// Module Name:   /home/jaswanth/lab_4/testfourbitreg.v
// Project Name:  lab_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitregister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testfourbitreg;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg load;
	reg clear;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	fourbitregister uut (
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
    d = 1;
		clk = 1;
		load = 1;
		clear = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 2;
		clk = 0;
		load = 1;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 3;
		clk = 1;
		load = 1;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4;
		clk = 0;
		load = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 8;
		clk = 1;
		load = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

