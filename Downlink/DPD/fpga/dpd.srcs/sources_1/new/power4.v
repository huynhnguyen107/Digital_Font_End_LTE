`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/08/2026 01:10:38 PM
// Design Name: power4
// Module Name: power4
// Project Name: DPD
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: power4=power2^2
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module power4 #(parameter WIDTH=32)(
	input aclk,
	input aresetn,
	input CE,
	input [WIDTH-1:0] in,
	output [WIDTH-1:0] out
    );
	//call instance
	power4_mult power4_mult (
	  .CLK(aclk),  // input wire CLK
	  .A(in),      // input wire [32 : 0] A
	  .B(in),      // input wire [32 : 0] B
	  .CE(CE),    // input wire CE
	  .P(out )      // output wire [32 : 0] P
	);
endmodule
