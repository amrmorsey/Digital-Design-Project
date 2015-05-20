`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:21 05/18/2015 
// Design Name: 
// Module Name:    clk50 
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
module clk50(
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
		if (OUT1 == 32'd4)
			OUT1<=32'd0;
		else
			OUT1 <= OUT1 + 1;
		end
		
	 always @ (posedge clk or posedge rst)
		begin
		if (rst)
			OUT2<=32'd0;
		else
		if (OUT2 == 32'd4)
			OUT2<=32'd0;
		else
			OUT2 <= OUT2 + 1;
		end
assign clkdivided1hz = (OUT1 == 32'd4);
assign clkdivided2hz = (OUT2 == 32'd4);

assign clkselect = (select) ? clkdivided2hz : clkdivided1hz;
endmodule
