`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:04 05/05/2015 
// Design Name: 
// Module Name:    pc2 
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
module pc2(
     l,
     r,
    outpc2
    );

   input [28:1] l;
    input [28:1] r;
    output reg [48:1] outpc2;
	 wire  [56:1] pwire;
	 
	assign  pwire = {l, r};
	 
	 always@(pwire)
	 begin
		outpc2[1] <= pwire[14];
		outpc2[2] <= pwire[17];
		outpc2[3] <= pwire[11];
		outpc2[4] <= pwire[24];
		outpc2[5] <= pwire[1];
		outpc2[6] <= pwire[5];
		outpc2[7] <= pwire[3];
		outpc2[8] <= pwire[28];
		outpc2[9] <= pwire[15];
		outpc2[10] <= pwire[6];
		
		outpc2[11] <= pwire[21];
		outpc2[12] <= pwire[10];
		outpc2[13] <= pwire[23];
		outpc2[14] <= pwire[19];
		outpc2[15] <= pwire[12];
		outpc2[16] <= pwire[4];
		outpc2[17] <= pwire[26];
		outpc2[18] <= pwire[8];
		outpc2[19] <= pwire[16];
		outpc2[20] <= pwire[7];
		
		outpc2[21] <= pwire[27];
		outpc2[22] <= pwire[20];
		outpc2[23] <= pwire[13];
		outpc2[24] <= pwire[2];
		outpc2[25] <= pwire[41];
		outpc2[26] <= pwire[52];
		outpc2[27] <= pwire[31];
		outpc2[28] <= pwire[37];
		outpc2[29] <= pwire[47];
		outpc2[30] <= pwire[55];
		
		outpc2[31] <= pwire[30];
		outpc2[32] <= pwire[40];
		outpc2[33] <= pwire[51];
		outpc2[34] <= pwire[45];
		outpc2[35] <= pwire[33];
		outpc2[36] <= pwire[48];
		outpc2[37] <= pwire[44];
		outpc2[38] <= pwire[49];
		outpc2[39] <= pwire[39];
		outpc2[40] <= pwire[56];
		
		outpc2[41] <= pwire[34];
		outpc2[42] <= pwire[53];
		outpc2[43] <= pwire[46];
		outpc2[44] <= pwire[42];
		outpc2[45] <= pwire[50];
		outpc2[46] <= pwire[36];
		outpc2[47] <= pwire[29];
		outpc2[48] <= pwire[32];
	 end
		
endmodule
