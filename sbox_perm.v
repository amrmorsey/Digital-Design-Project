`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:04 05/12/2015 
// Design Name: 
// Module Name:    sbox_perm 
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
module sbox_perm(
     in,
     out
    );

    input [32:1] in;
    output reg [32:1] out;
	 
	 
	 always @ (in)
	 begin 
	                    
							  out[1]<=in[16];
							  out[2]<=in[7];
							  out[3]<=in[20];
							  out[4]<=in[21];
							  out[5]<=in[29];
							  out[6]<=in[12];
							  out[7]<=in[28];
							  out[8]<=in[17];
							  out[9]<=in[1];
							  out[10]<=in[15];
							  
							  out[11]<=in[23];
							  out[12]<=in[26];
							  out[13]<=in[5];
							  out[14]<=in[18];
							  out[15]<=in[31];
							  out[16]<=in[10];
							  out[17]<=in[2];
							  out[18]<=in[8];
							  out[19]<=in[24];
							  out[20]<=in[14];
							  
							  out[21]<=in[32];
							  out[22]<=in[27];
							  out[23]<=in[3];
							  out[24]<=in[9];
							  out[25]<=in[19];
							  out[26]<=in[13];
							  out[27]<=in[30];
							  out[28]<=in[6];
							  out[29]<=in[22];
							  out[30]<=in[11];
							  
							  out[31]<=in[4];
							  out[32]<=in[25];
	 
	 
	 
	 end
	 
	 
	 
endmodule
