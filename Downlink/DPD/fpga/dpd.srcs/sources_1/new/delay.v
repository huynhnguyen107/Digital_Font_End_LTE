`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/08/2026 01:53:19 PM
// Design Name: delay
// Module Name: delay
// Project Name: DPD
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: delay for WIDTH-bits input
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module delay #(WIDTH=16, DELAY=1)(
	input aclk,
	input aresetn,
	input CE,
	input [WIDTH-1:0] in,
	output [WIDTH-1:0] out
    );
	integer i;
	reg [WIDTH-1:0] mem [DELAY-1:0];
	always @(posedge aclk) begin
		if (!aresetn) begin
			for (i=0; i<DELAY; i=i+1) begin
				mem[i] <= 0;
			end
		end
		else if (CE) begin
			mem[0] <= in;
			for (i=1; i<DELAY; i=i+1) begin
				mem[i] <= mem[i-1];
			end
		end
	end
	assign out = mem[DELAY-1];
endmodule
