`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nvhuynh107@gmail.com
// Engineer: Van-Huynh Nguyen
// 
// Create Date: 06/03/2026 10:06:38 AM
// Design Name: tb
// Module Name: tb
// Project Name: cfr
// Target Devices: KRIA KR260
// Tool Versions: Vivado
// Description: tb for cfr
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
	//SLAVE
	reg [31:0] s_axis_tdata;
	reg [3:0] s_axis_tkeep;
	reg  s_axis_tvalid;
	wire  s_axis_tready;
	reg  s_axis_tlast;
	//fifo
	wire [31:0] fifo_axis_tdata;
	wire [3:0] fifo_axis_tkeep;
	wire  fifo_axis_tvalid;
	wire  fifo_axis_tready;
	wire  fifo_axis_tlast;
	//MASTER
	wire [31:0] m_axis_tdata;
	wire [3:0] m_axis_tkeep;
	wire  m_axis_tvalid;
	reg  m_axis_tready;
	wire  m_axis_tlast;
	integer i=0;
	//call instance 
	fifo_generator_0 fifo_generator_0 (
	  .s_aclk(aclk),                // input wire s_aclk
	  .s_aresetn(aresetn),          // input wire s_aresetn
	  .s_axis_tvalid(s_axis_tvalid),  // input wire s_axis_tvalid
	  .s_axis_tready(s_axis_tready),  // output wire s_axis_tready
	  .s_axis_tdata(s_axis_tdata),    // input wire [31 : 0] s_axis_tdata
	  .s_axis_tkeep(s_axis_tkeep),    // input wire [3 : 0] s_axis_tkeep
	  .s_axis_tlast(s_axis_tlast),    // input wire s_axis_tlast
	  .m_axis_tvalid(fifo_axis_tvalid),  // output wire m_axis_tvalid
	  .m_axis_tready(fifo_axis_tready),  // input wire m_axis_tready
	  .m_axis_tdata(fifo_axis_tdata),    // output wire [31 : 0] m_axis_tdata
	  .m_axis_tkeep(fifo_axis_tkeep),    // output wire [3 : 0] m_axis_tkeep
	  .m_axis_tlast(fifo_axis_tlast)    // output wire m_axis_tlast
	);
	cfr #(32,19660) cfr_i(aclk, aresetn, fifo_axis_tdata, fifo_axis_tkeep, fifo_axis_tvalid, fifo_axis_tready, fifo_axis_tlast,
						  m_axis_tdata, m_axis_tkeep, m_axis_tvalid, m_axis_tready, m_axis_tlast);
	// create resetn and initial others
	initial begin
		aresetn=0;
		aclk=0;
		s_axis_tdata=0;
		s_axis_tkeep=0;
		s_axis_tvalid=0;
		s_axis_tlast=0;
		m_axis_tready=0;
	#60 aresetn=1;
	end
	//create clock
	always #0.5 aclk = !aclk;
	// create others
	initial begin
		wait(aresetn)
		@(posedge aclk) begin
			s_axis_tdata[15:0] <= 0;
			s_axis_tdata[31:16] <= 0;
			s_axis_tkeep <=0;
			s_axis_tvalid <=0;
			s_axis_tlast <=0;
			m_axis_tready <=0;
		end
		for (i=0;i<10;i=i+1) begin
			@(posedge aclk) begin
				s_axis_tdata[15:0] <= -3276*i;
				s_axis_tdata[31:16] <= -3276*i;
				s_axis_tkeep <=4'b1111;
				s_axis_tvalid <=1;
				s_axis_tlast <=0;
				m_axis_tready <=1;
			end
		end
		for (i=0;i<10;i=i+1) begin
			@(posedge aclk) begin
				s_axis_tdata[15:0] <= -3276*i;
				s_axis_tdata[31:16] <= -3276*i;
				s_axis_tkeep <=4'b1111;
				s_axis_tvalid <=1;
				s_axis_tlast <=i==9;
				m_axis_tready <=0;
			end
		end
		for (i=0;i<100;i=i+1) begin
			@(posedge aclk) begin
				m_axis_tready <=0;
				s_axis_tvalid <=0;
			end
		end
		for (i=0;i<100;i=i+1) begin
			@(posedge aclk) begin
				m_axis_tready <=1;
				s_axis_tvalid <=0;
			end
		end

	
	end
endmodule
