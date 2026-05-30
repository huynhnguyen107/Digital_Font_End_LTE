`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 05/23/2026 04:03:15 PM
// Design Name: halfband_fir
// Module Name: halfband_fir
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


module halfband_fir #(parameter WIDTH=32)(
	input aclk,
	input aresetn,
	//SLAVE
	input [WIDTH-1 : 0]   s_axis_tdata,
	input [WIDTH/8-1 : 0] s_axis_tkeep,
	input 				  s_axis_tvalid,
	output 				  s_axis_tready,
	input 				  s_axis_tlast,
	//MASTER
	output [WIDTH-1 : 0]   m_axis_tdata,
	output [WIDTH/8-1 : 0] m_axis_tkeep,
	output 				   m_axis_tvalid,
	input 				   m_axis_tready,
	output 				   m_axis_tlast
    );
	// signal defination
	wire [WIDTH/2-1 : 0] I0, Q0;
	reg  [WIDTH/2-1 : 0] I1, Q1;
	reg  [WIDTH/2-1 : 0] I2, Q2;
	reg  [WIDTH/2-1 : 0] I3, Q3;
	reg  [WIDTH/2-1 : 0] I4, Q4;
	reg  [WIDTH/2-1 : 0] I5, Q5;
	reg  [WIDTH/2-1 : 0] I6, Q6;
	wire  [WIDTH-1 : 0] total_I, total_Q;
	wire  [WIDTH-1 : 0] div_I, div_Q;
	wire  [WIDTH/2-1 : 0] nor_I, nor_Q;

	
	//assign 
	assign I0 = s_axis_tdata[WIDTH/2-1:0];
	assign Q0 = s_axis_tdata[WIDTH-1:WIDTH/2];
	assign total_I = -{{16{I0[WIDTH/2-1]}},I0} + ({{16{I2[WIDTH/2-1]}},I2}<<3)+ {{16{I2[WIDTH/2-1]}},I2} + ({{16{I3[WIDTH/2-1]}},I3}<<4) + ({{16{I4[WIDTH/2-1]}},I4}<<3)+ {{16{I4[WIDTH/2-1]}},I4} - {{16{I6[WIDTH/2-1]}},I6} ;
	assign total_Q = -{{16{Q0[WIDTH/2-1]}},Q0} + ({{16{Q2[WIDTH/2-1]}},Q2}<<3)+ {{16{Q2[WIDTH/2-1]}},Q2} + ({{16{Q3[WIDTH/2-1]}},Q3}<<4) + ({{16{Q4[WIDTH/2-1]}},Q4}<<3)+ {{16{Q4[WIDTH/2-1]}},Q4} - {{16{Q6[WIDTH/2-1]}},Q6} ;
	assign div_I = {{4{total_I[WIDTH-1]}}, total_I[WIDTH-1: 4]} ;
	assign div_Q = {{4{total_Q[WIDTH-1]}}, total_Q[WIDTH-1: 4]} ;
	assign nor_I = div_I[WIDTH/2-1 : 0] ;
	assign nor_Q = div_Q[WIDTH/2-1 : 0] ;
	//halfband_fir
	//h = [-1 0 9 16 9 0 -1] / 16
	always @(posedge aclk) begin
		if (!aresetn) begin
			I1 <=0 ;
			I2 <=0 ;
			I3 <=0 ;
			I4 <=0 ;
			I5 <=0 ;
			I6 <=0 ;
			Q1 <=0 ;
			Q2 <=0 ;
			Q3 <=0 ;
			Q4 <=0 ;
			Q5 <=0 ;
			Q6 <=0 ;
		end
		else begin
			if (s_axis_tvalid & s_axis_tready) begin
				if (s_axis_tlast) begin
					I1 <=0 ;
					I2 <=0 ;
					I3 <=0 ;
					I4 <=0 ;
					I5 <=0 ;
					I6 <=0 ;
					Q1 <=0 ;
					Q2 <=0 ;
					Q3 <=0 ;
					Q4 <=0 ;
					Q5 <=0 ;
					Q6 <=0 ;
				end
				else begin
					I1 <=I0 ;
					I2 <=I1 ;
					I3 <=I2 ;
					I4 <=I3 ;
					I5 <=I4 ;
					I6 <=I5 ;
					Q1 <=Q0 ;
					Q2 <=Q1 ;
					Q3 <=Q2 ;
					Q4 <=Q3 ;
					Q5 <=Q4 ;
					Q6 <=Q5 ;
				end
			
			
			end
		
		
		end
	
	end
	//assign output
	assign m_axis_tdata = {nor_Q, nor_I};
	assign m_axis_tkeep = s_axis_tkeep;
	assign m_axis_tvalid = s_axis_tvalid;
	assign s_axis_tready = m_axis_tready;
	assign m_axis_tlast = s_axis_tlast;
endmodule
