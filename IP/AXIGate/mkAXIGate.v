//
// Generated by Bluespec Compiler, version 2017.07.A (build 1da80f1, 2017-07-21)
//
// On Tue Sep 18 19:11:04 CEST 2018
//
//
// Ports:
// Name                         I/O  size props
// saxi_arready                   O     1 reg
// saxi_rvalid                    O     1 reg
// saxi_rdata                     O    32
// saxi_rresp                     O     2
// saxi_awready                   O     1
// saxi_wready                    O     1
// saxi_bvalid                    O     1 reg
// saxi_bresp                     O     2
// maxi_arvalid                   O     1 reg
// maxi_araddr                    O    32
// maxi_arprot                    O     3
// maxi_rready                    O     1 reg
// maxi_awvalid                   O     1
// maxi_awaddr                    O    32
// maxi_awprot                    O     3
// maxi_wvalid                    O     1
// maxi_wdata                     O    32
// maxi_wstrb                     O     4
// maxi_bready                    O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// saxi_arvalid                   I     1
// saxi_araddr                    I    32 reg
// saxi_arprot                    I     3 reg
// saxi_rready                    I     1
// saxi_awvalid                   I     1
// saxi_awaddr                    I    32
// saxi_awprot                    I     3
// saxi_wvalid                    I     1
// saxi_wdata                     I    32
// saxi_wstrb                     I     4
// saxi_bready                    I     1
// maxi_arready                   I     1
// maxi_rvalid                    I     1
// maxi_rdata                     I    32 reg
// maxi_rresp                     I     2 reg
// maxi_awready                   I     1
// maxi_wready                    I     1
// maxi_bvalid                    I     1
// maxi_bresp                     I     2 reg
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkAXIGate(CLK,
		 RST_N,

		 saxi_arready,

		 saxi_arvalid,

		 saxi_araddr,

		 saxi_arprot,

		 saxi_rvalid,

		 saxi_rready,

		 saxi_rdata,

		 saxi_rresp,

		 saxi_awready,

		 saxi_awvalid,

		 saxi_awaddr,

		 saxi_awprot,

		 saxi_wready,

		 saxi_wvalid,

		 saxi_wdata,

		 saxi_wstrb,

		 saxi_bvalid,

		 saxi_bready,

		 saxi_bresp,

		 maxi_arvalid,

		 maxi_arready,

		 maxi_araddr,

		 maxi_arprot,

		 maxi_rready,

		 maxi_rvalid,

		 maxi_rdata,

		 maxi_rresp,

		 maxi_awready,

		 maxi_awvalid,

		 maxi_awaddr,

		 maxi_awprot,

		 maxi_wready,

		 maxi_wvalid,

		 maxi_wdata,

		 maxi_wstrb,

		 maxi_bvalid,

		 maxi_bready,

		 maxi_bresp);
  parameter [31 : 0] threshold = 32'b0;
  input  CLK;
  input  RST_N;

  // value method saxi_rd_arready
  output saxi_arready;

  // action method saxi_rd_parvalid
  input  saxi_arvalid;

  // action method saxi_rd_paraddr
  input  [31 : 0] saxi_araddr;

  // action method saxi_rd_parprot
  input  [2 : 0] saxi_arprot;

  // value method saxi_rd_rvalid
  output saxi_rvalid;

  // action method saxi_rd_prready
  input  saxi_rready;

  // value method saxi_rd_rdata
  output [31 : 0] saxi_rdata;

  // value method saxi_rd_rresp
  output [1 : 0] saxi_rresp;

  // value method saxi_wr_awready
  output saxi_awready;

  // action method saxi_wr_pawvalid
  input  saxi_awvalid;

  // action method saxi_wr_pawaddr
  input  [31 : 0] saxi_awaddr;

  // action method saxi_wr_pawprot
  input  [2 : 0] saxi_awprot;

  // value method saxi_wr_wready
  output saxi_wready;

  // action method saxi_wr_pwvalid
  input  saxi_wvalid;

  // action method saxi_wr_pwdata
  input  [31 : 0] saxi_wdata;

  // action method saxi_wr_pwstrb
  input  [3 : 0] saxi_wstrb;

  // value method saxi_wr_bvalid
  output saxi_bvalid;

  // action method saxi_wr_pbready
  input  saxi_bready;

  // value method saxi_wr_bresp
  output [1 : 0] saxi_bresp;

  // value method maxi_rd_arvalid
  output maxi_arvalid;

  // action method maxi_rd_parready
  input  maxi_arready;

  // value method maxi_rd_araddr
  output [31 : 0] maxi_araddr;

  // value method maxi_rd_arprot
  output [2 : 0] maxi_arprot;

  // value method maxi_rd_rready
  output maxi_rready;

  // action method maxi_rd_prvalid
  input  maxi_rvalid;

  // action method maxi_rd_prdata
  input  [31 : 0] maxi_rdata;

  // action method maxi_rd_prresp
  input  [1 : 0] maxi_rresp;

  // action method maxi_wr_pawready
  input  maxi_awready;

  // value method maxi_wr_awvalid
  output maxi_awvalid;

  // value method maxi_wr_awaddr
  output [31 : 0] maxi_awaddr;

  // value method maxi_wr_awprot
  output [2 : 0] maxi_awprot;

  // action method maxi_wr_pwready
  input  maxi_wready;

  // value method maxi_wr_wvalid
  output maxi_wvalid;

  // value method maxi_wr_wdata
  output [31 : 0] maxi_wdata;

  // value method maxi_wr_wstrb
  output [3 : 0] maxi_wstrb;

  // action method maxi_wr_pbvalid
  input  maxi_bvalid;

  // value method maxi_wr_bready
  output maxi_bready;

  // action method maxi_wr_pbresp
  input  [1 : 0] maxi_bresp;

  // signals for module outputs
  wire [31 : 0] maxi_araddr, maxi_awaddr, maxi_wdata, saxi_rdata;
  wire [3 : 0] maxi_wstrb;
  wire [2 : 0] maxi_arprot, maxi_awprot;
  wire [1 : 0] saxi_bresp, saxi_rresp;
  wire maxi_arvalid,
       maxi_awvalid,
       maxi_bready,
       maxi_rready,
       maxi_wvalid,
       saxi_arready,
       saxi_awready,
       saxi_bvalid,
       saxi_rvalid,
       saxi_wready;

  // inlined wires
  wire [36 : 0] wr_m_dataOut_rv$port0__write_1,
		wr_m_dataOut_rv$port1__read,
		wr_m_dataOut_rv$port2__read,
		wr_s_dataIn_rv$port0__write_1,
		wr_s_dataIn_rv$port1__read,
		wr_s_dataIn_rv$port2__read;
  wire [35 : 0] wr_m_addrOut_rv$port0__write_1,
		wr_m_addrOut_rv$port1__read,
		wr_m_addrOut_rv$port2__read,
		wr_s_addrIn_rv$port0__write_1,
		wr_s_addrIn_rv$port1__read,
		wr_s_addrIn_rv$port2__read;
  wire wr_m_addrOut_rv$EN_port0__write,
       wr_m_addrOut_rv$EN_port1__write,
       wr_m_dataOut_rv$EN_port0__write,
       wr_m_dataOut_rv$EN_port1__write,
       wr_s_addrIn_rv$EN_port0__write,
       wr_s_addrIn_rv$EN_port1__write,
       wr_s_dataIn_rv$EN_port0__write,
       wr_s_dataIn_rv$EN_port1__write;

  // register wr_m_addrOut_rv
  reg [35 : 0] wr_m_addrOut_rv;
  wire [35 : 0] wr_m_addrOut_rv$D_IN;
  wire wr_m_addrOut_rv$EN;

  // register wr_m_dataOut_rv
  reg [36 : 0] wr_m_dataOut_rv;
  wire [36 : 0] wr_m_dataOut_rv$D_IN;
  wire wr_m_dataOut_rv$EN;

  // register wr_s_addrIn_rv
  reg [35 : 0] wr_s_addrIn_rv;
  wire [35 : 0] wr_s_addrIn_rv$D_IN;
  wire wr_s_addrIn_rv$EN;

  // register wr_s_dataIn_rv
  reg [36 : 0] wr_s_dataIn_rv;
  wire [36 : 0] wr_s_dataIn_rv$D_IN;
  wire wr_s_dataIn_rv$EN;

  // ports of submodule rd_m_in
  wire [34 : 0] rd_m_in$D_IN, rd_m_in$D_OUT;
  wire rd_m_in$CLR, rd_m_in$DEQ, rd_m_in$EMPTY_N, rd_m_in$ENQ, rd_m_in$FULL_N;

  // ports of submodule rd_m_out
  wire [33 : 0] rd_m_out$D_IN, rd_m_out$D_OUT;
  wire rd_m_out$CLR,
       rd_m_out$DEQ,
       rd_m_out$EMPTY_N,
       rd_m_out$ENQ,
       rd_m_out$FULL_N;

  // ports of submodule rd_s_in
  wire [34 : 0] rd_s_in$D_IN, rd_s_in$D_OUT;
  wire rd_s_in$CLR, rd_s_in$DEQ, rd_s_in$EMPTY_N, rd_s_in$ENQ, rd_s_in$FULL_N;

  // ports of submodule rd_s_out
  wire [33 : 0] rd_s_out$D_IN, rd_s_out$D_OUT;
  wire rd_s_out$CLR,
       rd_s_out$DEQ,
       rd_s_out$EMPTY_N,
       rd_s_out$ENQ,
       rd_s_out$FULL_N;

  // ports of submodule wr_m_in
  wire [70 : 0] wr_m_in$D_IN, wr_m_in$D_OUT;
  wire wr_m_in$CLR, wr_m_in$DEQ, wr_m_in$EMPTY_N, wr_m_in$ENQ, wr_m_in$FULL_N;

  // ports of submodule wr_m_out
  wire [1 : 0] wr_m_out$D_IN, wr_m_out$D_OUT;
  wire wr_m_out$CLR,
       wr_m_out$DEQ,
       wr_m_out$EMPTY_N,
       wr_m_out$ENQ,
       wr_m_out$FULL_N;

  // ports of submodule wr_s_in
  wire [70 : 0] wr_s_in$D_IN, wr_s_in$D_OUT;
  wire wr_s_in$CLR, wr_s_in$DEQ, wr_s_in$EMPTY_N, wr_s_in$ENQ, wr_s_in$FULL_N;

  // ports of submodule wr_s_out
  wire [1 : 0] wr_s_out$D_IN, wr_s_out$D_OUT;
  wire wr_s_out$CLR,
       wr_s_out$DEQ,
       wr_s_out$EMPTY_N,
       wr_s_out$ENQ,
       wr_s_out$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_readRes,
       CAN_FIRE_RL_writeRes,
       WILL_FIRE_RL_readReq,
       WILL_FIRE_RL_writeReq;

  // inputs to muxes for submodule ports
  wire MUX_rd_s_out$enq_1__SEL_1,
       MUX_rd_s_out$enq_1__SEL_2,
       MUX_wr_s_out$enq_1__SEL_1,
       MUX_wr_s_out$enq_1__SEL_2;

  // remaining internal signals
  wire [31 : 0] x_addr__h4830, x_addr__h4983;
  wire rd_s_in_first__06_BITS_34_TO_3_07_ULT_threshold___d108,
       wr_s_in_first__21_BITS_70_TO_39_22_ULT_threshold___d123;

  // value method saxi_rd_arready
  assign saxi_arready = rd_s_in$FULL_N ;

  // value method saxi_rd_rvalid
  assign saxi_rvalid = rd_s_out$EMPTY_N ;

  // value method saxi_rd_rdata
  assign saxi_rdata = rd_s_out$EMPTY_N ? rd_s_out$D_OUT[33:2] : 32'd0 ;

  // value method saxi_rd_rresp
  assign saxi_rresp = rd_s_out$EMPTY_N ? rd_s_out$D_OUT[1:0] : 2'd0 ;

  // value method saxi_wr_awready
  assign saxi_awready = !wr_s_addrIn_rv[35] ;

  // value method saxi_wr_wready
  assign saxi_wready = !wr_s_dataIn_rv[36] ;

  // value method saxi_wr_bvalid
  assign saxi_bvalid = wr_s_out$EMPTY_N ;

  // value method saxi_wr_bresp
  assign saxi_bresp = wr_s_out$EMPTY_N ? wr_s_out$D_OUT : 2'd0 ;

  // value method maxi_rd_arvalid
  assign maxi_arvalid = rd_m_in$EMPTY_N ;

  // value method maxi_rd_araddr
  assign maxi_araddr = rd_m_in$EMPTY_N ? rd_m_in$D_OUT[34:3] : 32'd0 ;

  // value method maxi_rd_arprot
  assign maxi_arprot = rd_m_in$EMPTY_N ? rd_m_in$D_OUT[2:0] : 3'd0 ;

  // value method maxi_rd_rready
  assign maxi_rready = rd_m_out$FULL_N ;

  // value method maxi_wr_awvalid
  assign maxi_awvalid = wr_m_addrOut_rv$port1__read[35] ;

  // value method maxi_wr_awaddr
  assign maxi_awaddr =
	     wr_m_addrOut_rv$port1__read[35] ?
	       wr_m_addrOut_rv$port1__read[34:3] :
	       32'd0 ;

  // value method maxi_wr_awprot
  assign maxi_awprot =
	     wr_m_addrOut_rv$port1__read[35] ?
	       wr_m_addrOut_rv$port1__read[2:0] :
	       3'd0 ;

  // value method maxi_wr_wvalid
  assign maxi_wvalid = wr_m_dataOut_rv$port1__read[36] ;

  // value method maxi_wr_wdata
  assign maxi_wdata =
	     wr_m_dataOut_rv$port1__read[36] ?
	       wr_m_dataOut_rv$port1__read[35:4] :
	       32'd0 ;

  // value method maxi_wr_wstrb
  assign maxi_wstrb =
	     wr_m_dataOut_rv$port1__read[36] ?
	       wr_m_dataOut_rv$port1__read[3:0] :
	       4'd0 ;

  // value method maxi_wr_bready
  assign maxi_bready = wr_m_out$FULL_N ;

  // submodule rd_m_in
  SizedFIFO #(.p1width(32'd35),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) rd_m_in(.RST(RST_N),
				       .CLK(CLK),
				       .D_IN(rd_m_in$D_IN),
				       .ENQ(rd_m_in$ENQ),
				       .DEQ(rd_m_in$DEQ),
				       .CLR(rd_m_in$CLR),
				       .D_OUT(rd_m_in$D_OUT),
				       .FULL_N(rd_m_in$FULL_N),
				       .EMPTY_N(rd_m_in$EMPTY_N));

  // submodule rd_m_out
  SizedFIFO #(.p1width(32'd34),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) rd_m_out(.RST(RST_N),
					.CLK(CLK),
					.D_IN(rd_m_out$D_IN),
					.ENQ(rd_m_out$ENQ),
					.DEQ(rd_m_out$DEQ),
					.CLR(rd_m_out$CLR),
					.D_OUT(rd_m_out$D_OUT),
					.FULL_N(rd_m_out$FULL_N),
					.EMPTY_N(rd_m_out$EMPTY_N));

  // submodule rd_s_in
  SizedFIFO #(.p1width(32'd35),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) rd_s_in(.RST(RST_N),
				       .CLK(CLK),
				       .D_IN(rd_s_in$D_IN),
				       .ENQ(rd_s_in$ENQ),
				       .DEQ(rd_s_in$DEQ),
				       .CLR(rd_s_in$CLR),
				       .D_OUT(rd_s_in$D_OUT),
				       .FULL_N(rd_s_in$FULL_N),
				       .EMPTY_N(rd_s_in$EMPTY_N));

  // submodule rd_s_out
  SizedFIFO #(.p1width(32'd34),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) rd_s_out(.RST(RST_N),
					.CLK(CLK),
					.D_IN(rd_s_out$D_IN),
					.ENQ(rd_s_out$ENQ),
					.DEQ(rd_s_out$DEQ),
					.CLR(rd_s_out$CLR),
					.D_OUT(rd_s_out$D_OUT),
					.FULL_N(rd_s_out$FULL_N),
					.EMPTY_N(rd_s_out$EMPTY_N));

  // submodule wr_m_in
  SizedFIFO #(.p1width(32'd71),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) wr_m_in(.RST(RST_N),
				       .CLK(CLK),
				       .D_IN(wr_m_in$D_IN),
				       .ENQ(wr_m_in$ENQ),
				       .DEQ(wr_m_in$DEQ),
				       .CLR(wr_m_in$CLR),
				       .D_OUT(wr_m_in$D_OUT),
				       .FULL_N(wr_m_in$FULL_N),
				       .EMPTY_N(wr_m_in$EMPTY_N));

  // submodule wr_m_out
  SizedFIFO #(.p1width(32'd2),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) wr_m_out(.RST(RST_N),
					.CLK(CLK),
					.D_IN(wr_m_out$D_IN),
					.ENQ(wr_m_out$ENQ),
					.DEQ(wr_m_out$DEQ),
					.CLR(wr_m_out$CLR),
					.D_OUT(wr_m_out$D_OUT),
					.FULL_N(wr_m_out$FULL_N),
					.EMPTY_N(wr_m_out$EMPTY_N));

  // submodule wr_s_in
  SizedFIFO #(.p1width(32'd71),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) wr_s_in(.RST(RST_N),
				       .CLK(CLK),
				       .D_IN(wr_s_in$D_IN),
				       .ENQ(wr_s_in$ENQ),
				       .DEQ(wr_s_in$DEQ),
				       .CLR(wr_s_in$CLR),
				       .D_OUT(wr_s_in$D_OUT),
				       .FULL_N(wr_s_in$FULL_N),
				       .EMPTY_N(wr_s_in$EMPTY_N));

  // submodule wr_s_out
  SizedFIFO #(.p1width(32'd2),
	      .p2depth(32'd8),
	      .p3cntr_width(32'd3),
	      .guarded(32'd1)) wr_s_out(.RST(RST_N),
					.CLK(CLK),
					.D_IN(wr_s_out$D_IN),
					.ENQ(wr_s_out$ENQ),
					.DEQ(wr_s_out$DEQ),
					.CLR(wr_s_out$CLR),
					.D_OUT(wr_s_out$D_OUT),
					.FULL_N(wr_s_out$FULL_N),
					.EMPTY_N(wr_s_out$EMPTY_N));

  // rule RL_writeReq
  assign WILL_FIRE_RL_writeReq =
	     wr_s_in$EMPTY_N && wr_m_in$FULL_N && wr_s_out$FULL_N ;

  // rule RL_readReq
  assign WILL_FIRE_RL_readReq =
	     rd_s_in$EMPTY_N && rd_m_in$FULL_N && rd_s_out$FULL_N ;

  // rule RL_readRes
  assign CAN_FIRE_RL_readRes = rd_s_out$FULL_N && rd_m_out$EMPTY_N ;

  // rule RL_writeRes
  assign CAN_FIRE_RL_writeRes = wr_s_out$FULL_N && wr_m_out$EMPTY_N ;

  // inputs to muxes for submodule ports
  assign MUX_rd_s_out$enq_1__SEL_1 =
	     WILL_FIRE_RL_readReq &&
	     !rd_s_in_first__06_BITS_34_TO_3_07_ULT_threshold___d108 ;
  assign MUX_rd_s_out$enq_1__SEL_2 =
	     CAN_FIRE_RL_readRes && !WILL_FIRE_RL_readReq ;
  assign MUX_wr_s_out$enq_1__SEL_1 =
	     WILL_FIRE_RL_writeReq &&
	     !wr_s_in_first__21_BITS_70_TO_39_22_ULT_threshold___d123 ;
  assign MUX_wr_s_out$enq_1__SEL_2 =
	     CAN_FIRE_RL_writeRes && !WILL_FIRE_RL_writeReq ;

  // inlined wires
  assign wr_s_addrIn_rv$EN_port0__write =
	     !wr_s_addrIn_rv[35] && saxi_awvalid ;
  assign wr_s_addrIn_rv$port0__write_1 = { 1'd1, saxi_awaddr, saxi_awprot } ;
  assign wr_s_addrIn_rv$port1__read =
	     wr_s_addrIn_rv$EN_port0__write ?
	       wr_s_addrIn_rv$port0__write_1 :
	       wr_s_addrIn_rv ;
  assign wr_s_addrIn_rv$EN_port1__write =
	     wr_s_addrIn_rv$port1__read[35] &&
	     wr_s_dataIn_rv$port1__read[36] &&
	     wr_s_in$FULL_N ;
  assign wr_s_addrIn_rv$port2__read =
	     wr_s_addrIn_rv$EN_port1__write ?
	       36'h2AAAAAAAA :
	       wr_s_addrIn_rv$port1__read ;
  assign wr_s_dataIn_rv$EN_port0__write = !wr_s_dataIn_rv[36] && saxi_wvalid ;
  assign wr_s_dataIn_rv$port0__write_1 = { 1'd1, saxi_wdata, saxi_wstrb } ;
  assign wr_s_dataIn_rv$port1__read =
	     wr_s_dataIn_rv$EN_port0__write ?
	       wr_s_dataIn_rv$port0__write_1 :
	       wr_s_dataIn_rv ;
  assign wr_s_dataIn_rv$EN_port1__write =
	     wr_s_addrIn_rv$port1__read[35] &&
	     wr_s_dataIn_rv$port1__read[36] &&
	     wr_s_in$FULL_N ;
  assign wr_s_dataIn_rv$port2__read =
	     wr_s_dataIn_rv$EN_port1__write ?
	       37'h0AAAAAAAAA :
	       wr_s_dataIn_rv$port1__read ;
  assign wr_m_addrOut_rv$EN_port0__write =
	     wr_m_in$EMPTY_N && !wr_m_addrOut_rv[35] && !wr_m_dataOut_rv[36] ;
  assign wr_m_addrOut_rv$port0__write_1 =
	     { 1'd1, wr_m_in$D_OUT[70:39], wr_m_in$D_OUT[2:0] } ;
  assign wr_m_addrOut_rv$port1__read =
	     wr_m_addrOut_rv$EN_port0__write ?
	       wr_m_addrOut_rv$port0__write_1 :
	       wr_m_addrOut_rv ;
  assign wr_m_addrOut_rv$EN_port1__write =
	     wr_m_addrOut_rv$port1__read[35] && maxi_awready ;
  assign wr_m_addrOut_rv$port2__read =
	     wr_m_addrOut_rv$EN_port1__write ?
	       36'h2AAAAAAAA :
	       wr_m_addrOut_rv$port1__read ;
  assign wr_m_dataOut_rv$EN_port0__write =
	     wr_m_in$EMPTY_N && !wr_m_addrOut_rv[35] && !wr_m_dataOut_rv[36] ;
  assign wr_m_dataOut_rv$port0__write_1 = { 1'd1, wr_m_in$D_OUT[38:3] } ;
  assign wr_m_dataOut_rv$port1__read =
	     wr_m_dataOut_rv$EN_port0__write ?
	       wr_m_dataOut_rv$port0__write_1 :
	       wr_m_dataOut_rv ;
  assign wr_m_dataOut_rv$EN_port1__write =
	     wr_m_dataOut_rv$port1__read[36] && maxi_wready ;
  assign wr_m_dataOut_rv$port2__read =
	     wr_m_dataOut_rv$EN_port1__write ?
	       37'h0AAAAAAAAA :
	       wr_m_dataOut_rv$port1__read ;

  // register wr_m_addrOut_rv
  assign wr_m_addrOut_rv$D_IN = wr_m_addrOut_rv$port2__read ;
  assign wr_m_addrOut_rv$EN = 1'b1 ;

  // register wr_m_dataOut_rv
  assign wr_m_dataOut_rv$D_IN = wr_m_dataOut_rv$port2__read ;
  assign wr_m_dataOut_rv$EN = 1'b1 ;

  // register wr_s_addrIn_rv
  assign wr_s_addrIn_rv$D_IN = wr_s_addrIn_rv$port2__read ;
  assign wr_s_addrIn_rv$EN = 1'b1 ;

  // register wr_s_dataIn_rv
  assign wr_s_dataIn_rv$D_IN = wr_s_dataIn_rv$port2__read ;
  assign wr_s_dataIn_rv$EN = 1'b1 ;

  // submodule rd_m_in
  assign rd_m_in$D_IN = { x_addr__h4830, rd_s_in$D_OUT[2:0] } ;
  assign rd_m_in$ENQ =
	     WILL_FIRE_RL_readReq &&
	     rd_s_in_first__06_BITS_34_TO_3_07_ULT_threshold___d108 ;
  assign rd_m_in$DEQ = rd_m_in$EMPTY_N && maxi_arready ;
  assign rd_m_in$CLR = 1'b0 ;

  // submodule rd_m_out
  assign rd_m_out$D_IN = { maxi_rdata, maxi_rresp } ;
  assign rd_m_out$ENQ = rd_m_out$FULL_N && maxi_rvalid ;
  assign rd_m_out$DEQ = MUX_rd_s_out$enq_1__SEL_2 ;
  assign rd_m_out$CLR = 1'b0 ;

  // submodule rd_s_in
  assign rd_s_in$D_IN = { saxi_araddr, saxi_arprot } ;
  assign rd_s_in$ENQ = rd_s_in$FULL_N && saxi_arvalid ;
  assign rd_s_in$DEQ = WILL_FIRE_RL_readReq ;
  assign rd_s_in$CLR = 1'b0 ;

  // submodule rd_s_out
  assign rd_s_out$D_IN = MUX_rd_s_out$enq_1__SEL_1 ? 34'd0 : rd_m_out$D_OUT ;
  assign rd_s_out$ENQ =
	     WILL_FIRE_RL_readReq &&
	     !rd_s_in_first__06_BITS_34_TO_3_07_ULT_threshold___d108 ||
	     CAN_FIRE_RL_readRes && !WILL_FIRE_RL_readReq ;
  assign rd_s_out$DEQ = rd_s_out$EMPTY_N && saxi_rready ;
  assign rd_s_out$CLR = 1'b0 ;

  // submodule wr_m_in
  assign wr_m_in$D_IN = { x_addr__h4983, wr_s_in$D_OUT[38:0] } ;
  assign wr_m_in$ENQ =
	     WILL_FIRE_RL_writeReq &&
	     wr_s_in_first__21_BITS_70_TO_39_22_ULT_threshold___d123 ;
  assign wr_m_in$DEQ =
	     wr_m_in$EMPTY_N && !wr_m_addrOut_rv[35] && !wr_m_dataOut_rv[36] ;
  assign wr_m_in$CLR = 1'b0 ;

  // submodule wr_m_out
  assign wr_m_out$D_IN = maxi_bresp ;
  assign wr_m_out$ENQ = wr_m_out$FULL_N && maxi_bvalid ;
  assign wr_m_out$DEQ = MUX_wr_s_out$enq_1__SEL_2 ;
  assign wr_m_out$CLR = 1'b0 ;

  // submodule wr_s_in
  assign wr_s_in$D_IN =
	     { wr_s_addrIn_rv$port1__read[34:3],
	       wr_s_dataIn_rv$port1__read[35:0],
	       wr_s_addrIn_rv$port1__read[2:0] } ;
  assign wr_s_in$ENQ =
	     wr_s_addrIn_rv$port1__read[35] &&
	     wr_s_dataIn_rv$port1__read[36] &&
	     wr_s_in$FULL_N ;
  assign wr_s_in$DEQ = WILL_FIRE_RL_writeReq ;
  assign wr_s_in$CLR = 1'b0 ;

  // submodule wr_s_out
  assign wr_s_out$D_IN = MUX_wr_s_out$enq_1__SEL_1 ? 2'd0 : wr_m_out$D_OUT ;
  assign wr_s_out$ENQ =
	     WILL_FIRE_RL_writeReq &&
	     !wr_s_in_first__21_BITS_70_TO_39_22_ULT_threshold___d123 ||
	     CAN_FIRE_RL_writeRes && !WILL_FIRE_RL_writeReq ;
  assign wr_s_out$DEQ = wr_s_out$EMPTY_N && saxi_bready ;
  assign wr_s_out$CLR = 1'b0 ;

  // remaining internal signals
  assign rd_s_in_first__06_BITS_34_TO_3_07_ULT_threshold___d108 =
	     rd_s_in$D_OUT[34:3] < threshold ;
  assign wr_s_in_first__21_BITS_70_TO_39_22_ULT_threshold___d123 =
	     wr_s_in$D_OUT[70:39] < threshold ;
  assign x_addr__h4830 = rd_s_in$D_OUT[34:3] + 32'h11000000 ;
  assign x_addr__h4983 = wr_s_in$D_OUT[70:39] + 32'h11000000 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        wr_m_addrOut_rv <= `BSV_ASSIGNMENT_DELAY 36'h2AAAAAAAA;
	wr_m_dataOut_rv <= `BSV_ASSIGNMENT_DELAY 37'h0AAAAAAAAA;
	wr_s_addrIn_rv <= `BSV_ASSIGNMENT_DELAY 36'h2AAAAAAAA;
	wr_s_dataIn_rv <= `BSV_ASSIGNMENT_DELAY 37'h0AAAAAAAAA;
      end
    else
      begin
        if (wr_m_addrOut_rv$EN)
	  wr_m_addrOut_rv <= `BSV_ASSIGNMENT_DELAY wr_m_addrOut_rv$D_IN;
	if (wr_m_dataOut_rv$EN)
	  wr_m_dataOut_rv <= `BSV_ASSIGNMENT_DELAY wr_m_dataOut_rv$D_IN;
	if (wr_s_addrIn_rv$EN)
	  wr_s_addrIn_rv <= `BSV_ASSIGNMENT_DELAY wr_s_addrIn_rv$D_IN;
	if (wr_s_dataIn_rv$EN)
	  wr_s_dataIn_rv <= `BSV_ASSIGNMENT_DELAY wr_s_dataIn_rv$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    wr_m_addrOut_rv = 36'hAAAAAAAAA;
    wr_m_dataOut_rv = 37'h0AAAAAAAAA;
    wr_s_addrIn_rv = 36'hAAAAAAAAA;
    wr_s_dataIn_rv = 37'h0AAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkAXIGate

