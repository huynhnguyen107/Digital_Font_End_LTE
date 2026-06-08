`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/08/2026 12:50:00 PM
// Design Name: power2
// Module Name: power2
// Project Name: DPD
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: power= a^2+b^2
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module power2 #(parameter WIDTH=16)(
	input aclk,
	input aresetn,
	input CE,
	input [WIDTH-1:0] I,
	input [WIDTH-1:0] Q,
	input [WIDTH:0] power
    );
	//signals
	wire [WIDTH-1:0] I2;
	wire [WIDTH-1:0] Q2;
	//multiplier
	power_mult power_mult_0 (
	  .CLK(aclk),  // input wire CLK
	  .A(I),      // input wire [15 : 0] A
	  .B(I),      // input wire [15 : 0] B
	  .CE(CE),    // input wire CE
	  .P(I2)      // output wire [15 : 0] P
	);
	power_mult1 power_mult1_0 (
	  .CLK(aclk),  // input wire CLK
	  .A(Q),      // input wire [15 : 0] A
	  .B(Q),      // input wire [15 : 0] B
	  .CE(CE),    // input wire CE
	  .P(Q2)      // output wire [15 : 0] P
	);
	//output
	assign power = I2 +Q2;
endmodule
