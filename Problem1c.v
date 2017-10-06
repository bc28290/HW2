`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:30 10/04/2017 
// Design Name: 
// Module Name:    Problem1c 
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
module Problem1c(
    input wire a,
    input wire b,
    input wire c,
    output reg y,
    output reg z,
	 input wire clk
    );

always @ (posedge clk) begin //At the positive edge of the clock timer...
	case({a, b, c}) //Use a case statement with the values a, b, and c
		3'b111:	begin //The first case is specified here
					y <= 0; //Where the values y and z are now changed according to the table
					z <= 1;
					end
		3'b110: 	begin //Second case
					y <= 1;
					z <= 1;
					end
		3'b100: 	begin //Third case
					y <= 0;
					z <= 0;
					end
		default: begin //Assigning a default case to cover all other combinations according to the truth table
					y <= 0;
					z <= 1'bx;
					end
	endcase
end
endmodule
