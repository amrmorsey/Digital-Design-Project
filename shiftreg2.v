`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:30 05/05/2015 
// Design Name: 
// Module Name:    shiftreg2 
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
module shiftreg2(
    input [28:1] in,
    output [28:1] out
    );

assign out= { in[26:1], in[28], in[27] };

endmodule
