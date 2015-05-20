`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:37 05/12/2015 
// Design Name: 
// Module Name:    sbox6 
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
module sbox6(
     Bin,
     BSout
    );
	 input [6:1] Bin;
    output reg [4:1] BSout;
	 wire [6:1] offset;
	 assign offset = {Bin[6], Bin[1], Bin[5 : 2]}; 	  	 
	 always @(offset) 	  	  
	 begin  	   	    
	 case (offset)             
	 6'b000000:  BSout <= 4'd12;             
	 6'b000001:  BSout <= 4'd1;             
	 6'b000010:  BSout <= 4'd10;            
	 6'b000011:  BSout <= 4'd15;             
	 6'b000100:  BSout <= 4'd9;             
	 6'b000101:  BSout <= 4'd2;             
	 6'b000110:  BSout <= 4'd6;             
	 6'b000111:  BSout <= 4'd8;             
	 6'b001000:  BSout <= 4'd0;             
	 6'b001001:  BSout <= 4'd13;             
	 6'b001010:  BSout <= 4'd3;             
	 6'b001011:  BSout <= 4'd4;             
	 6'b001100:  BSout <= 4'd14;             
	 6'b001101:  BSout <= 4'd7;             
	 6'b001110:  BSout <= 4'd5;             
	 6'b001111:  BSout <= 4'd11;             
	 6'b010000:  BSout <= 4'd10;             
	 6'b010001:  BSout <= 4'd15;             
	 6'b010010:  BSout <= 4'd4;             
	 6'b010011:  BSout <= 4'd2;             
	 6'b010100:  BSout <= 4'd7;             
	 6'b010101:  BSout <= 4'd12;             
	 6'b010110:  BSout <= 4'd9;             
	 6'b010111:  BSout <= 4'd5;             
	 6'b011000:  BSout <= 4'd6;             
	 6'b011001:  BSout <= 4'd1;             
	 6'b011010:  BSout <= 4'd13;             
	 6'b011011:  BSout <= 4'd14;             
	 6'b011100:  BSout <= 4'd0;             
	 6'b011101:  BSout <= 4'd11;             
	 6'b011110:  BSout <= 4'd3;             
	 6'b011111:  BSout <= 4'd8;             
	 6'b100000:  BSout <= 4'd9;             
	 6'b100001:  BSout <= 4'd14;             
	 6'b100010:  BSout <= 4'd15;             
	 6'b100011:  BSout <= 4'd5;             
	 6'b100100:  BSout <= 4'd2;             
	 6'b100101:  BSout <= 4'd8;             
	 6'b100110:  BSout <= 4'd12;             
	 6'b100111:  BSout <= 4'd3;             
	 6'b101000:  BSout <= 4'd7;             
	 6'b101001:  BSout <= 4'd0;             
	 6'b101010:  BSout <= 4'd4;             
	 6'b101011:  BSout <= 4'd10;             
	 6'b101100:  BSout <= 4'd1;             
	 6'b101101:  BSout <= 4'd13;             
	 6'b101110:  BSout <= 4'd11;             
	 6'b101111:  BSout <= 4'd6;             
	 6'b110000:  BSout <= 4'd4;             
	 6'b110001:  BSout <= 4'd3;             
	 6'b110010:  BSout <= 4'd2;             
	 6'b110011:  BSout <= 4'd12;             
	 6'b110100:  BSout <= 4'd9;             
	 6'b110101:  BSout <= 4'd5;            
	 6'b110110:  BSout <= 4'd15;             
	 6'b110111:  BSout <= 4'd10;            
	 6'b111000:  BSout <= 4'd11;        
	 6'b111001:  BSout <= 4'd14;        
	 6'b111010:  BSout <= 4'd1;       
	 6'b111011:  BSout <= 4'd7;       
	 6'b111100:  BSout <= 4'd6;       
	 6'b111101:  BSout <= 4'd0;       
	 6'b111110:  BSout <= 4'd8;      
	 6'b111111:  BSout <= 4'd13;      
	 default:    BSout <= 4'd0; 		
	 endcase 			 
	 end


endmodule
