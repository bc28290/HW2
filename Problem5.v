`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:32 10/04/2017 
// Design Name: 
// Module Name:    Problem5 
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
module Problem5(
   input wire [63:0] x,
   output reg [63:0] u,
   input wire clk
   );
	reg i; //Created a register for the for loop later
	always @ (posedge clk) begin //When the positive edge of the clock hits...
		for (i = 63; i < 0; i = i - 2) begin //Start the for loop starting at 63 and decrementing by 2 until it is -1
			u = {u, x[i - 1], x[i]}; //Concatenate the current output u, with the values in x's two most significant bit positions flipped
		end
	end
endmodule
