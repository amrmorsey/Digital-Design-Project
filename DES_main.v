`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:39 05/12/2015 
// Design Name: 
// Module Name:    DES_main 
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
module DES_main(
     clk,
     rst,
     select,
     plaintext,
	  key,
     dectext
    );
	 
	 
	 input clk;
    input rst;
    input select;
   // input [64:1] in;
	 input [64:1] key;
    output [64:1] dectext;
	 input  [64:1] plaintext;
	
	wire [32:1] plainright, plainleft;
	plaintext_ip ip(plaintext, plainleft, plainright,select);
	
	wire [48:1] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
	subkeys sss(select, key,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16);

wire [32:1] l1,r1;
one_iteration one	(clk,rst,plainleft,plainright,w1,l1,r1);

wire [32:1] l2,r2;
one_iteration two	(clk,rst,l1,r1,w2,l2,r2);

wire [32:1] l3,r3;
one_iteration three	(clk,rst,l2,r2,w3,l3,r3);

wire [32:1] l4,r4;
one_iteration four	(clk,rst,l3,r3,w4,l4,r4);

wire [32:1] l5,r5;
one_iteration five	(clk,rst,l4,r4,w5,l5,r5);

wire [32:1] l6,r6;
one_iteration six	(clk,rst,l5,r5,w6,l6,r6);

wire [32:1] l7,r7;
one_iteration seven	(clk,rst,l6,r6,w7,l7,r7);

wire [32:1] l8,r8;
one_iteration eight	(clk,rst,l7,r7,w8,l8,r8);


wire [32:1] l9,r9;
one_iteration nine	(clk,rst,l8,r8,w9,l9,r9);

wire [32:1] l10,r10;
one_iteration ten	(clk,rst,l9,r9,w10,l10,r10);

wire [32:1] l11,r11;
one_iteration eleven	(clk,rst,l10,r10,w11,l11,r11);

wire [32:1] l12,r12;
one_iteration twelve	(clk,rst,l11,r11,w12,l12,r12);

wire [32:1] l13,r13;
one_iteration thirteen	(clk,rst,l12,r12,w13,l13,r13);

wire [32:1] l14,r14;
one_iteration fourteen	(clk,rst,l13,r13,w14,l14,r14);

wire [32:1] l15,r15;
one_iteration fifteen	(clk,rst,l14,r14,w15,l15,r15);

wire [32:1] l16,r16;
one_iteration sixteen	(clk,rst,l15,r15,w16,l16,r16);

inverse_perm ipf (l16,r16, dectext);
	

endmodule
