`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:59 05/06/2015 
// Design Name: 
// Module Name:    plaintext_ip 
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
module plaintext_ip(
      plaintxt,
      left_out,
      right_out,
      select
    );
    input [64:1] plaintxt;
    output [32:1] left_out;
    output [32:1] right_out;
    input select;
	 
	 reg [64:1] ip;
	 assign right_out= ip[32:1] ;           // right part
	 assign left_out= ip[64:33];          // left part
	  always@(select)
	  begin
	  if(select ==1)
	  begin
	            ip[1]<= plaintxt[58];
					ip[2]<= plaintxt[50];
					ip[3]<= plaintxt[42];
					ip[4]<= plaintxt[34];
					ip[5]<= plaintxt[26];
					ip[6]<= plaintxt[18];
					ip[7]<= plaintxt[10];
					ip[8]<= plaintxt[2];
					ip[9]<= plaintxt[60];
					ip[10]<= plaintxt[52];
					ip[11]<= plaintxt[44];
					
					ip[12]<= plaintxt[36];
					ip[13]<= plaintxt[28];
					ip[14]<= plaintxt[20];
					ip[15]<= plaintxt[12];
					ip[16]<= plaintxt[4];
					ip[17]<= plaintxt[62];
					ip[18]<= plaintxt[54];
					ip[19]<= plaintxt[46];
					ip[20]<= plaintxt[38];
					ip[21]<= plaintxt[30];
					ip[22]<= plaintxt[22];
					
					ip[23]<= plaintxt[14];
					ip[24]<= plaintxt[6];
					ip[25]<= plaintxt[64];
					ip[26]<= plaintxt[56];
					ip[27]<= plaintxt[48];
					ip[28]<= plaintxt[40];
					ip[29]<= plaintxt[32];
					ip[30]<= plaintxt[24];
					ip[31]<= plaintxt[16];
					ip[32]<= plaintxt[8];
					
					ip[33]<= plaintxt[57];
					ip[34]<= plaintxt[49];
					ip[35]<= plaintxt[41];
					ip[36]<= plaintxt[33];
					ip[37]<= plaintxt[25];
					ip[38]<= plaintxt[17];
					ip[39]<= plaintxt[9];
					ip[40]<= plaintxt[1];
					ip[41]<= plaintxt[59];
					ip[42]<= plaintxt[51];
					
					ip[43]<= plaintxt[43];
					ip[44]<= plaintxt[35];
					ip[45]<= plaintxt[27];
					ip[46]<= plaintxt[19];
					ip[47]<= plaintxt[11];
					ip[48]<= plaintxt[3];
					ip[49]<= plaintxt[61];
					ip[50]<= plaintxt[53];
					ip[51]<= plaintxt[45];
					ip[52]<= plaintxt[37];
					
					ip[53]<= plaintxt[29];
			  		ip[54]<= plaintxt[21];
					ip[55]<= plaintxt[13];
					ip[56]<= plaintxt[5];
					ip[57]<= plaintxt[63];
					ip[58]<= plaintxt[55];
					ip[59]<= plaintxt[47];
					ip[60]<= plaintxt[39];
					ip[61]<= plaintxt[31];
					ip[62]<= plaintxt[23];
					

					ip[63]<= plaintxt[15];
					ip[64]<= plaintxt[7];							
	  end
	  else
	   ip[64:1] <= 64'bx;
	 
end	 
	 

endmodule
