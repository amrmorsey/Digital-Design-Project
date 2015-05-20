`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:42 05/05/2015 
// Design Name: 
// Module Name:    key_Processor 
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
module key_Processor(
	select,
	lefto,
	righto,
	key
    );
	 input select;
	 output [28:1] lefto;
	 output [28:1] righto;
	 wire select;
	 //wire [28:1] lefto; 
	 //wire [28:1] righto;
	 reg [56:1] output_permutation;
	 input [64:1] key;

	assign  righto= output_permutation[28:1];
	assign lefto = output_permutation[56:29];
	
	always@(select or key)
	begin
		if(select == 1)
		begin
									 output_permutation[1] <= key[57];
									 output_permutation[2] <= key[49];
									 output_permutation[3] <= key[41];
									 output_permutation[4] <= key[33];
									 output_permutation[5] <= key[25];
									 output_permutation[6] <= key[17];
									 output_permutation[7] <= key[9];
									 output_permutation[8] <= key[1];
									 output_permutation[9] <= key[58];
									 output_permutation[10] <= key[50];
									 output_permutation[11] <= key[42];
									 output_permutation[12] <= key[34];
									 output_permutation[13] <= key[26];
									 output_permutation[14] <= key[18];
									 output_permutation[15] <= key[10];
									 output_permutation[16] <= key[2];
									 output_permutation[17] <= key[59];
									 output_permutation[18] <= key[51];
									 output_permutation[19] <= key[43];
									 output_permutation[20] <= key[35];
									 output_permutation[21] <= key[27];
									 output_permutation[22] <= key[19];
									 output_permutation[23] <= key[11];
									 output_permutation[24] <= key[3];
									 output_permutation[25] <= key[60];
									 output_permutation[26] <= key[52];
									 output_permutation[27] <= key[44];
									 output_permutation[28] <= key[36];
									 output_permutation[29] <= key[63];
									 output_permutation[30] <= key[55];
									 output_permutation[31] <= key[47];
									 output_permutation[32] <= key[39];
									 output_permutation[33] <= key[31];
									 output_permutation[34] <= key[23];
									 output_permutation[35] <= key[15];
									 output_permutation[36] <= key[7];
									 output_permutation[37] <= key[62];
									 output_permutation[38] <= key[54];
									 output_permutation[39] <= key[46];
									 output_permutation[40] <= key[38];
									 output_permutation[41] <= key[30];
									 output_permutation[42] <= key[22];
									 output_permutation[43] <= key[14];
									 output_permutation[44] <= key[6];
									 output_permutation[45] <= key[61];
									 output_permutation[46] <= key[53];
									 output_permutation[47] <= key[45];
									 output_permutation[48] <= key[37];
									 output_permutation[49] <= key[29];
									 output_permutation[50] <= key[21];
									 output_permutation[51] <= key[13];
									 output_permutation[52] <= key[5];
									 output_permutation[53] <= key[28];
									 output_permutation[54] <= key[20];
									 output_permutation[55] <= key[12];
									 output_permutation[56] <= key[4];
		end
		else
			begin
				 output_permutation <= 64'bx;
			end
	
	end
	

endmodule
