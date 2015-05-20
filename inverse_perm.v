`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:42 05/12/2015 
// Design Name: 
// Module Name:    inverse_perm 
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
module inverse_perm(
     left,
     right,
     cipher
    );
    input [32:1] left;
    input [32:1] right;
    output reg [64:1] cipher;
	 
	 
	 wire [64:1] left_ryt ;
	 assign left_ryt =  {right,left};             //teta5d mn 16
	 always @(left_ryt)
	 begin
	              cipher[1] <= left_ryt[40];
					  cipher[2] <= left_ryt[8];
					  cipher[3] <= left_ryt[48];
					  cipher[4] <= left_ryt[16];
					  cipher[5] <= left_ryt[56];
					  cipher[6] <= left_ryt[24];
					  cipher[7] <= left_ryt[64];
					  cipher[8] <= left_ryt[32];
					  cipher[9] <= left_ryt[39];
					  cipher[10] <= left_ryt[7];
					  
					   cipher[11] <= left_ryt[47];
					  cipher[12] <= left_ryt[15];
					  cipher[13] <= left_ryt[55];
					  cipher[14] <= left_ryt[23];
					  cipher[15] <= left_ryt[63];
					  cipher[16] <= left_ryt[31];
					  cipher[17] <= left_ryt[38];
					  cipher[18] <= left_ryt[6];
					  cipher[19] <= left_ryt[46];
					  cipher[20] <= left_ryt[14];
					  
					   cipher[21] <= left_ryt[54];
					  cipher[22] <= left_ryt[22];
					  cipher[23] <= left_ryt[62];
					  cipher[24] <= left_ryt[30];
					  cipher[25] <= left_ryt[37];
					  cipher[26] <= left_ryt[5];
					  cipher[27] <= left_ryt[45];
					  cipher[28] <= left_ryt[13];
					  cipher[29] <= left_ryt[53];
					  cipher[30] <= left_ryt[21];
					  
					   cipher[31] <= left_ryt[61];
					  cipher[32] <= left_ryt[29];
					  cipher[33] <= left_ryt[36];
					  cipher[34] <= left_ryt[4];
					  cipher[35] <= left_ryt[44];
					  cipher[36] <= left_ryt[12];
					  cipher[37] <= left_ryt[52];
					  cipher[38] <= left_ryt[20];
					  cipher[39] <= left_ryt[60];
					  cipher[40] <= left_ryt[28];
					  
					   cipher[41] <= left_ryt[35];
					  cipher[42] <= left_ryt[3];
					  cipher[43] <= left_ryt[43];
					  cipher[44] <= left_ryt[11];
					  cipher[45] <= left_ryt[51];
					  cipher[46] <= left_ryt[19];
					  cipher[47] <= left_ryt[59];
					  cipher[48] <= left_ryt[27];
					  cipher[49] <= left_ryt[34];
					  cipher[50] <= left_ryt[2];
					  
					  
					   cipher[51] <= left_ryt[42];
					  cipher[52] <= left_ryt[10];
					  cipher[53] <= left_ryt[50];
					  cipher[54] <= left_ryt[18];
					  cipher[55] <= left_ryt[58];
					  cipher[56] <= left_ryt[26];
					  cipher[57] <= left_ryt[33];
					  cipher[58] <= left_ryt[1];
					  cipher[59] <= left_ryt[41];
					  cipher[60] <= left_ryt[9];
					  
					  cipher[61] <= left_ryt[49];
					  cipher[62] <= left_ryt[17];
					  cipher[63] <= left_ryt[57];
					  cipher[64] <= left_ryt[25];
					  
	 
	 
	 end

endmodule
