// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr 10 13:55:49 2026
// Host        : DESKTOP-FTS51RT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vmber/Desktop/zynq-collision-monitor/zynq_collision_monitor/zynq_collision_monitor.gen/sources_1/bd/zynq_system/ip/zynq_system_collision_monitor_ip_0_0/zynq_system_collision_monitor_ip_0_0_sim_netlist.v
// Design      : zynq_system_collision_monitor_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_system_collision_monitor_ip_0_0,collision_monitor_ip,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "collision_monitor_ip,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module zynq_system_collision_monitor_ip_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zynq_system_collision_monitor_ip_0_0_collision_monitor_ip U0
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "collision_monitor" *) 
module zynq_system_collision_monitor_ip_0_0_collision_monitor
   (alarm_o,
    s00_axi_aclk,
    Q);
  output alarm_o;
  input s00_axi_aclk;
  input [15:0]Q;

  wire [15:0]Q;
  wire alarm_o;
  wire p_0_in;
  wire s00_axi_aclk;

  zynq_system_collision_monitor_ip_0_0_decision_guard the_decision
       (.alarm_o(alarm_o),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
  zynq_system_collision_monitor_ip_0_0_moving_average_filter the_filter
       (.Q(Q),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "collision_monitor_ip" *) 
module zynq_system_collision_monitor_ip_0_0_collision_monitor_ip
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  zynq_system_collision_monitor_ip_0_0_collision_monitor_ip_slave_lite_v1_0_S00_AXI collision_monitor_ip_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "collision_monitor_ip_slave_lite_v1_0_S00_AXI" *) 
module zynq_system_collision_monitor_ip_0_0_collision_monitor_ip_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire alarm_o;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBFAAFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF405500)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAA2FFAF)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBF992600FFFF2600)) 
    axi_bvalid_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(axi_bvalid_i_2_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_bready),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_bvalid_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  zynq_system_collision_monitor_ip_0_0_collision_monitor my_collision_monitor
       (.Q(slv_reg0[15:0]),
        .alarm_o(alarm_o),
        .s00_axi_aclk(s00_axi_aclk));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(slv_reg3[0]),
        .I1(alarm_o),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[10]),
        .O(s00_axi_rdata[10]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[11]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[11]),
        .O(s00_axi_rdata[11]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[12]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg3[13]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[13]),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[14]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg3[15]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[15]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[15]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg3[16]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[16]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[16]),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg3[17]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[17]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[17]),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg3[18]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[18]),
        .O(s00_axi_rdata[18]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg3[19]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[19]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[19]),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[1]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[1]),
        .O(s00_axi_rdata[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[20]),
        .O(s00_axi_rdata[20]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[21]),
        .O(s00_axi_rdata[21]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[22]),
        .O(s00_axi_rdata[22]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[23]),
        .O(s00_axi_rdata[23]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[24]),
        .O(s00_axi_rdata[24]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[25]),
        .O(s00_axi_rdata[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[26]),
        .O(s00_axi_rdata[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[27]),
        .O(s00_axi_rdata[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[28]),
        .O(s00_axi_rdata[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[29]),
        .O(s00_axi_rdata[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[2]),
        .O(s00_axi_rdata[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[30]),
        .O(s00_axi_rdata[30]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[31]),
        .O(s00_axi_rdata[31]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[3]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[3]),
        .O(s00_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[4]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[4]),
        .O(s00_axi_rdata[4]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[5]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[5]),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[6]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[6]),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[7]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[7]),
        .O(s00_axi_rdata[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[8]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[8]),
        .O(s00_axi_rdata[8]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[9]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h000000001D000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[0]),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[1]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001D000000)) 
    \slv_reg0[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[0]),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[2]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001D000000)) 
    \slv_reg0[31]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[0]),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[3]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001D000000)) 
    \slv_reg0[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awaddr[0]),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h02A2000000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02A2000000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02A2000000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02A2000000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\slv_reg3[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "decision_guard" *) 
module zynq_system_collision_monitor_ip_0_0_decision_guard
   (alarm_o,
    p_0_in,
    s00_axi_aclk);
  output alarm_o;
  input p_0_in;
  input s00_axi_aclk;

  wire alarm_o;
  wire p_0_in;
  wire s00_axi_aclk;

  FDRE alarm_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(alarm_o),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "moving_average_filter" *) 
module zynq_system_collision_monitor_ip_0_0_moving_average_filter
   (p_0_in,
    Q,
    s00_axi_aclk);
  output p_0_in;
  input [15:0]Q;
  input s00_axi_aclk;

  wire [15:0]Q;
  wire alarm_o_i_2_n_0;
  wire p_0_in;
  wire [15:6]resume;
  wire resume__2_carry__0_n_0;
  wire resume__2_carry__0_n_1;
  wire resume__2_carry__0_n_2;
  wire resume__2_carry__0_n_3;
  wire resume__2_carry__1_n_0;
  wire resume__2_carry__1_n_1;
  wire resume__2_carry__1_n_2;
  wire resume__2_carry__1_n_3;
  wire resume__2_carry__2_n_1;
  wire resume__2_carry__2_n_2;
  wire resume__2_carry__2_n_3;
  wire resume__2_carry_i_10__0_n_0;
  wire resume__2_carry_i_10__1_n_0;
  wire resume__2_carry_i_10_n_0;
  wire resume__2_carry_i_11__0_n_0;
  wire resume__2_carry_i_11__1_n_0;
  wire resume__2_carry_i_11_n_0;
  wire resume__2_carry_i_12__0_n_0;
  wire resume__2_carry_i_12__1_n_0;
  wire resume__2_carry_i_12_n_0;
  wire resume__2_carry_i_1__0_n_0;
  wire resume__2_carry_i_1__1_n_0;
  wire resume__2_carry_i_1__2_n_0;
  wire resume__2_carry_i_1_n_0;
  wire resume__2_carry_i_2__0_n_0;
  wire resume__2_carry_i_2__1_n_0;
  wire resume__2_carry_i_2__2_n_0;
  wire resume__2_carry_i_2_n_0;
  wire resume__2_carry_i_3__0_n_0;
  wire resume__2_carry_i_3__1_n_0;
  wire resume__2_carry_i_3__2_n_0;
  wire resume__2_carry_i_3_n_0;
  wire resume__2_carry_i_4__0_n_0;
  wire resume__2_carry_i_4__1_n_0;
  wire resume__2_carry_i_4__2_n_0;
  wire resume__2_carry_i_4_n_0;
  wire resume__2_carry_i_5__0_n_0;
  wire resume__2_carry_i_5__1_n_0;
  wire resume__2_carry_i_5__2_n_0;
  wire resume__2_carry_i_5_n_0;
  wire resume__2_carry_i_6__0_n_0;
  wire resume__2_carry_i_6__1_n_0;
  wire resume__2_carry_i_6__2_n_0;
  wire resume__2_carry_i_6_n_0;
  wire resume__2_carry_i_7__0_n_0;
  wire resume__2_carry_i_7__1_n_0;
  wire resume__2_carry_i_7__2_n_0;
  wire resume__2_carry_i_7_n_0;
  wire resume__2_carry_i_8__0_n_0;
  wire resume__2_carry_i_8__1_n_0;
  wire resume__2_carry_i_8__2_n_0;
  wire resume__2_carry_i_8_n_0;
  wire resume__2_carry_i_9__0_n_0;
  wire resume__2_carry_i_9__1_n_0;
  wire resume__2_carry_i_9__2_n_0;
  wire resume__2_carry_i_9_n_0;
  wire resume__2_carry_n_0;
  wire resume__2_carry_n_1;
  wire resume__2_carry_n_2;
  wire resume__2_carry_n_3;
  wire s00_axi_aclk;
  wire [15:0]table_four;
  wire [15:0]table_one;
  wire [15:0]table_three;
  wire [15:0]table_two;
  wire [3:0]NLW_resume__2_carry_O_UNCONNECTED;
  wire [1:0]NLW_resume__2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_resume__2_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000057)) 
    alarm_o_i_1
       (.I0(alarm_o_i_2_n_0),
        .I1(resume[7]),
        .I2(resume[6]),
        .I3(resume[14]),
        .I4(resume[15]),
        .I5(resume[13]),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h80000000)) 
    alarm_o_i_2
       (.I0(resume[8]),
        .I1(resume[11]),
        .I2(resume[12]),
        .I3(resume[9]),
        .I4(resume[10]),
        .O(alarm_o_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 resume__2_carry
       (.CI(1'b0),
        .CO({resume__2_carry_n_0,resume__2_carry_n_1,resume__2_carry_n_2,resume__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({resume__2_carry_i_1_n_0,resume__2_carry_i_2__2_n_0,resume__2_carry_i_3__2_n_0,table_one[0]}),
        .O(NLW_resume__2_carry_O_UNCONNECTED[3:0]),
        .S({resume__2_carry_i_4__2_n_0,resume__2_carry_i_5_n_0,resume__2_carry_i_6_n_0,resume__2_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 resume__2_carry__0
       (.CI(resume__2_carry_n_0),
        .CO({resume__2_carry__0_n_0,resume__2_carry__0_n_1,resume__2_carry__0_n_2,resume__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({resume__2_carry_i_1__0_n_0,resume__2_carry_i_2_n_0,resume__2_carry_i_3_n_0,resume__2_carry_i_4_n_0}),
        .O({resume[7:6],NLW_resume__2_carry__0_O_UNCONNECTED[1:0]}),
        .S({resume__2_carry_i_5__0_n_0,resume__2_carry_i_6__0_n_0,resume__2_carry_i_7__0_n_0,resume__2_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 resume__2_carry__1
       (.CI(resume__2_carry__0_n_0),
        .CO({resume__2_carry__1_n_0,resume__2_carry__1_n_1,resume__2_carry__1_n_2,resume__2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({resume__2_carry_i_1__1_n_0,resume__2_carry_i_2__0_n_0,resume__2_carry_i_3__0_n_0,resume__2_carry_i_4__0_n_0}),
        .O(resume[11:8]),
        .S({resume__2_carry_i_5__1_n_0,resume__2_carry_i_6__1_n_0,resume__2_carry_i_7__1_n_0,resume__2_carry_i_8__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 resume__2_carry__2
       (.CI(resume__2_carry__1_n_0),
        .CO({NLW_resume__2_carry__2_CO_UNCONNECTED[3],resume__2_carry__2_n_1,resume__2_carry__2_n_2,resume__2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,resume__2_carry_i_1__2_n_0,resume__2_carry_i_2__1_n_0,resume__2_carry_i_3__1_n_0}),
        .O(resume[15:12]),
        .S({resume__2_carry_i_4__1_n_0,resume__2_carry_i_5__2_n_0,resume__2_carry_i_6__2_n_0,resume__2_carry_i_7__2_n_0}));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_1
       (.I0(table_one[2]),
        .I1(resume__2_carry_i_8_n_0),
        .I2(table_four[1]),
        .I3(table_three[1]),
        .I4(table_two[1]),
        .O(resume__2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_10
       (.I0(table_four[5]),
        .I1(table_two[5]),
        .I2(table_three[5]),
        .O(resume__2_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_10__0
       (.I0(table_four[9]),
        .I1(table_two[9]),
        .I2(table_three[9]),
        .O(resume__2_carry_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    resume__2_carry_i_10__1
       (.I0(table_two[13]),
        .I1(table_three[13]),
        .I2(table_four[13]),
        .O(resume__2_carry_i_10__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_11
       (.I0(table_four[4]),
        .I1(table_two[4]),
        .I2(table_three[4]),
        .O(resume__2_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_11__0
       (.I0(table_four[8]),
        .I1(table_two[8]),
        .I2(table_three[8]),
        .O(resume__2_carry_i_11__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    resume__2_carry_i_11__1
       (.I0(table_three[15]),
        .I1(table_two[15]),
        .I2(table_four[15]),
        .I3(table_one[15]),
        .O(resume__2_carry_i_11__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_12
       (.I0(table_four[7]),
        .I1(table_two[7]),
        .I2(table_three[7]),
        .O(resume__2_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_12__0
       (.I0(table_four[11]),
        .I1(table_two[11]),
        .I2(table_three[11]),
        .O(resume__2_carry_i_12__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_12__1
       (.I0(table_four[14]),
        .I1(table_two[14]),
        .I2(table_three[14]),
        .O(resume__2_carry_i_12__1_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_1__0
       (.I0(table_one[6]),
        .I1(resume__2_carry_i_9__0_n_0),
        .I2(table_four[5]),
        .I3(table_three[5]),
        .I4(table_two[5]),
        .O(resume__2_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_1__1
       (.I0(table_one[10]),
        .I1(resume__2_carry_i_9__1_n_0),
        .I2(table_four[9]),
        .I3(table_three[9]),
        .I4(table_two[9]),
        .O(resume__2_carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_1__2
       (.I0(table_one[13]),
        .I1(resume__2_carry_i_8__0_n_0),
        .I2(table_four[12]),
        .I3(table_three[12]),
        .I4(table_two[12]),
        .O(resume__2_carry_i_1__2_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_2
       (.I0(table_one[5]),
        .I1(resume__2_carry_i_10_n_0),
        .I2(table_four[4]),
        .I3(table_three[4]),
        .I4(table_two[4]),
        .O(resume__2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_2__0
       (.I0(table_one[9]),
        .I1(resume__2_carry_i_10__0_n_0),
        .I2(table_four[8]),
        .I3(table_three[8]),
        .I4(table_two[8]),
        .O(resume__2_carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_2__1
       (.I0(table_one[12]),
        .I1(resume__2_carry_i_9__2_n_0),
        .I2(table_four[11]),
        .I3(table_three[11]),
        .I4(table_two[11]),
        .O(resume__2_carry_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    resume__2_carry_i_2__2
       (.I0(table_four[1]),
        .I1(table_three[1]),
        .I2(table_two[1]),
        .I3(table_one[2]),
        .I4(resume__2_carry_i_8_n_0),
        .O(resume__2_carry_i_2__2_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_3
       (.I0(table_one[4]),
        .I1(resume__2_carry_i_11_n_0),
        .I2(table_four[3]),
        .I3(table_three[3]),
        .I4(table_two[3]),
        .O(resume__2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_3__0
       (.I0(table_one[8]),
        .I1(resume__2_carry_i_11__0_n_0),
        .I2(table_four[7]),
        .I3(table_three[7]),
        .I4(table_two[7]),
        .O(resume__2_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_3__1
       (.I0(table_one[11]),
        .I1(resume__2_carry_i_12__0_n_0),
        .I2(table_four[10]),
        .I3(table_three[10]),
        .I4(table_two[10]),
        .O(resume__2_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    resume__2_carry_i_3__2
       (.I0(table_three[1]),
        .I1(table_two[1]),
        .I2(table_four[1]),
        .I3(table_one[1]),
        .O(resume__2_carry_i_3__2_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_4
       (.I0(table_one[3]),
        .I1(resume__2_carry_i_9_n_0),
        .I2(table_four[2]),
        .I3(table_three[2]),
        .I4(table_two[2]),
        .O(resume__2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    resume__2_carry_i_4__0
       (.I0(table_one[7]),
        .I1(resume__2_carry_i_12_n_0),
        .I2(table_four[6]),
        .I3(table_three[6]),
        .I4(table_two[6]),
        .O(resume__2_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    resume__2_carry_i_4__1
       (.I0(resume__2_carry_i_10__1_n_0),
        .I1(table_one[14]),
        .I2(resume__2_carry_i_11__1_n_0),
        .I3(table_two[14]),
        .I4(table_three[14]),
        .I5(table_four[14]),
        .O(resume__2_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_4__2
       (.I0(resume__2_carry_i_1_n_0),
        .I1(resume__2_carry_i_9_n_0),
        .I2(table_one[3]),
        .I3(table_two[2]),
        .I4(table_three[2]),
        .I5(table_four[2]),
        .O(resume__2_carry_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    resume__2_carry_i_5
       (.I0(resume__2_carry_i_8_n_0),
        .I1(table_one[2]),
        .I2(table_four[1]),
        .I3(table_two[1]),
        .I4(table_three[1]),
        .I5(table_one[1]),
        .O(resume__2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_5__0
       (.I0(resume__2_carry_i_1__0_n_0),
        .I1(resume__2_carry_i_12_n_0),
        .I2(table_one[7]),
        .I3(table_two[6]),
        .I4(table_three[6]),
        .I5(table_four[6]),
        .O(resume__2_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_5__1
       (.I0(resume__2_carry_i_1__1_n_0),
        .I1(resume__2_carry_i_12__0_n_0),
        .I2(table_one[11]),
        .I3(table_two[10]),
        .I4(table_three[10]),
        .I5(table_four[10]),
        .O(resume__2_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_5__2
       (.I0(resume__2_carry_i_1__2_n_0),
        .I1(resume__2_carry_i_12__1_n_0),
        .I2(table_one[14]),
        .I3(table_two[13]),
        .I4(table_three[13]),
        .I5(table_four[13]),
        .O(resume__2_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    resume__2_carry_i_6
       (.I0(resume__2_carry_i_3__2_n_0),
        .I1(table_four[0]),
        .I2(table_three[0]),
        .I3(table_two[0]),
        .O(resume__2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_6__0
       (.I0(resume__2_carry_i_2_n_0),
        .I1(resume__2_carry_i_9__0_n_0),
        .I2(table_one[6]),
        .I3(table_two[5]),
        .I4(table_three[5]),
        .I5(table_four[5]),
        .O(resume__2_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_6__1
       (.I0(resume__2_carry_i_2__0_n_0),
        .I1(resume__2_carry_i_9__1_n_0),
        .I2(table_one[10]),
        .I3(table_two[9]),
        .I4(table_three[9]),
        .I5(table_four[9]),
        .O(resume__2_carry_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_6__2
       (.I0(resume__2_carry_i_2__1_n_0),
        .I1(resume__2_carry_i_8__0_n_0),
        .I2(table_one[13]),
        .I3(table_two[12]),
        .I4(table_three[12]),
        .I5(table_four[12]),
        .O(resume__2_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    resume__2_carry_i_7
       (.I0(table_three[0]),
        .I1(table_two[0]),
        .I2(table_four[0]),
        .I3(table_one[0]),
        .O(resume__2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_7__0
       (.I0(resume__2_carry_i_3_n_0),
        .I1(resume__2_carry_i_10_n_0),
        .I2(table_one[5]),
        .I3(table_two[4]),
        .I4(table_three[4]),
        .I5(table_four[4]),
        .O(resume__2_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_7__1
       (.I0(resume__2_carry_i_3__0_n_0),
        .I1(resume__2_carry_i_10__0_n_0),
        .I2(table_one[9]),
        .I3(table_two[8]),
        .I4(table_three[8]),
        .I5(table_four[8]),
        .O(resume__2_carry_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_7__2
       (.I0(resume__2_carry_i_3__1_n_0),
        .I1(resume__2_carry_i_9__2_n_0),
        .I2(table_one[12]),
        .I3(table_two[11]),
        .I4(table_three[11]),
        .I5(table_four[11]),
        .O(resume__2_carry_i_7__2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_8
       (.I0(table_four[2]),
        .I1(table_two[2]),
        .I2(table_three[2]),
        .O(resume__2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_8__0
       (.I0(table_four[13]),
        .I1(table_two[13]),
        .I2(table_three[13]),
        .O(resume__2_carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_8__1
       (.I0(resume__2_carry_i_4_n_0),
        .I1(resume__2_carry_i_11_n_0),
        .I2(table_one[4]),
        .I3(table_two[3]),
        .I4(table_three[3]),
        .I5(table_four[3]),
        .O(resume__2_carry_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    resume__2_carry_i_8__2
       (.I0(resume__2_carry_i_4__0_n_0),
        .I1(resume__2_carry_i_11__0_n_0),
        .I2(table_one[8]),
        .I3(table_two[7]),
        .I4(table_three[7]),
        .I5(table_four[7]),
        .O(resume__2_carry_i_8__2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_9
       (.I0(table_four[3]),
        .I1(table_two[3]),
        .I2(table_three[3]),
        .O(resume__2_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_9__0
       (.I0(table_four[6]),
        .I1(table_two[6]),
        .I2(table_three[6]),
        .O(resume__2_carry_i_9__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_9__1
       (.I0(table_four[10]),
        .I1(table_two[10]),
        .I2(table_three[10]),
        .O(resume__2_carry_i_9__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    resume__2_carry_i_9__2
       (.I0(table_four[12]),
        .I1(table_two[12]),
        .I2(table_three[12]),
        .O(resume__2_carry_i_9__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[0]),
        .Q(table_four[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[10]),
        .Q(table_four[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[11]),
        .Q(table_four[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[12]),
        .Q(table_four[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[13]),
        .Q(table_four[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[14]),
        .Q(table_four[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[15]),
        .Q(table_four[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[1]),
        .Q(table_four[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[2]),
        .Q(table_four[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[3]),
        .Q(table_four[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[4]),
        .Q(table_four[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[5]),
        .Q(table_four[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[6]),
        .Q(table_four[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[7]),
        .Q(table_four[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[8]),
        .Q(table_four[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_four_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_three[9]),
        .Q(table_four[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(table_one[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(table_one[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(table_one[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(table_one[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(table_one[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(table_one[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(table_one[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(table_one[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(table_one[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(table_one[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(table_one[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(table_one[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(table_one[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(table_one[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(table_one[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_one_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(table_one[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[0]),
        .Q(table_three[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[10]),
        .Q(table_three[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[11]),
        .Q(table_three[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[12]),
        .Q(table_three[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[13]),
        .Q(table_three[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[14]),
        .Q(table_three[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[15]),
        .Q(table_three[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[1]),
        .Q(table_three[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[2]),
        .Q(table_three[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[3]),
        .Q(table_three[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[4]),
        .Q(table_three[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[5]),
        .Q(table_three[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[6]),
        .Q(table_three[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[7]),
        .Q(table_three[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[8]),
        .Q(table_three[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_three_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_two[9]),
        .Q(table_three[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[0]),
        .Q(table_two[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[10]),
        .Q(table_two[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[11]),
        .Q(table_two[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[12]),
        .Q(table_two[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[13]),
        .Q(table_two[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[14]),
        .Q(table_two[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[15]),
        .Q(table_two[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[1]),
        .Q(table_two[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[2]),
        .Q(table_two[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[3]),
        .Q(table_two[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[4]),
        .Q(table_two[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[5]),
        .Q(table_two[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[6]),
        .Q(table_two[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[7]),
        .Q(table_two[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[8]),
        .Q(table_two[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \table_two_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(table_one[9]),
        .Q(table_two[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
