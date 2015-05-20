`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:54 05/12/2015 
// Design Name: 
// Module Name:    xor2 
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
module xor2(
    left,
     sboxPerm,
     right
    );
    input [32:1] left;
    input [32:1] sboxPerm;
    output reg [32:1] right;
	 
	 always @ (left or sboxPerm)
	    begin 
		          right<= left ^ sboxPerm;
		 
		 
		 end

endmodule
