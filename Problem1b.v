<<<<<<< HEAD
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:09 10/04/2017 
// Design Name: 
// Module Name:    Problem1b 
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
module Problem1b(
    input wire a,
    input wire b,
    input wire c,
    output reg y,
    output reg z
    );
always @* //When one or more inputs change...
begin
	assign y = a && b && ~c; //Assign y and z based on the logic table given in the problem
	assign z = a && b;
end
endmodule
=======
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:09 10/04/2017 
// Design Name: 
// Module Name:    Problem1b 
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
module Problem1b(
    input wire a,
    input wire b,
    input wire c,
    output reg y,
    output reg z
    );
always @* //When one or more inputs change...
begin
	assign y = a && b && ~c; //Assign y and z based on the logic table given in the problem
	assign z = a && b;
end
endmodule
>>>>>>> 41b7cd5d15fe819791b10a638c733f77535d669b
