`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:19 10/04/2017 
// Design Name: 
// Module Name:    Problem3 
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
module Problem3(
   input wire[3:0] x,
   input wire[2:0] s,
   output reg y,
	input wire clk
   );
always @(posedge clk) begin
	case(s) //Use a case statement with the selector "s"
		3'b000:	y = & x; //If s = 0 then use a reductive and on x into y
		3'b001:	y = | x; //etc...
		3'b010:	y = ^ x; 
		3'b011:	y = ~& x; 
		3'b100:	y = ~| x; 	
	endcase
end
endmodule
