`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:48:40 04/14/2015 
// Design Name: 
// Module Name:    clockdivide2 
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
module clockdivide2(
    input clk,
    input rst,
	 input select,
    output reg [31:0] OUT1,
	 output reg [31:0] OUT2,
    output clkdivided1hz,
	 output clkdivided2hz,
	 output clkselect
    );
	 
	 always @ (posedge clk or posedge rst)
		begin
		if (rst)
			OUT1<=32'd0;
		else
		if (OUT1 == 32'd50000000)
			OUT1<=32'd0;
		else
			OUT1 <= OUT1 + 1;
		end
		
	 always @ (posedge clk or posedge rst)
		begin
		if (rst)
			OUT2<=32'd0;
		else
		if (OUT2 == 32'd500000)
			OUT2<=32'd0;
		else
			OUT2 <= OUT2 + 1;
		end
assign clkdivided1hz = (OUT1 == 32'd50000000);
assign clkdivided2hz = (OUT2 == 32'd500000);

assign clkselect = (select) ? clkdivided2hz : clkdivided1hz;
endmodule
