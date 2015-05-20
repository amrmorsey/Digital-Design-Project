`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:34 05/05/2015 
// Design Name: 
// Module Name:    subkeys 
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
module subkeys(
     select,
	  key,
     k1,
     k2,
     k3,
     k4,
     k5,
     k6,
     k7,
     k8,
     k9,
     k10,
     k11,
     k12,
     k13,
     k14,
     k15,
     k16
    );
	 input [64:1] key;
	 input select;
    output [48:1] k1;
    output [48:1] k2;
    output [48:1] k3;
    output [48:1] k4;
    output [48:1] k5;
    output [48:1] k6;
    output [48:1] k7;
    output [48:1] k8;
    output [48:1] k9;
    output [48:1] k10;
    output [48:1] k11;
    output [48:1] k12;
    output [48:1] k13;
    output [48:1] k14;
    output [48:1] k15;
    output [48:1] k16;
	 
	 wire [28:1] lefto;
	 wire [28:1] righto;
	 
	 wire [28:1] l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16;
	 wire [28:1] r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
	 
	 key_Processor p(select, lefto, righto,key);
	
	          
				 shiftb1 h1(lefto, righto, l1, r1);           //1
				 pc2 p1(l1,r1,k1);
				 
				 shiftb2 h2(l1, r1, l2, r2);           //2
				 pc2 p2(l2,r2,k2);
				 
				 shiftb2 h3(l2, r2, l3, r3);           //2
				 pc2 p3(l3,r3,k3);
				 
				 shiftb2 h4(l3, r3, l4, r4);           //2
				 pc2 p4(l4,r4,k4);
				 
				 shiftb2 h5(l4, r4, l5, r5);           //2
				 pc2 p5(l5,r5,k5);
				 
				 shiftb2 h6(l5, r5, l6, r6);           //2
				 pc2 p6(l6,r6,k6);
				 
				 shiftb2 h7(l6, r6, l7, r7);           //2
				 pc2 p7(l7,r7,k7);
				 
				 shiftb2 h8(l7, r7, l8, r8);           //2
				 pc2 p8(l8,r8,k8);
				 
				 
				 shiftb1 h9(l8, r8, l9, r9);             //1
				 pc2 p9(l9,r9,k9);
				 
				 
				 shiftb2 h10(l9, r9, l10, r10);           //2
				 pc2 p10(l10,r10,k10);
				 
				 shiftb2 h11(l10, r10, l11, r11);           //2
				 pc2 p11(l11,r11,k11);
				 
				 shiftb2 h12(l11, r11, l12, r12);           //2
				 pc2 p12(l12,r12,k12);
				 
				 shiftb2 h13(l12, r12, l13, r13);           //2
				 pc2 p13(l13,r13,k13);
				 
				 shiftb2 h14(l13, r13, l14, r14);           //2
				 pc2 p14(l14,r14,k14);
				 
				 shiftb2 h15(l14, r14, l15, r15);           //2
				 pc2 p15(l15,r15,k15);
				 
				 
				 shiftb1 h16(l15,r15, l16, r16);            //1
				 pc2 p16(l16,r16,k16);
	 
				
				
	 
	 
	 
	 


endmodule
