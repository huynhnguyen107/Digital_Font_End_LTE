`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Vna-Huynh Nguyen
// 
// Create Date: 06/08/2026 03:46:46 PM
// Design Name: gen_term
// Module Name: gen_term
// Project Name: DPD
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: gen_term: coe*basic
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gen_term #(WIDTH=16)(
	input aclk,
	input aresetn,
	input CE,
	input [WIDTH-1:0] i_a,
	input [WIDTH-1:0] q_a,
	input [WIDTH-1:0] i_coe,
	input [WIDTH-1:0] q_coe,
	output [WIDTH-1:0] i_b,
	output [WIDTH-1:0] q_b
    );
	wire [79:0] m_axis_dout_tdata;
	localparam TW=WIDTH/2;
	term_cmpy_0 term_cmpy_0 (
	  .aclk(aclk),                              // input wire aclk
	  .aclken(CE),                          // input wire aclken
	  .s_axis_a_tvalid(1'b1),        // input wire s_axis_a_tvalid
	  .s_axis_a_tdata({ q_a, i_a}),          // input wire [31 : 0] s_axis_a_tdata
	  .s_axis_b_tvalid(1'b1),        // input wire s_axis_b_tvalid
	  .s_axis_b_tdata({q_coe, i_coe}),          // input wire [32 : 0] s_axis_b_tdata
	  .m_axis_dout_tvalid(),  // output wire m_axis_dout_tvalid
	  .m_axis_dout_tdata(m_axis_dout_tdata)    // output wire [79 : 0] m_axis_dout_tdata
	);
	assign i_b = m_axis_dout_tdata[29:14];
	assign q_b = m_axis_dout_tdata[69:54];
endmodule
