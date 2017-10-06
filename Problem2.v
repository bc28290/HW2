`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:06 10/04/2017 
// Design Name: 
// Module Name:    Problem2 
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
module Problem2(
    input wire clk,
    input wire in,
	 input wire reset,
    output reg out
    );
reg [4:0] state; //Establish a 5 bit register called state
always @(posedge clk or posedge reset) begin  //When the positive edge of the clock comes
	if (reset == 1) begin //If the reset signal is recieved
		out <= 0; //Out is overwritten by 0
	end
	state[0] = in; //Assign the current input to the least significant bit
	state = state << 1; //Shift the bits in the register to the left by one
	out <= state[4]; //The output then gives out the 4th bit in the state register
end
endmodule
