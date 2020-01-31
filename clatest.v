`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:24 01/29/2020
// Design Name:   cla
// Module Name:   /home/jaswanth/Desktop/lab_2/clatest.v
// Project Name:  lab_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clatest;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	cla uut (
		.Sum(Sum), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		A=4'b1111;B=4'b0001;cin=0;		

		
		// Wait 100 ns for global reset to finish
		#100;
		A=4'b0000;B=4'b1111;cin=0;		

		
		// Wait 100 ns for global reset to finish
		#100;
	end
    always @ ( A, B, cin , Sum, Cout)
		begin
		 $monitor("t=%3d A=%d,B=%d,Cin=%d,Sum=%d,Cout=%d \n",$time,A,B,cin,Sum,Cout );
		 end     
endmodule

