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
	output reg [WIDTH-1:0]   m_axis_tdata,
	output reg [WIDTH/8-1:0] m_axis_tkeep,
	output reg			m_axis_tvalid,
	input 				m_axis_tready,
	output reg 			m_axis_tlast
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
	wire [WIDTH-1:0] power_2 [0:4];
	//square x[n-m]^4=(i^2+q^2)^2
	wire [WIDTH-1:0] power_4 [0:4];
	integer i;
	genvar gp;
	genvar gp3;
	//calib delay
	wire  [TW*5-1:0] i_nm_bus;
	wire  [TW*5-1:0] q_nm_bus;
	wire  [WIDTH*5-1:0] power_2_bus;
	
	wire  [TW*5-1:0] d_i_nm_bus;
	wire  [TW*5-1:0] d_q_nm_bus;
	wire  [WIDTH*5-1:0] d_power_2_bus;
	//extract after delay
	reg  [TW-1:0] d_i_nm [4:0];
	reg  [TW-1:0] d_q_nm [4:0];
	reg  [WIDTH-1:0] d_power_2 [4:0];
	//x * envelope  or xnm*x^2 orxnm*x^4
	wire  [TW-1:0] i_basic [23:0];
	wire  [TW-1:0] q_basic [23:0];
	wire [WIDTH-1:0] env [0:23];
	//term=basic*coeffient
	wire  [TW-1:0] i_coe [23:0];
	wire  [TW-1:0] q_coe [23:0];
	wire  [TW-1:0] i_term [23:0];
	wire  [TW-1:0] q_term [23:0];
	//total=total(term)
	reg  [TW+2:0] i_total1, i_total2, i_total3, i_total4;
	reg  [TW+2:0] q_total1, q_total2, q_total3, q_total4;
	reg  [TW+4:0] i_total_o, q_total_o ;
	wire  d_s_axis_tvalid ;
	wire  d_s_axis_tlast ;
	wire  [WIDTH/8-1:0] d_s_axis_tkeep ;
	
	
	
	//----START-----
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
			if (s_axis_tvalid&s_axis_tready) begin
				i_nm[0] <= i_in;
				q_nm[0] <= q_in;
				for (i=1;i<5;i=i+1) begin
					i_nm[i] <=i_nm[i-1];
					q_nm[i] <=q_nm[i-1];
				end
			
			end

		end
	end
	//x[n-m]^2=i^2+q^2
	//
	generate
		for(gp=0;gp<5;gp=gp+1) begin: gen_power_2
			power2 #(TW) power2 (aclk, aresetn, pipe_en, i_nm[gp], q_nm[gp], power_2[gp]);
		end
	endgenerate
	//x[n-m]^4=(x[n-m]^2)^2
	generate
		for(gp=0;gp<5;gp=gp+1) begin: gen_power_4
			power4 #(WIDTH) power4 (aclk, aresetn, pipe_en, power_2[gp], power_4[gp]);
		end
	endgenerate
	//calib delay
	assign i_nm_bus= {i_nm[4], i_nm[3], i_nm[2], i_nm[1], i_nm[0]};
	assign q_nm_bus= {q_nm[4], q_nm[3], q_nm[2], q_nm[1], q_nm[0]};
	assign power_2_bus= {power_2[4], power_2[3], power_2[2], power_2[1], power_2[0]};
	delay #(TW*5,2) delay1 (aclk, aresetn, pipe_en, i_nm_bus, d_i_nm_bus);
	delay #(TW*5,2) delay2 (aclk, aresetn, pipe_en, q_nm_bus, d_q_nm_bus);
	delay #(WIDTH*5,1) delay3 (aclk, aresetn, pipe_en, power_2_bus, d_power_2_bus);
	//extract to d_i_nm, d_q_nm, d_power_2
	always @(*) begin
		for (i=0;i<5;i=i+1) begin
			d_i_nm[i] = d_i_nm_bus>>(16*i);
			d_q_nm[i] = d_q_nm_bus>>(16*i);
			d_power_2[i] = d_power_2_bus>>(32*i);
		end
	end
	//envelop selection
	//a1
	assign env[0] = 32'd1073741824; //1*x[n-0]
	assign env[1] = 32'd1073741824; //1*x[n-1]
	assign env[2] = 32'd1073741824; //1*x[n-2]
	assign env[3] = 32'd1073741824; //1*x[n-3]
	//a3
	assign env[4] = d_power_2[0]; //x[n-0]*x[n-0]^2
	assign env[5] = d_power_2[1]; //x[n-1]*x[n-1]^2
	assign env[6] = d_power_2[2]; //x[n-2]*x[n-2]^2
	assign env[7] = d_power_2[3]; //x[n-3]*x[n-3]^2
	//a5
	assign env[8] =  power_4[0]; //x[n-0]*x[n-0]^4
	assign env[9] =  power_4[1]; //x[n-1]*x[n-1]^4
	assign env[10] = power_4[2]; //x[n-2]*x[n-2]^4
	assign env[11] = power_4[3]; //x[n-3]*x[n-3]^4
	//b3
	assign env[12] = d_power_2[1]; //x[n-0]*x[n-1]^2
	assign env[13] = d_power_2[2]; //x[n-0]*x[n-2]^2
	assign env[14] = d_power_2[2]; //x[n-1]*x[n-2]^2
	assign env[15] = d_power_2[3]; //x[n-1]*x[n-3]^2
	assign env[16] = d_power_2[3]; //x[n-2]*x[n-3]^2
	assign env[17] = d_power_2[4]; //x[n-2]*x[n-4]^2
	//a5
	assign env[18] =  power_4[1]; //x[n-0]*x[n-1]^2
	assign env[19] =  power_4[2]; //x[n-0]*x[n-2]^2
	assign env[20] =  power_4[2]; //x[n-1]*x[n-2]^2
	assign env[21] =  power_4[3]; //x[n-1]*x[n-3]^2
	assign env[22] =  power_4[3]; //x[n-2]*x[n-3]^2
	assign env[23] =  power_4[4]; //x[n-2]*x[n-4]^2
	//basic=x * envelope  or xnm*x^2 orxnm*x^4
	generate
		for(gp=0;gp<24;gp=gp+1) begin: gen_basic_data
			localparam gp3 = (gp < 12) ? (gp % 4) : (((gp - 12) % 6)/2);	
			gen_basic #(TW) gen_basic_i (aclk, aresetn, pipe_en, d_i_nm[gp3], env[gp], i_basic[gp]);
			gen_basic #(TW) gen_basic_q (aclk, aresetn, pipe_en, d_q_nm[gp3], env[gp], q_basic[gp]);
			
		end
	endgenerate
	//term=basic*coeffient
	// main p = 1
	assign i_coe[0]  = 16'd16384;      assign q_coe[0]  = 16'd0;
	assign i_coe[1]  = 16'd197;        assign q_coe[1]  = 16'd33;
	assign i_coe[2]  = 16'd130974;     assign q_coe[2]  = 16'd131056;
	assign i_coe[3]  = 16'd49;         assign q_coe[3]  = 16'd8;

	// main p = 3
	assign i_coe[4]  = 16'd1311;       assign q_coe[4]  = 16'd98;
	assign i_coe[5]  = 16'd328;        assign q_coe[5]  = 16'd131023;
	assign i_coe[6]  = 16'd130875;     assign q_coe[6]  = 16'd25;
	assign i_coe[7]  = 16'd98;         assign q_coe[7]  = 16'd0;

	// main p = 5
	assign i_coe[8]  = 16'd130662;     assign q_coe[8]  = 16'd131039;
	assign i_coe[9]  = 16'd130941;     assign q_coe[9]  = 16'd16;
	assign i_coe[10] = 16'd66;         assign q_coe[10] = 16'd0;
	assign i_coe[11] = 16'd131039;     assign q_coe[11] = 16'd0;

	// cross p = 3
	assign i_coe[12] = 16'd246;        assign q_coe[12] = 16'd33;
	assign i_coe[13] = 16'd130908;     assign q_coe[13] = 16'd131047;
	assign i_coe[14] = 16'd131;        assign q_coe[14] = 16'd16;
	assign i_coe[15] = 16'd131006;     assign q_coe[15] = 16'd0;
	assign i_coe[16] = 16'd49;         assign q_coe[16] = 16'd131064;
	assign i_coe[17] = 16'd131039;     assign q_coe[17] = 16'd0;

	// cross p = 5
	assign i_coe[18] = 16'd130974;     assign q_coe[18] = 16'd131056;
	assign i_coe[19] = 16'd66;         assign q_coe[19] = 16'd8;
	assign i_coe[20] = 16'd131023;     assign q_coe[20] = 16'd0;
	assign i_coe[21] = 16'd33;         assign q_coe[21] = 16'd0;
	assign i_coe[22] = 16'd131047;     assign q_coe[22] = 16'd0;
	assign i_coe[23] = 16'd16;         assign q_coe[23] = 16'd0;
	generate
		for(gp=0;gp<24;gp=gp+1) begin: gen_term
			gen_term #(TW) gen_term_1 (aclk, aresetn, pipe_en, i_basic[gp], q_basic[gp], i_coe[gp], q_coe[gp], i_term[gp], q_term[gp]);
		end
	endgenerate
	//concat term
	//total 
	always @(posedge aclk) begin
		if (!aresetn) begin
			i_total1 <=0 ;
			i_total2 <=0 ;
			i_total3 <=0 ;
			i_total4 <=0 ;
			i_total_o <=0 ;
			q_total1 <=0 ;
			q_total2 <=0 ;
			q_total3 <=0 ;
			q_total4 <=0 ;
			q_total_o <=0 ;
		end
		else if (pipe_en) begin
			i_total1 <= {{3{i_term[0][TW-1]}},i_term[0]} + {{3{i_term[4][TW-1]}},i_term[4]}+ {{3{i_term[8][TW-1]}},i_term[8]}
						+  {{3{i_term[12][TW-1]}},i_term[12]}+ {{3{i_term[16][TW-1]}},i_term[16]} + {{3{i_term[20][TW-1]}},i_term[20]};
			i_total2 <= {{3{i_term[1][TW-1]}},i_term[1]} + {{3{i_term[5][TW-1]}},i_term[5]}+ {{3{i_term[9][TW-1]}},i_term[9]}
						+  {{3{i_term[13][TW-1]}},i_term[13]}+ {{3{i_term[17][TW-1]}},i_term[17]} + {{3{i_term[21][TW-1]}},i_term[21]};
			i_total3 <= {{3{i_term[2][TW-1]}},i_term[2]} + {{3{i_term[6][TW-1]}},i_term[6]}+ {{3{i_term[10][TW-1]}},i_term[10]}
						+  {{3{i_term[14][TW-1]}},i_term[14]}+ {{3{i_term[18][TW-1]}},i_term[18]} + {{3{i_term[22][TW-1]}},i_term[22]};
			i_total4 <= {{3{i_term[3][TW-1]}},i_term[3]} + {{3{i_term[7][TW-1]}},i_term[7]}+ {{3{i_term[11][TW-1]}},i_term[11]}
						+  {{3{i_term[15][TW-1]}},i_term[15]}+ {{3{i_term[19][TW-1]}},i_term[19]} + {{3{i_term[23][TW-1]}},i_term[23]};
			
			q_total1 <= {{3{q_term[0][TW-1]}},q_term[0]} + {{3{q_term[4][TW-1]}},q_term[4]}+ {{3{q_term[8][TW-1]}},q_term[8]}
						+  {{3{q_term[12][TW-1]}},q_term[12]}+ {{3{q_term[16][TW-1]}},q_term[16]} + {{3{q_term[20][TW-1]}},q_term[20]};
			q_total2 <= {{3{q_term[1][TW-1]}},q_term[1]} + {{3{q_term[5][TW-1]}},q_term[5]}+ {{3{q_term[9][TW-1]}},q_term[9]}
						+  {{3{q_term[13][TW-1]}},q_term[13]}+ {{3{q_term[17][TW-1]}},q_term[17]} + {{3{q_term[21][TW-1]}},q_term[21]};
			q_total3 <= {{3{q_term[2][TW-1]}},q_term[2]} + {{3{q_term[6][TW-1]}},q_term[6]}+ {{3{q_term[10][TW-1]}},q_term[10]}
						+  {{3{q_term[14][TW-1]}},q_term[14]}+ {{3{q_term[18][TW-1]}},q_term[18]} + {{3{q_term[22][TW-1]}},q_term[22]};
			q_total4 <= {{3{q_term[3][TW-1]}},q_term[3]} + {{3{q_term[7][TW-1]}},q_term[7]}+ {{3{q_term[11][TW-1]}},q_term[11]}
						+  {{3{q_term[15][TW-1]}},q_term[15]}+ {{3{q_term[19][TW-1]}},q_term[19]} + {{3{q_term[23][TW-1]}},q_term[23]};
			i_total_o <= i_total1+ i_total2+ i_total3+ i_total4;
			q_total_o <= q_total1+ q_total2+ q_total3+ q_total4;
		end
	end
	//delay input
	delay #(1,12) delay_tvalid (aclk, aresetn, pipe_en, s_axis_tvalid&s_axis_tready, d_s_axis_tvalid);
	delay #(1,12) delay_tlast (aclk, aresetn, pipe_en, s_axis_tlast&s_axis_tvalid&s_axis_tready, d_s_axis_tlast);
	delay #(WIDTH/8,12) delay_tkeep (aclk, aresetn, pipe_en, s_axis_tvalid&s_axis_tready ? s_axis_tkeep:4'd0, d_s_axis_tkeep);
	//output
	always @(posedge aclk) begin
		if (!aresetn) begin
			m_axis_tdata <=0;
			m_axis_tkeep <=0;
			m_axis_tvalid <=0;
			m_axis_tlast <=0;
		end
		else if (pipe_en) begin
			m_axis_tdata[TW-1:0] <=  ((!i_total_o[TW+4])&(i_total_o[TW+4]>32767)) ? 16'd32767 : 
									(i_total_o[TW+4]&(i_total_o[TW+4]>2064384) ? 16'd32768: i_total_o[15:0]);
			m_axis_tdata[WIDTH-1:TW] <=  ((!q_total_o[TW+4]&(q_total_o[TW+4]>32767))) ? 16'd32767 : 
									(q_total_o[TW+4]&(q_total_o[TW+4]>2064384) ? 16'd32768: q_total_o[15:0]);
			m_axis_tkeep <= d_s_axis_tkeep; 
			m_axis_tvalid <= d_s_axis_tvalid; 
			m_axis_tlast <= d_s_axis_tlast; 
		end
	end
endmodule
