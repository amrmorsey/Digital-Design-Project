`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:07 04/14/2015 
// Design Name: 
// Module Name:    finalcounter 
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
module finalcounter(
    input clk,
    input rst,
	 input [64:1] dectext,
	 input [1:0] updown,
    output reg [6:0] OUT,
    output reg [3:0] EN,
	 input select
    );
wire HZ1;
wire HZ100;
wire [3:0] out0, out2;
wire [3:0] out1, out3;
wire [6:0] bcd0, bcd1, bcd2, bcd3;
wire [1:0] sel_MUX;

assign out0 = (updown == 2'b00)? dectext[4:1] : ((updown == 2'b01)? dectext[20:17]: ( ((updown == 2'b10)? dectext[36:33]: ( dectext[52:49]) )) );
assign out1 = (updown == 2'b00)? dectext[8:5] : ((updown == 2'b01)? dectext[24:21]: ( ((updown == 2'b01)? dectext[40:37]: (dectext[56:53]) )) );
assign out2 = (updown == 2'b00)? dectext[12:9] : ((updown == 2'b01)? dectext[28:25]: (((updown == 2'b01)? dectext[44:41]: (dectext[60:57]) )) );
assign out3 = (updown == 2'b00)? dectext[16:13] : ((updown == 2'b01)? dectext[32:29]: (((updown == 2'b01)? dectext[48:45]: (dectext[64:61]) )) );
 

clockdivide2	divider(.clk(clk),.rst(rst),.clkdivided1hz(HZ1), .clkdivided2hz(HZ100));
BCD7segment		BCD0(out0, select,bcd0);
BCD7segment		BCD1(out1,select,bcd1);
BCD7segment		BCD2(out2,select, bcd2);
BCD7segment		BCD3(out3,select, bcd3);
moduloNcounter cont(.clk(HZ100),.rst(rst), .Q(sel_MUX), .EN(1), .N(3));

always @ *		//binary decoder
begin
	case(sel_MUX)
	
	0: EN = 4'b0111;
	1: EN = 4'b1011;
	2: EN = 4'b1101;
	3: EN = 4'b1110;
	
endcase
end

always @ *		//MUX
begin
	case(sel_MUX)
	
	0: OUT = bcd3;
	1: OUT = bcd2;
	2: OUT = bcd1;
	3: OUT = bcd0;
	endcase
end
	
endmodule
