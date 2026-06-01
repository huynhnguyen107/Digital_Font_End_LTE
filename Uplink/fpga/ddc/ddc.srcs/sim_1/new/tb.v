`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 05/30/2026 08:08:32 PM
// Design Name: tb
// Module Name: tb
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


module tb(
    );
	reg aclk;
	reg aresetn;
	reg [31:0] s_axis_tdata;
	reg [3:0]  s_axis_tkeep;
	reg        s_axis_tvalid;
	reg        s_axis_tlast;
	wire       s_axis_tready;
	integer i=0;
	//fifo
	wire [31:0] fifo_axis_tdata;
	wire [3:0]  fifo_axis_tkeep;
	wire        fifo_axis_tvalid;
	wire        fifo_axis_tready;
	wire        fifo_axis_tlast;
	//fir1
	wire [31:0] fir1_axis_tdata;
	wire [3:0]  fir1_axis_tkeep;
	wire        fir1_axis_tvalid;
	wire        fir1_axis_tready;
	wire        fir1_axis_tlast;
	//deci1
	wire [31:0] deci1_axis_tdata;
	wire [3:0]  deci1_axis_tkeep;
	wire        deci1_axis_tvalid;
	wire        deci1_axis_tready;
	wire        deci1_axis_tlast;
	//fir2
	wire [31:0] fir2_axis_tdata;
	wire [3:0]  fir2_axis_tkeep;
	wire        fir2_axis_tvalid;
	wire        fir2_axis_tready;
	wire        fir2_axis_tlast;
	//MASTER
	wire [31:0] m_axis_tdata;
	wire [3:0]  m_axis_tkeep;
	wire        m_axis_tvalid;
	wire        m_axis_tlast;
	reg         m_axis_tready;
	//call instance
	ddc_axis_data_fifo_0 ddc_axis_data_fifo_0 (
	  .s_axis_aresetn(aresetn),  // input wire s_axis_aresetn
	  .s_axis_aclk(aclk),        // input wire s_axis_aclk
	  .s_axis_tvalid(s_axis_tvalid),    // input wire s_axis_tvalid
	  .s_axis_tready(s_axis_tready),    // output wire s_axis_tready
	  .s_axis_tdata(s_axis_tdata),      // input wire [31 : 0] s_axis_tdata
	  .s_axis_tkeep(s_axis_tkeep),      // input wire [3 : 0] s_axis_tkeep
	  .s_axis_tlast(s_axis_tlast),      // input wire s_axis_tlast
	  .m_axis_tvalid(fifo_axis_tvalid),    // output wire m_axis_tvalid
	  .m_axis_tready(fifo_axis_tready),    // input wire m_axis_tready
	  .m_axis_tdata(fifo_axis_tdata),      // output wire [31 : 0] m_axis_tdata
	  .m_axis_tkeep(fifo_axis_tkeep),      // output wire [3 : 0] m_axis_tkeep
	  .m_axis_tlast(fifo_axis_tlast)      // output wire m_axis_tlast
	);
	axis_halfband_fir #(32) axis_halfband_fir_1(aclk, aresetn, fifo_axis_tdata, fifo_axis_tkeep, fifo_axis_tvalid,  fifo_axis_tready, fifo_axis_tlast,
												fir1_axis_tdata, fir1_axis_tkeep, fir1_axis_tvalid, fir1_axis_tready, fir1_axis_tlast);
	axis_decimate2 #(32) axis_decimate2_1(aclk, aresetn, fir1_axis_tdata, fir1_axis_tkeep, fir1_axis_tvalid,  fir1_axis_tready,fir1_axis_tlast, 
												deci1_axis_tdata, deci1_axis_tkeep, deci1_axis_tvalid, deci1_axis_tready, deci1_axis_tlast);
	axis_halfband_fir #(32) axis_halfband_fir_2(aclk, aresetn, deci1_axis_tdata, deci1_axis_tkeep, deci1_axis_tvalid,  deci1_axis_tready, deci1_axis_tlast,
												fir2_axis_tdata, fir2_axis_tkeep, fir2_axis_tvalid, fir2_axis_tready, fir2_axis_tlast);
	axis_decimate2 #(32) axis_decimate2_2(aclk, aresetn, fir2_axis_tdata, fir2_axis_tkeep, fir2_axis_tvalid,  fir2_axis_tready,fir2_axis_tlast, 
												m_axis_tdata, m_axis_tkeep, m_axis_tvalid, m_axis_tready, m_axis_tlast);
	//create resetn and initial others
	initial begin
		aresetn = 0;
		aclk = 0;
		s_axis_tdata = 0;
		s_axis_tkeep = 0;
		s_axis_tvalid = 0;
		s_axis_tlast = 0;
		m_axis_tready = 0;
	#50 aresetn = 1;
	end
	//create clock
	always #0.5 aclk=!aclk;
	//data_in
	reg [31:0] data_in [39:0];
	initial begin
		data_in[0] = 32'hFFF8FFDD; 
		data_in[1] = 32'h00000000; 
		data_in[2] = 32'h00430139; 
		data_in[3] = 32'h0078022E;
		data_in[4] = 32'h0083026A; 
		data_in[5] = 32'h00000000; 
		data_in[6] = 32'hFE2EF756; 
		data_in[7] = 32'hFBFBECF8;
		data_in[8] = 32'hFA01E350; 
		data_in[9] = 32'hF874DD1F; 
		data_in[10] = 32'hF79DDF65; 
		data_in[11] = 32'hF7CAE5C0;
		data_in[12] = 32'hF8F0ED91; 
		data_in[13] = 32'hFC5CF68E; 
		data_in[14] = 32'h045AFFCC; 
		data_in[15] = 32'h0DE10882;
		data_in[16] = 32'h1727104C; 
		data_in[17] = 32'h1EAF1506; 
		data_in[18] = 32'h21DB1340; 
		data_in[19] = 32'h22400E78;
		data_in[20] = 32'h20ED08BB; 
		data_in[21] = 32'h1CD502EA; 
		data_in[22] = 32'h1461FEB7; 
		data_in[23] = 32'h0A3BFBAD;
		data_in[24] = 32'hFFFAF968; 
		data_in[25] = 32'hF73EF95C; 
		data_in[26] = 32'hF2BAFDD1; 
		data_in[27] = 32'hF0C703E7;
		data_in[28] = 32'hF04E09F3; 
		data_in[29] = 32'hF2430E94; 
		data_in[30] = 32'hF8050F4C; 
		data_in[31] = 32'hFF390DBB;
		data_in[32] = 32'h067A0AEB; 
		data_in[33] = 32'h0C3D0614; 
		data_in[34] = 32'h0DE2FE0E; 
		data_in[35] = 32'h0D35F4FA;
		data_in[36] = 32'h0B5FEC0C; 
		data_in[37] = 32'h07A9E4DC; 
		data_in[38] = 32'h010DE21B; 
		data_in[39] = 32'hF9A0E1AE;
	end
	//create others
	initial begin
		wait(aresetn)
		@(posedge aclk) begin
			s_axis_tdata <= 0;
			s_axis_tkeep <= 0;
			s_axis_tvalid <= 0;
			s_axis_tlast <= 0;
			m_axis_tready <= 0;
		end
		for (i=0;i<40;i=i+1) begin
			@(posedge aclk) begin
				s_axis_tdata <= data_in[i];
				s_axis_tkeep <= 4'b1111;
				s_axis_tvalid <= 1;
				s_axis_tlast <= i==39;
				m_axis_tready <= 1;
			end
		end
		@(posedge aclk) begin
			s_axis_tdata <= 0;
			s_axis_tkeep <= 0;
			s_axis_tvalid <= 0;
			s_axis_tlast <= 0;
			m_axis_tready <= 1;
		end
	end
endmodule
