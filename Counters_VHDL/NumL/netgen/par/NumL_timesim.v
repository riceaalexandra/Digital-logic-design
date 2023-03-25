////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: NumL_timesim.v
// /___/   /\     Timestamp: Tue Apr 12 08:31:45 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf NumL.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers false -w -dir netgen/par -ofmt verilog -sim NumL.ncd NumL_timesim.v 
// Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
// Input file	: NumL.ncd
// Output file	: D:\laborator_7_partea_comuna\NumL\netgen\par\NumL_timesim.v
// # of Modules	: 1
// Design Name	: NumL
// Xilinx        : C:\Xilinx92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module NumL (
  iINIT, iClock, iValid, iLoad, oaQ, iaData
);
  input iINIT;
  input iClock;
  input iValid;
  input iLoad;
  output [3 : 0] oaQ;
  input [3 : 0] iaData;
  wire iINIT_IBUF_0;
  wire iaData_0_IBUF_1;
  wire iaData_1_IBUF_2;
  wire iValid_IBUF_3;
  wire iaData_2_IBUF_4;
  wire iaData_3_IBUF_5;
  wire iLoad_IBUF_6;
  wire GLOBAL_LOGIC1;
  wire iClock_BUFGP;
  wire saQ_not0001_0;
  wire \Mcount_saQ_xor<3>1_SW0/O ;
  wire \Mcount_saQ_xor<2>1_SW0/O ;
  wire \iINIT/INBUF ;
  wire \iClock/INBUF ;
  wire \oaQ<0>/O ;
  wire \iaData<0>/INBUF ;
  wire \oaQ<1>/O ;
  wire \iaData<1>/INBUF ;
  wire \iValid/INBUF ;
  wire \oaQ<2>/O ;
  wire \iaData<2>/INBUF ;
  wire \oaQ<3>/O ;
  wire \iaData<3>/INBUF ;
  wire \iLoad/INBUF ;
  wire \iClock_BUFGP/BUFG/S_INVNOT ;
  wire \iClock_BUFGP/BUFG/I0_INV ;
  wire \saQ<3>/DXMUX_7 ;
  wire Mcount_saQ9;
  wire \Mcount_saQ_xor<3>1_SW0/O_pack_1 ;
  wire \saQ<3>/CLKINV_8 ;
  wire \saQ<3>/CEINV_9 ;
  wire \saQ<2>/DXMUX_10 ;
  wire Mcount_saQ6;
  wire \Mcount_saQ_xor<2>1_SW0/O_pack_1 ;
  wire \saQ<2>/CLKINV_11 ;
  wire \saQ<2>/CEINV_12 ;
  wire \saQ<1>/DXMUX_13 ;
  wire Mcount_saQ3;
  wire \saQ<1>/DYMUX_14 ;
  wire Mcount_saQ;
  wire \saQ<1>/SRINV_15 ;
  wire \saQ<1>/CLKINV_16 ;
  wire \saQ<1>/CEINV_17 ;
  wire saQ_not0001;
  wire \saQ<3>/FFX/RSTAND_18 ;
  wire \saQ<2>/FFX/RSTAND_19 ;
  wire GND;
  wire VCC;
  wire [3 : 0] saQ;
  initial $sdf_annotate("netgen/par/numl_timesim.sdf");
  defparam \iINIT/PAD .LOC = "PAD18";
  X_IPAD \iINIT/PAD  (
    .PAD(iINIT)
  );
  defparam iINIT_IBUF.LOC = "PAD18";
  X_BUF iINIT_IBUF (
    .I(iINIT),
    .O(\iINIT/INBUF )
  );
  defparam \iINIT/IFF/IMUX .LOC = "PAD18";
  X_BUF \iINIT/IFF/IMUX  (
    .I(\iINIT/INBUF ),
    .O(iINIT_IBUF_0)
  );
  defparam \iClock/PAD .LOC = "PAD14";
  X_IPAD \iClock/PAD  (
    .PAD(iClock)
  );
  defparam \iClock_BUFGP/IBUFG .LOC = "PAD14";
  X_BUF \iClock_BUFGP/IBUFG  (
    .I(iClock),
    .O(\iClock/INBUF )
  );
  defparam \oaQ<0>/PAD .LOC = "PAD17";
  X_OPAD \oaQ<0>/PAD  (
    .PAD(oaQ[0])
  );
  defparam oaQ_0_OBUF.LOC = "PAD17";
  X_OBUF oaQ_0_OBUF (
    .I(\oaQ<0>/O ),
    .O(oaQ[0])
  );
  defparam \iaData<0>/PAD .LOC = "PAD3";
  X_IPAD \iaData<0>/PAD  (
    .PAD(iaData[0])
  );
  defparam iaData_0_IBUF.LOC = "PAD3";
  X_BUF iaData_0_IBUF (
    .I(iaData[0]),
    .O(\iaData<0>/INBUF )
  );
  defparam \iaData<0>/IFF/IMUX .LOC = "PAD3";
  X_BUF \iaData<0>/IFF/IMUX  (
    .I(\iaData<0>/INBUF ),
    .O(iaData_0_IBUF_1)
  );
  defparam \oaQ<1>/PAD .LOC = "PAD12";
  X_OPAD \oaQ<1>/PAD  (
    .PAD(oaQ[1])
  );
  defparam oaQ_1_OBUF.LOC = "PAD12";
  X_OBUF oaQ_1_OBUF (
    .I(\oaQ<1>/O ),
    .O(oaQ[1])
  );
  defparam \iaData<1>/PAD .LOC = "PAD124";
  X_IPAD \iaData<1>/PAD  (
    .PAD(iaData[1])
  );
  defparam iaData_1_IBUF.LOC = "PAD124";
  X_BUF iaData_1_IBUF (
    .I(iaData[1]),
    .O(\iaData<1>/INBUF )
  );
  defparam \iaData<1>/IFF/IMUX .LOC = "PAD124";
  X_BUF \iaData<1>/IFF/IMUX  (
    .I(\iaData<1>/INBUF ),
    .O(iaData_1_IBUF_2)
  );
  defparam \iValid/PAD .LOC = "PAD118";
  X_IPAD \iValid/PAD  (
    .PAD(iValid)
  );
  defparam iValid_IBUF.LOC = "PAD118";
  X_BUF iValid_IBUF (
    .I(iValid),
    .O(\iValid/INBUF )
  );
  defparam \iValid/IFF/IMUX .LOC = "PAD118";
  X_BUF \iValid/IFF/IMUX  (
    .I(\iValid/INBUF ),
    .O(iValid_IBUF_3)
  );
  defparam \oaQ<2>/PAD .LOC = "PAD15";
  X_OPAD \oaQ<2>/PAD  (
    .PAD(oaQ[2])
  );
  defparam oaQ_2_OBUF.LOC = "PAD15";
  X_OBUF oaQ_2_OBUF (
    .I(\oaQ<2>/O ),
    .O(oaQ[2])
  );
  defparam \iaData<2>/PAD .LOC = "PAD123";
  X_IPAD \iaData<2>/PAD  (
    .PAD(iaData[2])
  );
  defparam iaData_2_IBUF.LOC = "PAD123";
  X_BUF iaData_2_IBUF (
    .I(iaData[2]),
    .O(\iaData<2>/INBUF )
  );
  defparam \iaData<2>/IFF/IMUX .LOC = "PAD123";
  X_BUF \iaData<2>/IFF/IMUX  (
    .I(\iaData<2>/INBUF ),
    .O(iaData_2_IBUF_4)
  );
  defparam \oaQ<3>/PAD .LOC = "PAD13";
  X_OPAD \oaQ<3>/PAD  (
    .PAD(oaQ[3])
  );
  defparam oaQ_3_OBUF.LOC = "PAD13";
  X_OBUF oaQ_3_OBUF (
    .I(\oaQ<3>/O ),
    .O(oaQ[3])
  );
  defparam \iaData<3>/PAD .LOC = "PAD2";
  X_IPAD \iaData<3>/PAD  (
    .PAD(iaData[3])
  );
  defparam iaData_3_IBUF.LOC = "PAD2";
  X_BUF iaData_3_IBUF (
    .I(iaData[3]),
    .O(\iaData<3>/INBUF )
  );
  defparam \iaData<3>/IFF/IMUX .LOC = "PAD2";
  X_BUF \iaData<3>/IFF/IMUX  (
    .I(\iaData<3>/INBUF ),
    .O(iaData_3_IBUF_5)
  );
  defparam \iLoad/PAD .LOC = "PAD117";
  X_IPAD \iLoad/PAD  (
    .PAD(iLoad)
  );
  defparam iLoad_IBUF.LOC = "PAD117";
  X_BUF iLoad_IBUF (
    .I(iLoad),
    .O(\iLoad/INBUF )
  );
  defparam \iLoad/IFF/IMUX .LOC = "PAD117";
  X_BUF \iLoad/IFF/IMUX  (
    .I(\iLoad/INBUF ),
    .O(iLoad_IBUF_6)
  );
  defparam \iClock_BUFGP/BUFG .LOC = "BUFGMUX7";
  X_BUFGMUX \iClock_BUFGP/BUFG  (
    .I0(\iClock_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\iClock_BUFGP/BUFG/S_INVNOT ),
    .O(iClock_BUFGP)
  );
  defparam \iClock_BUFGP/BUFG/SINV .LOC = "BUFGMUX7";
  X_INV \iClock_BUFGP/BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\iClock_BUFGP/BUFG/S_INVNOT )
  );
  defparam \iClock_BUFGP/BUFG/I0_USED .LOC = "BUFGMUX7";
  X_BUF \iClock_BUFGP/BUFG/I0_USED  (
    .I(\iClock/INBUF ),
    .O(\iClock_BUFGP/BUFG/I0_INV )
  );
  defparam \saQ<3>/DXMUX .LOC = "SLICE_X5Y30";
  X_BUF \saQ<3>/DXMUX  (
    .I(Mcount_saQ9),
    .O(\saQ<3>/DXMUX_7 )
  );
  defparam \saQ<3>/YUSED .LOC = "SLICE_X5Y30";
  X_BUF \saQ<3>/YUSED  (
    .I(\Mcount_saQ_xor<3>1_SW0/O_pack_1 ),
    .O(\Mcount_saQ_xor<3>1_SW0/O )
  );
  defparam \saQ<3>/CLKINV .LOC = "SLICE_X5Y30";
  X_BUF \saQ<3>/CLKINV  (
    .I(iClock_BUFGP),
    .O(\saQ<3>/CLKINV_8 )
  );
  defparam \saQ<3>/CEINV .LOC = "SLICE_X5Y30";
  X_BUF \saQ<3>/CEINV  (
    .I(saQ_not0001_0),
    .O(\saQ<3>/CEINV_9 )
  );
  defparam \saQ<2>/DXMUX .LOC = "SLICE_X4Y30";
  X_BUF \saQ<2>/DXMUX  (
    .I(Mcount_saQ6),
    .O(\saQ<2>/DXMUX_10 )
  );
  defparam \saQ<2>/YUSED .LOC = "SLICE_X4Y30";
  X_BUF \saQ<2>/YUSED  (
    .I(\Mcount_saQ_xor<2>1_SW0/O_pack_1 ),
    .O(\Mcount_saQ_xor<2>1_SW0/O )
  );
  defparam \saQ<2>/CLKINV .LOC = "SLICE_X4Y30";
  X_BUF \saQ<2>/CLKINV  (
    .I(iClock_BUFGP),
    .O(\saQ<2>/CLKINV_11 )
  );
  defparam \saQ<2>/CEINV .LOC = "SLICE_X4Y30";
  X_BUF \saQ<2>/CEINV  (
    .I(saQ_not0001_0),
    .O(\saQ<2>/CEINV_12 )
  );
  defparam \saQ<1>/DXMUX .LOC = "SLICE_X4Y31";
  X_BUF \saQ<1>/DXMUX  (
    .I(Mcount_saQ3),
    .O(\saQ<1>/DXMUX_13 )
  );
  defparam \saQ<1>/DYMUX .LOC = "SLICE_X4Y31";
  X_BUF \saQ<1>/DYMUX  (
    .I(Mcount_saQ),
    .O(\saQ<1>/DYMUX_14 )
  );
  defparam \saQ<1>/SRINV .LOC = "SLICE_X4Y31";
  X_BUF \saQ<1>/SRINV  (
    .I(iINIT_IBUF_0),
    .O(\saQ<1>/SRINV_15 )
  );
  defparam \saQ<1>/CLKINV .LOC = "SLICE_X4Y31";
  X_BUF \saQ<1>/CLKINV  (
    .I(iClock_BUFGP),
    .O(\saQ<1>/CLKINV_16 )
  );
  defparam \saQ<1>/CEINV .LOC = "SLICE_X4Y31";
  X_BUF \saQ<1>/CEINV  (
    .I(saQ_not0001_0),
    .O(\saQ<1>/CEINV_17 )
  );
  defparam \saQ_not0001/YUSED .LOC = "SLICE_X0Y28";
  X_BUF \saQ_not0001/YUSED  (
    .I(saQ_not0001),
    .O(saQ_not0001_0)
  );
  defparam saQ_not00011.INIT = 16'hFCFC;
  defparam saQ_not00011.LOC = "SLICE_X0Y28";
  X_LUT4 saQ_not00011 (
    .ADR0(VCC),
    .ADR1(iLoad_IBUF_6),
    .ADR2(iValid_IBUF_3),
    .ADR3(VCC),
    .O(saQ_not0001)
  );
  defparam \Mcount_saQ_xor<3>1_SW0 .INIT = 16'h8800;
  defparam \Mcount_saQ_xor<3>1_SW0 .LOC = "SLICE_X5Y30";
  X_LUT4 \Mcount_saQ_xor<3>1_SW0  (
    .ADR0(saQ[0]),
    .ADR1(saQ[1]),
    .ADR2(VCC),
    .ADR3(saQ[2]),
    .O(\Mcount_saQ_xor<3>1_SW0/O_pack_1 )
  );
  defparam \Mcount_saQ_xor<2>1_SW0 .INIT = 16'hF000;
  defparam \Mcount_saQ_xor<2>1_SW0 .LOC = "SLICE_X4Y30";
  X_LUT4 \Mcount_saQ_xor<2>1_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(saQ[1]),
    .ADR3(saQ[0]),
    .O(\Mcount_saQ_xor<2>1_SW0/O_pack_1 )
  );
  defparam \Mcount_saQ_xor<0>11 .INIT = 16'h88BB;
  defparam \Mcount_saQ_xor<0>11 .LOC = "SLICE_X4Y31";
  X_LUT4 \Mcount_saQ_xor<0>11  (
    .ADR0(iaData_0_IBUF_1),
    .ADR1(iLoad_IBUF_6),
    .ADR2(VCC),
    .ADR3(saQ[0]),
    .O(Mcount_saQ)
  );
  defparam \Mcount_saQ_xor<1>11 .INIT = 16'h8BB8;
  defparam \Mcount_saQ_xor<1>11 .LOC = "SLICE_X4Y31";
  X_LUT4 \Mcount_saQ_xor<1>11  (
    .ADR0(iaData_1_IBUF_2),
    .ADR1(iLoad_IBUF_6),
    .ADR2(saQ[1]),
    .ADR3(saQ[0]),
    .O(Mcount_saQ3)
  );
  defparam saQ_1.LOC = "SLICE_X4Y31";
  defparam saQ_1.INIT = 1'b0;
  X_FF saQ_1 (
    .I(\saQ<1>/DXMUX_13 ),
    .CE(\saQ<1>/CEINV_17 ),
    .CLK(\saQ<1>/CLKINV_16 ),
    .SET(GND),
    .RST(\saQ<1>/SRINV_15 ),
    .O(saQ[1])
  );
  defparam \Mcount_saQ_xor<3>1 .INIT = 16'hDE12;
  defparam \Mcount_saQ_xor<3>1 .LOC = "SLICE_X5Y30";
  X_LUT4 \Mcount_saQ_xor<3>1  (
    .ADR0(saQ[3]),
    .ADR1(iLoad_IBUF_6),
    .ADR2(\Mcount_saQ_xor<3>1_SW0/O ),
    .ADR3(iaData_3_IBUF_5),
    .O(Mcount_saQ9)
  );
  defparam saQ_3.LOC = "SLICE_X5Y30";
  defparam saQ_3.INIT = 1'b0;
  X_FF saQ_3 (
    .I(\saQ<3>/DXMUX_7 ),
    .CE(\saQ<3>/CEINV_9 ),
    .CLK(\saQ<3>/CLKINV_8 ),
    .SET(GND),
    .RST(\saQ<3>/FFX/RSTAND_18 ),
    .O(saQ[3])
  );
  defparam \saQ<3>/FFX/RSTAND .LOC = "SLICE_X5Y30";
  X_BUF \saQ<3>/FFX/RSTAND  (
    .I(iINIT_IBUF_0),
    .O(\saQ<3>/FFX/RSTAND_18 )
  );
  defparam \Mcount_saQ_xor<2>1 .INIT = 16'hC5CA;
  defparam \Mcount_saQ_xor<2>1 .LOC = "SLICE_X4Y30";
  X_LUT4 \Mcount_saQ_xor<2>1  (
    .ADR0(saQ[2]),
    .ADR1(iaData_2_IBUF_4),
    .ADR2(iLoad_IBUF_6),
    .ADR3(\Mcount_saQ_xor<2>1_SW0/O ),
    .O(Mcount_saQ6)
  );
  defparam saQ_2.LOC = "SLICE_X4Y30";
  defparam saQ_2.INIT = 1'b0;
  X_FF saQ_2 (
    .I(\saQ<2>/DXMUX_10 ),
    .CE(\saQ<2>/CEINV_12 ),
    .CLK(\saQ<2>/CLKINV_11 ),
    .SET(GND),
    .RST(\saQ<2>/FFX/RSTAND_19 ),
    .O(saQ[2])
  );
  defparam \saQ<2>/FFX/RSTAND .LOC = "SLICE_X4Y30";
  X_BUF \saQ<2>/FFX/RSTAND  (
    .I(iINIT_IBUF_0),
    .O(\saQ<2>/FFX/RSTAND_19 )
  );
  defparam saQ_0.LOC = "SLICE_X4Y31";
  defparam saQ_0.INIT = 1'b0;
  X_FF saQ_0 (
    .I(\saQ<1>/DYMUX_14 ),
    .CE(\saQ<1>/CEINV_17 ),
    .CLK(\saQ<1>/CLKINV_16 ),
    .SET(GND),
    .RST(\saQ<1>/SRINV_15 ),
    .O(saQ[0])
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  defparam \oaQ<0>/OUTPUT/OFF/OMUX .LOC = "PAD17";
  X_BUF \oaQ<0>/OUTPUT/OFF/OMUX  (
    .I(saQ[0]),
    .O(\oaQ<0>/O )
  );
  defparam \oaQ<1>/OUTPUT/OFF/OMUX .LOC = "PAD12";
  X_BUF \oaQ<1>/OUTPUT/OFF/OMUX  (
    .I(saQ[1]),
    .O(\oaQ<1>/O )
  );
  defparam \oaQ<2>/OUTPUT/OFF/OMUX .LOC = "PAD15";
  X_BUF \oaQ<2>/OUTPUT/OFF/OMUX  (
    .I(saQ[2]),
    .O(\oaQ<2>/O )
  );
  defparam \oaQ<3>/OUTPUT/OFF/OMUX .LOC = "PAD13";
  X_BUF \oaQ<3>/OUTPUT/OFF/OMUX  (
    .I(saQ[3]),
    .O(\oaQ<3>/O )
  );
  X_ZERO NlwBlock_NumL_GND (
    .O(GND)
  );
  X_ONE NlwBlock_NumL_VCC (
    .O(VCC)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

