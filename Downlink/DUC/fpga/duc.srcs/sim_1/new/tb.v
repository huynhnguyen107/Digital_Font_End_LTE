`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 05/29/2026 10:26:49 AM
// Design Name: tb
// Module Name: tb
// Project Name: DUC
// Target Devices: KRIA KC260
// Tool Versions: Vivado
// Description: DUC for LTE
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(
    );
	reg aclk;
	reg aresetn;
	//in
	reg [31:0] s_axis_tdata;
	reg [3:0]  s_axis_tkeep;
	reg 	   s_axis_tvalid;
	wire 	   s_axis_tready;
	reg 	   s_axis_tlast;
	//fifo
	wire [31:0] m_fifo_axis_tdata;
	wire [3:0]  m_fifo_axis_tkeep;
	wire 	    m_fifo_axis_tvalid;
	wire 	    m_fifo_axis_tready;
	wire 	    m_fifo_axis_tlast;
	//m_upsample1
	wire [31:0] m_upsample1_axis_tdata;
	wire [3:0]  m_upsample1_axis_tkeep;
	wire 	    m_upsample1_axis_tvalid;
	wire 	    m_upsample1_axis_tready;
	wire 	    m_upsample1_axis_tlast;
	//m_fir1
	wire [31:0] m_fir1_axis_tdata;
	wire [3:0]  m_fir1_axis_tkeep;
	wire 	    m_fir1_axis_tvalid;
	wire 	    m_fir1_axis_tready;
	wire 	    m_fir1_axis_tlast;
	//m_upsample2
	wire [31:0] m_upsample2_axis_tdata;
	wire [3:0]  m_upsample2_axis_tkeep;
	wire 	    m_upsample2_axis_tvalid;
	wire 	    m_upsample2_axis_tready;
	wire 	    m_upsample2_axis_tlast;
	//out
	wire [31:0] m_axis_tdata;
	wire [3:0]  m_axis_tkeep;
	wire 	    m_axis_tvalid;
	reg 	    m_axis_tready;
	wire 	    m_axis_tlast;
	integer i=0;
	//data_in
	reg [31:0] data_in [9:0] ;
	initial begin
		data_in[0] = 32'hF874DD1F;
		data_in[1] = 32'hFC5CF68E;
		data_in[2] = 32'h1EAF1506;
		data_in[3] = 32'h1CD502EA;
		data_in[4] = 32'hF73EF95C;
		data_in[5] = 32'hF2430E94;
		data_in[6] = 32'h0C3D0614;
		data_in[7] = 32'h07A9E4DC;
		data_in[8] = 32'hED81E42E;
		data_in[9] = 32'hF837F062;
	end
	//call instance
	tb_axis_data_fifo_0 tb_axis_data_fifo_0 (
	  .s_axis_aresetn(aresetn),  // input wire s_axis_aresetn
	  .s_axis_aclk(aclk),        // input wire s_axis_aclk
	  .s_axis_tvalid(s_axis_tvalid),    // input wire s_axis_tvalid
	  .s_axis_tready(s_axis_tready),    // output wire s_axis_tready
	  .s_axis_tdata(s_axis_tdata),      // input wire [31 : 0] s_axis_tdata
	  .s_axis_tkeep(s_axis_tkeep),      // input wire [3 : 0] s_axis_tkeep
	  .s_axis_tlast(s_axis_tlast),      // input wire s_axis_tlast
	  .m_axis_tvalid(m_fifo_axis_tvalid),    // output wire m_axis_tvalid
	  .m_axis_tready(m_fifo_axis_tready),    // input wire m_axis_tready
	  .m_axis_tdata(m_fifo_axis_tdata),      // output wire [31 : 0] m_axis_tdata
	  .m_axis_tkeep(m_fifo_axis_tkeep),      // output wire [3 : 0] m_axis_tkeep
	  .m_axis_tlast(m_fifo_axis_tlast)      // output wire m_axis_tlast
	);
	axis_upsample #(32) axis_upsample_1 (aclk, aresetn, m_fifo_axis_tdata, m_fifo_axis_tkeep, m_fifo_axis_tvalid, m_fifo_axis_tready, m_fifo_axis_tlast,
						m_upsample1_axis_tdata, 	m_upsample1_axis_tkeep, m_upsample1_axis_tvalid, m_upsample1_axis_tready, m_upsample1_axis_tlast);
	halfband_fir #(32) halfband_fir_1 (aclk, aresetn, m_upsample1_axis_tdata, m_upsample1_axis_tkeep, m_upsample1_axis_tvalid, m_upsample1_axis_tready, m_upsample1_axis_tlast,
						m_fir1_axis_tdata, 	m_fir1_axis_tkeep, m_fir1_axis_tvalid, m_fir1_axis_tready, m_fir1_axis_tlast);
	axis_upsample #(32) axis_upsample_2 (aclk, aresetn, m_fir1_axis_tdata, m_fir1_axis_tkeep, m_fir1_axis_tvalid, m_fir1_axis_tready, m_fir1_axis_tlast,
						m_upsample2_axis_tdata, 	m_upsample2_axis_tkeep, m_upsample2_axis_tvalid, m_upsample2_axis_tready, m_upsample2_axis_tlast);
	halfband_fir #(32) halfband_fir_2 (aclk, aresetn, m_upsample2_axis_tdata, m_upsample2_axis_tkeep, m_upsample2_axis_tvalid, m_upsample2_axis_tready, m_upsample2_axis_tlast,
						m_axis_tdata, 	m_axis_tkeep, m_axis_tvalid, m_axis_tready, m_axis_tlast);
	
	//create resetn and initial others
	initial begin
		aresetn =0;
		aclk =0;
		s_axis_tdata =0;
		s_axis_tkeep =0;
		s_axis_tvalid =0;
		m_axis_tready =0;
		s_axis_tlast =0;
	#60 aresetn =1;
	end
	//create clock
	always #0.5 aclk = !aclk;
	//create others
	initial begin
		wait(aresetn)
		@(posedge aclk) begin
			s_axis_tdata <= 0;
			s_axis_tkeep <= 0;
			s_axis_tvalid <= 0;
			m_axis_tready <= 0;
			s_axis_tlast <= 0;
		end
		for (i=0 ; i< 10; i=i+1) begin
			@(posedge aclk) begin
				s_axis_tdata <= data_in[i];
				s_axis_tkeep <= 4'b1111;
				s_axis_tvalid <= 1;
				m_axis_tready <= 1;
				s_axis_tlast <= (i==9);		
			end
		end
		@(posedge aclk) begin
			s_axis_tdata <= 0;
			s_axis_tkeep <= 0;
			s_axis_tvalid <= 0;
			m_axis_tready <= 1;
			s_axis_tlast <= 0;
		end
	end
						
								
endmodule
