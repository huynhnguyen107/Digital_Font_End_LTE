`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 05/23/2026 03:04:00 PM
// Design Name: axis_upsample
// Module Name: axis_upsample
// Project Name: DUC
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axis_upsample #(parameter WIDTH=32)(
	input aclk,
	input aresetn,
	//SLAVE
	input [WIDTH-1: 0]   s_axis_tdata,
	input [WIDTH/8-1: 0] s_axis_tkeep,
	input 				 s_axis_tvalid,
	output 				 s_axis_tready,
	input 				 s_axis_tlast,
	//MASTERT
	output [WIDTH-1: 0]   m_axis_tdata,
	output [WIDTH/8-1: 0] m_axis_tkeep,
	output 				 m_axis_tvalid,
	input 				 m_axis_tready,
	output 				 m_axis_tlast
    );
	//signal defination
	localparam PASS= 1'b0;
	localparam INSERT= 1'b1;
	reg state, next_state;
	reg hold_tlast;//delay 1 clock cylce
	//assign wire
	assign s_axis_tready = (state==PASS)& m_axis_tready;
	assign m_axis_tdata = (state==PASS) ? s_axis_tdata: 32'd0;
	assign m_axis_tvalid = (state==PASS) ? s_axis_tvalid : 1;
	assign m_axis_tlast = (state==PASS) ? 0 : hold_tlast;
	assign m_axis_tkeep = (state==PASS) ? 4'b1111 : s_axis_tkeep;
	//control state
	always @(posedge aclk) begin
		if (!aresetn) begin
			state <= 0;
			hold_tlast <= 0;
		end
		else begin
			state <= next_state;
			if (next_state==PASS)
				hold_tlast <= s_axis_tlast;
		end
	
	end
	//control next_state
	always @(*) begin
		case (state)
			INSERT : next_state = m_axis_tready ? PASS :INSERT;
			PASS : next_state = s_axis_tvalid&s_axis_tready ? INSERT :PASS;
			default: next_state = INSERT;
		endcase
	end
endmodule
