`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:49 05/12/2015 
// Design Name: 
// Module Name:    one_iteration 
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
module one_iteration(
     clk,
     rst,
     left,
     right,
     subk,
     left_new,
     right_new
    );
	 
	 
	 input clk;
    input rst;
    input [32:1] left;
    input [32:1] right;
    input [48:1] subk;
    output reg [32:1] left_new;
    output reg [32:1] right_new;
	 
	 wire [48:1] rightexp;
	 Expansion e1 ( right, rightexp);
	 
	 wire [48:1] Bout;
	 xor_exp x1(rightexp, subk, Bout);

	 wire [6:1] b1,b2,b3,b4,b5,b6,b7,b8;
	 
	 assign b8 = Bout[6:1];
	 assign b7 = Bout[12:7];
	 assign b6 = Bout[18:13];
	 assign b5 = Bout[24:19];
	 
	 assign b4 = Bout[30:25];
	 assign b3 = Bout[36:31];
	 assign b2 = Bout[42:37];
	 assign b1 = Bout[48:43];
	 
	 wire [4:1] s1out, s2out, s3out,s4out,s5out,s6out, s7out, s8out;
	 sbox1 s1 (b1, s1out);
	 sbox2 s2 (b2, s2out);
	 sbox3 s3 (b3, s3out);
	 sbox4 s4 (b4, s4out);
	 
	 sbox5 s5 (b5, s5out);
	 sbox6 s6 (b6, s6out);
	 sbox7 s7 (b7, s7out);
	 sbox8 s8 (b8, s8out);
	 
	 wire [32:1] sboxOut;
	 
	 assign sboxOut = {s1out, s2out,s3out, s4out,s5out,s6out, s7out,s8out};
	 
	 wire [32:1]PermS;
	 sbox_perm sb1(sboxOut, PermS);
	 wire [32:1] xorOut;
	 xor2 x2(left,PermS, xorOut);
	 
	 always@(posedge clk or posedge rst)
	 begin
	 if(rst)
	 begin
		left_new <= 32'b00000000000000000000000000000000;
		right_new <= 32'b00000000000000000000000000000000;
	 end
	 else
		begin
			left_new <= right;
			right_new <= xorOut;
		end
	end	
	 

endmodule
