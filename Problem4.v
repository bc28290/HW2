`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:30:03 10/04/2017 
// Design Name: 
// Module Name:    Problem4 
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
module Problem4(
    input wire [3:0] x,
    input wire [3:0] y,
    input wire s,
    input wire clk,
    output reg [3:0] q
    );
	 
	 
always @(posedge clk) begin
	case(s) //Use a case statement with the selector "s"
		3'b000:	q = x & y; //If s = 0 then and x and y and push it into q
		3'b001:	q = x | y; //etc...
		3'b010:	q = x ^ y; 
		3'b011:	q = ~(x & y); 
		3'b100:	q = ~(x | y); 
	endcase
end
endmodule
