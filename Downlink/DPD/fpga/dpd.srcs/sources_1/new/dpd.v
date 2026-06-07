`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/05/2026 11:16:30 AM
// Design Name: dpd
// Module Name: dpd
// Project Name: dpd
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: dpd
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dpd #(parameter WIDTH=32)(
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
	output 				m_axis_tvalid,
	input 				m_axis_tready,
	output 				m_axis_tlast
    );
	//AXI Stream staWIDTH/2;ll control
	localparam TW= WIDTH/2;
	wire pipe_en;
	//delay input 
	wire [TW-1:0] i_in;
	wire [TW-1:0] q_in;
	reg  [TW-1:0] i_nm [4:0];
	reg  [TW-1:0] q_nm [4:0];
	//square x[n-m]^2=i^2+q^2
	wire [TW:0] power_2 [0:4];
	//square x[n-m]^4=(i^2+q^2)^2
	wire [TW+1:0] power_4 [0:4];
	genvar gp;
	//calib delay
	wire  [TW-1:0] d_i_nm [4:0];
	wire  [TW-1:0] d_q_nm [4:0];
	wire  [TW:0] d_power_2 [4:0];
	//x * envelope  or xnm*x^2 orxnm*x^4
	wire  [TW+1:0] basic [23:0];
	//term=basic*coeffient
	wire  [TW+1:0] term [23:0];
	//total=total(term)
	wire  [TW+1+5:0] total ;
	//stall control
	assign pipe_en = m_axis_tready || (!m_axis_tvalid);
	assign s_axis_tready = pipe_en;
	//delay x[n-m] m_max=4
	assign i_in= s_axis_tdata[TW-1:0];
	assign q_in= s_axis_tdata[WIDTH-1:TW];

	always @(posedge aclk) begin
		if(!aresetn) begin
			for (i=0;i<5;i=i+1) begin
				i_nm[i] <=0;
				q_nm[i] <=0;
			end
		end
		else if (pipe_en) begin
			if (s_axis_tvalid&s_axis_tready)
				i_nm[0] <= i_in;
				q_nm[0] <= i_in;
				for (i=1;i<5;i=i+1) begin
					i_nm[i] <=i_nm[i-1];
					q_nm[i] <=q_nm[i-1];
				end
		end
	end
	//x[n-m]^2=i^2+q^2
	generate
		for(gp=0;gp<5;gp=gp+1) begin: gen_power_2
			power2 power2 (aclk, aresetn, pipe_en, i_nm[gp], q_nm[gp], power_2[gp]);
		end
	endgenerate
	//x[n-m]^4=(x[n-m]^2)^2
	generate
		for(gp=0;gp<5;gp=gp+1) begin: gen_power_4
			power4 power4 (aclk, aresetn, pipe_en, power_2[gp], power_4[gp]);
		end
	endgenerate
	//calib delay
	delay #(16,1,4) delay1 (aclk, aresetn, pipe_en, i_nm, d_i_nm);
	delay #(16,1,4) delay2 (aclk, aresetn, pipe_en, q_nm, d_q_nm);
	delay #(17,1,4) delay3 (aclk, aresetn, pipe_en, power_2, d_power_2);
	//basic=x * envelope  or xnm*x^2 orxnm*x^4
	generate
		for(gp=0;gp<24;gp=gp+1) begin: gen_basic_data
			gen_basic gen_basic_i (aclk, aresetn, pipe_en, d_i_nm[gp], env_i[gp], basic_i[gp]);
			gen_basic gen_basic_q (aclk, aresetn, pipe_en, d_q_nm[gp], env_q[gp], basic_q[gp]);
		end
	endgenerate
	//term=basic*coeffient
	generate
		for(gp=0;gp<24;gp=gp+1) begin: gen_basic_data
			gen_term gen_term_1 (aclk, aresetn, pipe_en, basic[gp], coe[gp], term[gp]);
		end
	endgenerate
	//total 
	total total (aclk, aresetn, pipe_en, term, total);
endmodule
