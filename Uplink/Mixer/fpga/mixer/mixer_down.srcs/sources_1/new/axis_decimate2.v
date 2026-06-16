`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 05/30/2026 07:26:43 PM
// Design Name: axis_decimate2
// Module Name: axis_decimate2
// Project Name: DDC
// Target Devices: KRIA KR260
// Tool Versions: Vivado 
// Description: DDC
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axis_decimate2 #(parameter WIDTH=32)(
	input aclk,
	input aresetn,
	//SLAVE
	input [WIDTH-1:0]   s_axis_tdata,
	input [WIDTH/8-1:0] s_axis_tkeep,
	input 				s_axis_tvalid,
	output 				s_axis_tready,
	input 				s_axis_tlast,
	//MASTER
	output [WIDTH-1:0]   m_axis_tdata,
	output [WIDTH/8-1:0] m_axis_tkeep,
	output 				 m_axis_tvalid,
	input 				 m_axis_tready,
	output 				 m_axis_tlast
    );
	//signal defination
	localparam REMOVE=0, KEEP=1;
	reg state, next_state;
	//next_state
	always @(*) begin
		case (state)
			REMOVE: next_state = (s_axis_tvalid & s_axis_tready) ? KEEP : REMOVE;
			KEEP: next_state = (s_axis_tvalid & s_axis_tready) ? REMOVE : KEEP;
			default: next_state = REMOVE;
		endcase
	
	end
	//state
	always @(posedge aclk) begin
		if (!aresetn) begin
			state <= 0;
		end
		else begin
			state <= next_state;
		end
	
	end
	//assign output
	assign s_axis_tready = m_axis_tready;
	assign m_axis_tdata = (state==KEEP) ? s_axis_tdata : 0;
	assign m_axis_tkeep = s_axis_tkeep;
	assign m_axis_tlast = s_axis_tlast;
	assign m_axis_tvalid = (state==KEEP) ? s_axis_tvalid :0;
endmodule
