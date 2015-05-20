`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:42 04/14/2015 
// Design Name: 
// Module Name:    moduloNcounter 
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
module moduloNcounter(
    input clk,
    input rst,
    input cnt,
    output reg [3:0] Q,
    input inc,
    input EN,
    input [4:0] N
    );
wire [1:0] step;
assign step = inc ? 2 : 1;

always @ (posedge clk)
begin

if (rst)
	Q <= 0;
	
else if(Q == N & EN)
	Q <= 0;

	
else
	if(!cnt & EN)
		Q<= Q+step;
	if (cnt & EN)
		Q<=Q-step;
end

endmodule
