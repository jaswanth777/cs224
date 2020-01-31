`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:36:07 01/23/2020
// Design Name:   fourbit_with_delay
// Module Name:   /home/jaswanth/Desktop/lab_2/fourbit_with_delay_test.v
// Project Name:  lab_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbit_with_delay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourbit_with_delay_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	fourbit_with_delay uut (
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
		
		A=4'b1111;B=4'b0001;Cin=0;
		
		// Wait 100 ns for global reset to finish
		#100;
		
		A=4'b1100;B=4'b0011;Cin=0;
		
		// Wait 100 ns for global reset to finish
		#100;
	end
    always @ ( A, B, Cin , Sum, Cout)
		begin
		 $monitor("t=%3d A=%d,B=%d,Cin=%d,Sum=%d,Cout=%d \n",$time,A,B,Cin,Sum,Cout );
		 end	 
endmodule

