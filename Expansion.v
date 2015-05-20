`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:14:13 05/10/2015 
// Design Name: 
// Module Name:    Expansion 
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
module Expansion(
     right,
     ouput
    );
	 
	 input [32:1] right;
    output reg [48:1] ouput;
	 
	 
	 wire [32:1] right;
	 
	 always @ (right)
	 begin
	 
	                      ouput[1]<= right[32];
								 ouput[2]<= right[1];
								 ouput[3]<= right[2];
								 ouput[4]<= right[3];
								 ouput[5]<= right[4];
								 ouput[6]<= right[5];
								 ouput[7]<= right[4];
								 ouput[8]<= right[5];
								 ouput[9]<= right[6];
								 ouput[10]<= right[7];
								 
								 ouput[11]<= right[8];
								 ouput[12]<= right[9];
								 ouput[13]<= right[8];
								 ouput[14]<= right[9];
								 ouput[15]<= right[10];
								 ouput[16]<= right[11];
								 ouput[17]<= right[12];
								 ouput[18]<= right[13];
								 ouput[19]<= right[12];
								 ouput[20]<= right[13];
								 
								 ouput[21]<= right[14];
								 ouput[22]<= right[15];
								 ouput[23]<= right[16];
								 ouput[24]<= right[17];
								 ouput[25]<= right[16];
								 ouput[26]<= right[17];
								 ouput[27]<= right[18];
								 ouput[28]<= right[19];
								 ouput[29]<= right[20];
								 ouput[30]<= right[21];
								 
								 ouput[31]<= right[20];
								 ouput[32]<= right[21];
								 ouput[33]<= right[22];
								 ouput[34]<= right[23];
								 ouput[35]<= right[24];
								 ouput[36]<= right[25];
								 ouput[37]<= right[24];
								 ouput[38]<= right[25];
								 ouput[39]<= right[26];
								 ouput[40]<= right[27];
								 
								 ouput[41]<= right[28];
								 ouput[42]<= right[29];
								 ouput[43]<= right[28];
								 ouput[44]<= right[29];
								 ouput[45]<= right[30];
								 ouput[46]<= right[31];
								 ouput[47]<= right[32];
								 ouput[48]<= right[1];
	 
	 
	 
	 
	 
	 end
	 
	 


endmodule
