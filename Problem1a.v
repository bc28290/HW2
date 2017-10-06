`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:48 10/04/2017 
// Design Name: 
// Module Name:    Problem1a 
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
module Problem1a(
    input wire a,
    input wire b,
    input wire c,
    output reg y,
    output reg z,
	 input wire clk
    );
	 
always @(posedge clk) begin //When the positive edge of the clock arrives...
	if (a == 1 && b == 1 && c == 1) //If the following values are matched for a, b, and c
		begin
		y <= 0; //Assign these values
		z <= 1;
		end
	else if (a == 1 && b == 1 && c == 0) //The same as above but the next case
		begin
		y <= 1;
		z <= 1;
		end
	else if (a == 1 && b == 0 && c == 0) //Final case
		begin
		y <= 0;
		z <= 0;
		end
	else //And an else statement to close out the logic
		y <= 0;
		z <= 1'bx;
end
endmodule


