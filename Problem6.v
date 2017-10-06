`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:46:44 10/04/2017 
// Design Name: 
// Module Name:    Problem6 
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
module Problem6(
	y, z, a, b, clk);
input a, b, clk;
output reg [1:0] y, z;
always@ (posedge clk) begin
//for step 8 turn all = to <=
	y = 2'b00;
	if (a == 1) begin
	y [1] = 1'b1;
	y [0] = 1'bx;
	z = 2'b01;
	end else if (b == 1) begin
	y [0] = 1'b0;
	y [1] = 1'b0;
	z = 2'b10;
	end
end
endmodule
