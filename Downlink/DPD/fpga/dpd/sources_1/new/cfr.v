`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/02/2026 06:35:47 PM
// Design Name: cfr
// Module Name: cfr
// Project Name: cfr
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


module cfr #(parameter WIDTH=32, THRESHOLD=16'd19660)(
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
	output reg 			 m_axis_tvalid,
	input 				 m_axis_tready,
	output reg				 m_axis_tlast
    );
	//signal defination
	integer i=0;
	localparam IW=WIDTH/2;
	localparam DELAY_MUL=1;
	localparam DELAY_CORDIC=DELAY_MUL+24;
	localparam DELAY_DIVIDER=DELAY_CORDIC+42;
	localparam DELAY_TOTAL=DELAY_DIVIDER+1;
	wire pipe_en;
	reg [WIDTH-1:0] pipe_tdata [DELAY_TOTAL-1:0];
	reg [WIDTH/8-1:0] pipe_tkeep [DELAY_TOTAL-1:0];
	reg  pipe_tvalid [DELAY_TOTAL-1:0];
	reg  pipe_tlast [DELAY_TOTAL-1:0];
	wire [IW-1:0] q_power;
	wire [IW-1:0] i_power;
	wire [IW:0] power_sum;
	wire 		power_sum_valid;
	wire [IW-1+8:0] sqrt_24;
	wire [IW:0] sqrt ;
	reg [IW-1:0] r_sqrt [DELAY_TOTAL-DELAY_CORDIC-1:0];
	wire sqrt_valid;
	wire [40-1:0] gain_40;
	wire [IW-1:0] gain;
	wire          gain_valid;
	wire [IW-1:0] i_scale;
	wire [WIDTH-1:0] i_scale_32;
	wire [WIDTH-1:0] q_scale_32;
	wire [IW-1:0] q_scale;
	wire [WIDTH-1:0] data_scale;
	wire  data_scale_valid;
	//pipeline enable
	assign pipe_en = m_axis_tready || (!m_axis_tvalid);
	assign s_axis_tready = pipe_en;
	always @(posedge aclk) begin
		if (!aresetn) begin
			for (i=0;i<DELAY_TOTAL;i=i+1) begin
				pipe_tdata[i] <=0;
				pipe_tkeep[i] <=0;
				pipe_tvalid[i] <=0;
				pipe_tlast[i] <=0;
			end
		end
		else if (pipe_en) begin
				pipe_tdata[0] <=s_axis_tdata;
				pipe_tkeep[0] <=s_axis_tkeep;
				pipe_tvalid[0] <=s_axis_tvalid;
				pipe_tlast[0] <=s_axis_tlast;
				for (i=1;i<DELAY_TOTAL;i=i+1) begin
					pipe_tdata[i] <=pipe_tdata[i-1];
					pipe_tkeep[i] <=pipe_tkeep[i-1];
					pipe_tvalid[i] <=pipe_tvalid[i-1];
					pipe_tlast[i] <=pipe_tlast[i-1];
				end
		end
	end
	//I^2+Q^2
	cfr_ii cfr_ii (
	  .CLK(aclk),  // input wire CLK
	  .A(s_axis_tdata[15:0]),      // input wire [15 : 0] A
	  .B(s_axis_tdata[15:0]),      // input wire [15 : 0] B
	  .CE(pipe_en),    // input wire CE
	  .P(i_power)      // output wire [15 : 0] P
	);
	cfr_qq cfr_qq (
	  .CLK(aclk),  // input wire CLK
	  .A(s_axis_tdata[31:16]),      // input wire [15 : 0] A
	  .B(s_axis_tdata[31:16]),      // input wire [15 : 0] B
	  .CE(pipe_en),    // input wire CE
	  .P(q_power)      // output wire [15 : 0] P
	);
	//power sum
	assign power_sum = i_power+q_power;
	assign power_sum_valid = pipe_tvalid[DELAY_MUL-1];
	//sqrt
	cordic_0 cordic_0 (
	  .aclk(aclk),                                        // input wire aclk
	  .aclken(pipe_en),                                    // input wire aclken
	  .s_axis_cartesian_tvalid(power_sum_valid),  // input wire s_axis_cartesian_tvalid
	  .s_axis_cartesian_tdata({7'd0, power_sum}),    // input wire [23 : 0] s_axis_cartesian_tdata
	  .m_axis_dout_tvalid(sqrt_valid),            // output wire m_axis_dout_tvalid
	  .m_axis_dout_tdata(sqrt_24)              // output wire [23 : 0] m_axis_dout_tdata
	);
	assign sqrt = sqrt_24[20:4] +1'b0;//2.15
	//gain
	div_gen_0 div_gen_0 (
	  .aclk(aclk),                                      // input wire aclk
	  .aclken(pipe_en),                                  // input wire aclken
	  .s_axis_divisor_tvalid(sqrt_valid),    // input wire s_axis_divisor_tvalid
	  .s_axis_divisor_tdata({7'd0, sqrt}),      // input wire [23 : 0] s_axis_divisor_tdata
	  .s_axis_dividend_tvalid(sqrt_valid),  // input wire s_axis_dividend_tvalid
	  .s_axis_dividend_tdata(THRESHOLD),    // input wire [15 : 0] s_axis_dividend_tdata
	  .m_axis_dout_tvalid(gain_valid),          // output wire m_axis_dout_tvalid
	  .m_axis_dout_tdata(gain_40)            // output wire [39 : 0] m_axis_dout_tdata
	);
	assign gain = gain_40[24:9];
	//scale
	
	i_scale i_scale_1 (
	  .CLK(aclk),  // input wire CLK
	  .A(pipe_tdata[DELAY_DIVIDER-1][15:0]),      // input wire [15 : 0] A
	  .B(gain),      // input wire [15 : 0] B
	  .CE(pipe_en),    // input wire CE
	  .P(i_scale_32)      // output wire [15 : 0] P
	);
	assign i_scale= i_scale_32[30:15];
	q_scale q_scale_1 (
	  .CLK(aclk),  // input wire CLK
	  .A(pipe_tdata[DELAY_DIVIDER-1][31:16]),      // input wire [15 : 0] A
	  .B(gain),      // input wire [15 : 0] B
	  .CE(pipe_en),    // input wire CE
	  .P(q_scale_32)      // output wire [15 : 0] P
	);
	assign q_scale= q_scale_32[30:15];
	assign data_scale = {q_scale, i_scale};
	assign data_scale_valid = pipe_tvalid[DELAY_TOTAL-1];
	//output
	always @(posedge aclk) begin
		if (!aresetn) begin
			m_axis_tkeep <=0;
			m_axis_tvalid <=0;
			m_axis_tlast <=0;
			m_axis_tdata <=0;
			for (i=0;i<DELAY_TOTAL-DELAY_CORDIC;i=i+1) begin
					r_sqrt[i] <=0;
			end
		end
		else if (pipe_en) begin
				r_sqrt[0] <=sqrt;
				for (i=1;i<DELAY_TOTAL-DELAY_CORDIC;i=i+1) begin
					r_sqrt[i] <=r_sqrt[i-1];
				end
				m_axis_tkeep <= pipe_tkeep[DELAY_TOTAL-1];
				m_axis_tvalid <= pipe_tvalid[DELAY_TOTAL-1];
				m_axis_tlast <= pipe_tlast[DELAY_TOTAL-1];
				m_axis_tdata <= (r_sqrt[DELAY_TOTAL-DELAY_CORDIC-1]>THRESHOLD) ? data_scale : pipe_tdata[DELAY_TOTAL-1];
				
		end
	end
endmodule
