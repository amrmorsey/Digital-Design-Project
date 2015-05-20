`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:38 05/05/2015 
// Design Name: 
// Module Name:    shiftreg 
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
module shiftreg1(
    input [28:1] in,
	 output [28:1] out
    );
	 
	 assign out= { in[27:1], in[28] };



endmodule
