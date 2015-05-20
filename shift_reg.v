`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:11 04/21/2015 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
    input clk,
    input rst,
    input in,
    output out
    );
	 
wire w1,w2,w3,w4 , w5, w6;
flipflop FF1 (clk,rst,in,w1);
flipflop FF2 (clk,rst,w1,w2);
flipflop FF3 (clk,rst,w2,w3);
//flipflop FF4 (clk,rst,w3,w4);
//flipflop FF5 (clk,rst,w4,w5);
//flipflop FF6 (clk,rst,w5,w6);

assign out = in & w2 & w3 ;//& w4 & w5 & w6;

endmodule
