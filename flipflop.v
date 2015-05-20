`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:40 04/21/2015 
// Design Name: 
// Module Name:    flipflop 
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
module flipflop(
    input clk,
    input rst,
    input D,
    output reg Q
    );
always @ ( posedge clk )
	begin
	if (rst) 
		Q<=1'b0;
	else
		Q<=D;
	end
endmodule
