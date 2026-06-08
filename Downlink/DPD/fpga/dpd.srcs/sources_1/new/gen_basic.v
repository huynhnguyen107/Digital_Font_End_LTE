`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/08/2026 03:32:15 PM
// Design Name: gen_basic
// Module Name: gen_basic
// Project Name: DPD
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: gen_basic= x[n-0]*x[n-1]^2
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gen_basic #(WIDTH=16) (
	input aclk,
	input aresetn,
	input CE,
	input [WIDTH-1: 0] a,
	input [WIDTH: 0] b,
	output [WIDTH: 0] c
    );
	//call instace multiplier
	basic_mult basic_mult (
	  .CLK(aclk),  // input wire CLK
	  .A(a),      // input wire [15 : 0] A
	  .B(b),      // input wire [16 : 0] B
	  .CE(CE),    // input wire CE
	  .P(c)      // output wire [16 : 0] P
	);
endmodule
