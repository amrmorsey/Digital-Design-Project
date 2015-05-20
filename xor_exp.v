`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:07 05/10/2015 
// Design Name: 
// Module Name:    xor_exp 
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
module xor_exp(
     expOFr,
     subkey,
     Bout
    );
	 input [48:1] expOFr;
    input [48:1] subkey;
    output [48:1] Bout;
	 assign Bout= expOFr ^ subkey;
	 
	 


endmodule
