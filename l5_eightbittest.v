`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:05 02/13/2020
// Design Name:   eightbitupcounter
// Module Name:   /home/jaswanth/Desktop/lab_5/eight.v
// Project Name:  lab_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eightbitupcounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight;

	// Inputs
	reg [7:0] d;
	reg clk;
	reg load;
	reg clear;
	reg incr;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	eightbitupcounter uut (
		.d(d), 
		.clk(clk), 
		.load(load), 
		.clear(clear), 
		.incr(incr), 
		.q(q)
	);
   integer i;
	initial begin
		// Initialize Inputs
		d = 8'b00011111;
		clk = 0;
		load = 1;
		clear = 1;
		incr = 1;
	  for (i=0; i<=14; i = i+1)
	  begin
	  #10
	  clk<=(clk+1)%2;
	  if(i>1)
	  begin
	  clear=0;
	  end
	  if(i>3&i!=7&i!=8)
	  begin
	  load=0;
	  end
	  else
	  begin
	  load=1;
	  end
	  if(i>13)
	  begin
	  incr=0;
	  end
	  end

	end
      
endmodule

