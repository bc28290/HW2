`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:04 10/05/2017 
// Design Name: 
// Module Name:    Problem8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Problem8(
	y, z, a, b, clk);
input a, b, clk; //Assign input and output values
output reg [1:0] y, z;

always@ (posedge clk) begin //When the positive edge of the clock comes...
	y <= 2'b00; //Set y to 00
	if (a == 1) begin //If a = 1
	y [1] <= 1'b1; //Assign 1x to y
	y [0] <= 1'bx;
	z <= 2'b01; //Assign 01 to z
	end else if (b == 1) begin //If b = 1
	y [0] <= 1'b0; //Assign 00 to y
	y [1] <= 1'b0;
	z <= 2'b10; //Assign 10 to z
	end
end
endmodule
