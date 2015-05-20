`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:08 05/05/2015 
// Design Name: 
// Module Name:    shiftb1 
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
module shiftb1(
    input [28:1] in_l,
    input [28:1] in_r,
    output [28:1] out_l,
    output [28:1] out_r
    );

assign out_l= { in_l[27:1], in_l[28] };
assign out_r= { in_r[27:1], in_r[28] };
endmodule
