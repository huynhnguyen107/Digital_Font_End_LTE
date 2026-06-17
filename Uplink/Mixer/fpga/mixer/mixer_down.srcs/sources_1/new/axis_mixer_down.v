`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/15/2026 09:07:16 AM
// Design Name: axis_mixer_down
// Module Name: axis_mixer_down
// Project Name: MIXER
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: mixer at Fs/4 to down if signal to baseband freq
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axis_mixer_down #(parameter WIDTH=32)(
	input aclk,
	input aresetn,
	//SLAVE
	input [WIDTH-1:0]   s_axis_tdata,
	input [WIDTH/8-1:0] s_axis_tkeep,
	input 				s_axis_tvalid,
	output 				s_axis_tready,
	input 				s_axis_tlast,
	//MASTER
	output reg [WIDTH-1:0]   m_axis_tdata,
	output reg [WIDTH/8-1:0] m_axis_tkeep,
	output reg			     m_axis_tvalid,
	input 				     m_axis_tready,
	output reg				 m_axis_tlast
    );
	//pipeline control
	wire pipe_en;
	wire hs_en;
	reg [1:0] phase;
	reg [WIDTH-1:0] if_signal;
	//exp(-j*pi/2*n)
	reg [WIDTH-1:0] env;
	wire [79:0] data_80;
	//timming
	wire d_s_axis_tvalid;
	wire [WIDTH/8-1:0] d_s_axis_tkeep;
	wire d_s_axis_tlast;
	
	
	assign pipe_en = m_axis_tready | (!m_axis_tvalid);
	assign s_axis_tready = pipe_en;
	assign hs_en = s_axis_tvalid & s_axis_tready;
	//phase
	always @(posedge aclk) begin
		if (!aresetn) begin
			phase <=0;
			if_signal <=0;
		end
		else if (pipe_en) begin
			if (hs_en) begin
				phase <= phase +1'b1;
				if_signal <= s_axis_tdata;
			end
		
		end
	end
	//select envelope
	always @(*) begin
		case(phase) 
			2'd1: env={16'd0, 16'd16384};//Q2.14
			2'd2: env={16'd49152, 16'd0};//Q2.14
			2'd3: env={16'd0, 16'd49152};//Q2.14
			2'd0: env={16'd16384, 16'd0};//Q2.14
			default: env={16'd0, 16'd16384};//Q2.14
		endcase
	
	end
	//complex multiplier
	mixer_cmpy_0 mixer_cmpy_0 (
	  .aclk(aclk),                              // input wire aclk
	  .aclken(pipe_en),                          // input wire aclken
	  .s_axis_a_tvalid(1'b1),        // input wire s_axis_a_tvalid
	  .s_axis_a_tdata(if_signal),          // input wire [31 : 0] s_axis_a_tdata
	  .s_axis_b_tvalid(1'b1),        // input wire s_axis_b_tvalid
	  .s_axis_b_tdata(env),          // input wire [31 : 0] s_axis_b_tdata
	  .m_axis_dout_tvalid(),  // output wire m_axis_dout_tvalid
	  .m_axis_dout_tdata(data_80)    // output wire [79 : 0] m_axis_dout_tdata
	);
	//delay
	timming #(1,7) timming1 (aclk, aresetn, pipe_en, s_axis_tvalid, d_s_axis_tvalid);
	timming #(WIDTH/8,7) timming2 (aclk, aresetn, pipe_en, (hs_en ? s_axis_tkeep:4'd0), d_s_axis_tkeep);
	timming #(1,7) timming3 (aclk, aresetn, pipe_en, s_axis_tlast&hs_en, d_s_axis_tlast);
	//output
	always @(posedge aclk) begin
		if (!aresetn) begin
			m_axis_tdata <=0;
			m_axis_tkeep <=0;
			m_axis_tvalid <=0;
			m_axis_tlast <=0;
		end
		else if(pipe_en) begin
			m_axis_tdata  <={data_80[69:54], data_80[29:14]};
			m_axis_tkeep  <=d_s_axis_tkeep;
			m_axis_tvalid <=d_s_axis_tvalid;
			m_axis_tlast  <=d_s_axis_tlast;
		
		end
	end
endmodule


module timming #(parameter WIDTH=1, DELAY=6)(
	input aclk,
	input aresetn,
	input CE,
	input [WIDTH-1:0] a,
	output [WIDTH-1:0] b
	);
	reg [WIDTH-1:0] mem [DELAY-1:0];
	integer i;
	always @(posedge aclk) begin
		if (!aresetn) begin
			for (i=0;i<DELAY;i=i+1) begin
				mem[i] <=0;
			end
		end
		else if (CE) begin
			mem[0] <= a;
			for (i=1;i<DELAY;i=i+1) begin
				mem[i] <= mem[i-1];
			end
		end
	end
	assign b= mem[DELAY-1];
endmodule