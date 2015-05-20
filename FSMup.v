`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:40 05/18/2015 
// Design Name: 
// Module Name:    FSMup 
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
module FSMup(
clk, rst, in, out    );
	 input clk, rst;
	 input	in;
	 output reg [1:0] out;
	 
	 wire w, w2;
	 //wire clk, cclk;
	 //clk50	divider(.clk(nclk),.rst(rst),.clkdivided1hz(clk), .clkdivided2hz(cclk));
	 
	 //shift_reg r1 (clk,rst, in, w);
	 //risingdge edge1 (~clk, rst, w, w2);
	assign w2 = in;
	 reg [1:0] state, nextstate;
	// wire [64:1] dectext;
	 
	 
	 
	 parameter [1:0] s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
	 
	 always @ (w2 or state )
		if(w2 == 2'b0) nextstate = state;
		else
		case (state)
			s0:
			begin
				if(w2) begin nextstate = s1; out <= 2'b00; end // seven <= 7'b0000001;end
				//else nextstate = s0;
			end
			
			s1:
			begin
				if (w2) begin nextstate = s2; out<= 2'b01;end // seven <= 7'b1001111; end
			//else if (!w2[1]) nextstate = s1;
				//else nextstate = s0;
			end
			s2:
			begin
				if (w2) begin nextstate = s3; out<= 2'b10;end //seven <= 7'b0010010; end
			//else if (!w2[2]) nextstate = s2;
				//else nextstate = s0;
			end
			
			s3:
			begin
				if (w2) begin nextstate = s0; out <= 2'b11;end // seven <= 7'b0000110; end
			
				//else nextstate = s0;
			end
			
			
				default: begin
					nextstate = 2'bx;
				end
		endcase
		
		always @ (posedge clk or posedge rst)
		begin
			if (rst) begin state <= s0; end
			else state <= nextstate;
		end
		


endmodule
