`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:30 05/13/2015 
// Design Name: 
// Module Name:    FSMinput 
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
module FSMinput(
clk, rst, in, in2, text, seven, EN
    );
	 input clk, rst;
	 input	in, in2;
	 input [6:1] text;
	 output  [3:0] EN;
	 reg [64:1] out;
	 output  [6:0] seven;
	 
	 wire w, w2, w3, w4;
	 //wire clk, cclk;
	 //clk50	divider(.clk(nclk),.rst(rst),.clkdivided1hz(clk), .clkdivided2hz(cclk));
	 
	 shift_reg r1 (clk,rst, in, w);
	 risingdge edge1 (~clk, rst, w, w2);
	 
	 shift_reg r2 (clk,rst, in2, w3);
	 risingdge edge2 (~clk, rst, w3, w4);
	//assign w2 = w;
	 reg [3:0] state, nextstate;
	 wire [64:1] dectext;
	 
	 
	 
	 parameter [3:0] s0 = 4'b0000, s1 = 4'b0001, s2 = 4'b0010, s3 = 4'b0011, s4 = 4'b0100 , s5 = 4'b0101, s6 = 4'b0110, s7 = 4'b0111, s8 = 4'b1000 , s9 = 4'b1001, s10 = 4'b1010, s11 = 4'b1011;
	 
	 always @ (w2 or state )
		if(w2 == 4'b0) nextstate = state;
		else
		case (state)
			s0:
			begin
				if(w2) begin nextstate = s1; out[6:1] <= text; end // seven <= 7'b0000001;end
				//else nextstate = s0;
			end
			
			s1:
			begin
				if (w2) begin nextstate = s2; out[12:7] <= text;end // seven <= 7'b1001111; end
			//else if (!w2[1]) nextstate = s1;
				//else nextstate = s0;
			end
			s2:
			begin
				if (w2) begin nextstate = s3; out[18:13] <= text;end //seven <= 7'b0010010; end
			//else if (!w2[2]) nextstate = s2;
				//else nextstate = s0;
			end
			
			s3:
			begin
				if (w2) begin nextstate = s4; out[24:19] <= text;end // seven <= 7'b0000110; end
			
				//else nextstate = s0;
			end
				 
			s4:
			begin
				if (w2) begin nextstate = s5; out[30:25] <= text;end // seven <= 7'b1001100; end
			
				//else nextstate = s0;
			end
			
			s5:
			begin
				if (w2) begin nextstate = s6; out[36:31] <= text;end // seven <= 7'b0100100;end
			
				//else nextstate = s0;
			end
			
			s6:
			begin
				if (w2) begin nextstate = s7; out[42:37] <= text;end // seven <= 7'b0100000; end
			
				//else nextstate = s0;
			end
			
			s7:
			begin
				if (w2) begin nextstate = s8; out[48:43] <= text;end // seven <= 7'b0001111;end
			
				//else nextstate = s0;
			end
			
			s8:
			begin
				if (w2) begin nextstate = s9; out[54:49] <= text;end // seven <= 7'b0000000;end
			
				//else nextstate = s0;
			end
			
			s9:
			begin
				if (w2) begin nextstate = s10; out[60:55] <= text;end // seven <= 7'b0000100;end
			
				//else nextstate = s0;
			end
			
			s10:
			begin
				if (w2) begin nextstate = s11; out[64:61] <= text[4:1];end //seven <= 7'b0001000;end
			
				//else nextstate = s0;
			end
			s11:
			begin
				if (w2) begin nextstate = s11; end
			
				//else nextstate = s0;
			end
			
				default: begin
					nextstate = 4'bx;
				end
		endcase
		
		always @ (posedge clk or posedge rst)
		begin
			if (rst) begin state <= s0; end
			else state <= nextstate;
		end
		
		wire sell;
		assign sell = (state==s11)? 1:0;
		DES_main d1(clk, 0, sell, out, 64'd1337,dectext);
		wire [1:0] wee;
		FSMup fg(clk, rst, w4, wee);
		finalcounter fc (clk, 0,dectext,wee, seven, EN, sell);
		
		
		//assign plain = out;
		// DES_main d1(clk, rst, select, out,dectext);
		
		//assign out = (state == s4) ? 7'b1000001 : 7'b1110001;


endmodule
