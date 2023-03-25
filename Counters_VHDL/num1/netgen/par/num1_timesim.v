////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: num1_timesim.v
// /___/   /\     Timestamp: Tue Apr 12 08:19:25 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf num1.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers false -w -dir netgen/par -ofmt verilog -sim num1.ncd num1_timesim.v 
// Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
// Input file	: num1.ncd
// Output file	: D:\laborator_7_partea_comuna\num1\netgen\par\num1_timesim.v
// # of Modules	: 1
// Design Name	: num1
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

module num1 (
  iClear, iClk, oQ, iLoad, oaData, iaData
);
  input iClear;
  input iClk;
  output oQ;
  input iLoad;
  output [3 : 0] oaData;
  input [3 : 0] iaData;
  wire iClear_IBUF_0;
  wire iaData_0_IBUF_1;
  wire iaData_1_IBUF_2;
  wire iaData_2_IBUF_3;
  wire iaData_3_IBUF_4;
  wire iLoad_IBUF_5;
  wire GLOBAL_LOGIC1;
  wire iClk_BUFGP;
  wire \oQ/O ;
  wire \oaData<0>/O ;
  wire \oaData<1>/O ;
  wire \oaData<2>/O ;
  wire \oaData<3>/O ;
  wire \iClk/INBUF ;
  wire \iClear/INBUF ;
  wire \iaData<0>/INBUF ;
  wire \iaData<1>/INBUF ;
  wire \iaData<2>/INBUF ;
  wire \iaData<3>/INBUF ;
  wire \iLoad/INBUF ;
  wire \iClk_BUFGP/BUFG/S_INVNOT ;
  wire \iClk_BUFGP/BUFG/I0_INV ;
  wire \saQ<3>/DXMUX_6 ;
  wire \saQ<3>/F5MUX_7 ;
  wire N70;
  wire \saQ<3>/BXINV_8 ;
  wire \saQ<3>/REVUSED_9 ;
  wire N71;
  wire \saQ<3>/SRINV_10 ;
  wire \saQ<3>/CLKINV_11 ;
  wire \saQ<1>/DXMUX_12 ;
  wire \saQ<1>/F5MUX_13 ;
  wire N65;
  wire \saQ<1>/BXINV_14 ;
  wire N64;
  wire \saQ<1>/CLKINV_15 ;
  wire \saQ<2>/DXMUX_16 ;
  wire \saQ<2>/F5MUX_17 ;
  wire N67;
  wire \saQ<2>/BXINV_18 ;
  wire N66;
  wire \saQ<2>/CLKINV_19 ;
  wire \saY<3>_map0 ;
  wire \saQ<0>/DYMUX_20 ;
  wire N61;
  wire \saQ<0>/SRINV_21 ;
  wire \saQ<0>/CLKINV_22 ;
  wire oQ_OBUF_23;
  wire GND;
  wire VCC;
  wire [3 : 0] saQ;
  initial $sdf_annotate("netgen/par/num1_timesim.sdf");
  defparam \oQ/PAD .LOC = "PAD123";
  X_OPAD \oQ/PAD  (
    .PAD(oQ)
  );
  defparam oQ_OBUF.LOC = "PAD123";
  X_OBUF oQ_OBUF (
    .I(\oQ/O ),
    .O(oQ)
  );
  defparam \oaData<0>/PAD .LOC = "PAD118";
  X_OPAD \oaData<0>/PAD  (
    .PAD(oaData[0])
  );
  defparam oaData_0_OBUF.LOC = "PAD118";
  X_OBUF oaData_0_OBUF (
    .I(\oaData<0>/O ),
    .O(oaData[0])
  );
  defparam \oaData<1>/PAD .LOC = "PAD117";
  X_OPAD \oaData<1>/PAD  (
    .PAD(oaData[1])
  );
  defparam oaData_1_OBUF.LOC = "PAD117";
  X_OBUF oaData_1_OBUF (
    .I(\oaData<1>/O ),
    .O(oaData[1])
  );
  defparam \oaData<2>/PAD .LOC = "PAD124";
  X_OPAD \oaData<2>/PAD  (
    .PAD(oaData[2])
  );
  defparam oaData_2_OBUF.LOC = "PAD124";
  X_OBUF oaData_2_OBUF (
    .I(\oaData<2>/O ),
    .O(oaData[2])
  );
  defparam \oaData<3>/PAD .LOC = "PAD105";
  X_OPAD \oaData<3>/PAD  (
    .PAD(oaData[3])
  );
  defparam oaData_3_OBUF.LOC = "PAD105";
  X_OBUF oaData_3_OBUF (
    .I(\oaData<3>/O ),
    .O(oaData[3])
  );
  defparam \iClk/PAD .LOC = "PAD14";
  X_IPAD \iClk/PAD  (
    .PAD(iClk)
  );
  defparam \iClk_BUFGP/IBUFG .LOC = "PAD14";
  X_BUF \iClk_BUFGP/IBUFG  (
    .I(iClk),
    .O(\iClk/INBUF )
  );
  defparam \iClear/PAD .LOC = "PAD113";
  X_IPAD \iClear/PAD  (
    .PAD(iClear)
  );
  defparam iClear_IBUF.LOC = "PAD113";
  X_BUF iClear_IBUF (
    .I(iClear),
    .O(\iClear/INBUF )
  );
  defparam \iClear/IFF/IMUX .LOC = "PAD113";
  X_BUF \iClear/IFF/IMUX  (
    .I(\iClear/INBUF ),
    .O(iClear_IBUF_0)
  );
  defparam \iaData<0>/PAD .LOC = "PAD110";
  X_IPAD \iaData<0>/PAD  (
    .PAD(iaData[0])
  );
  defparam iaData_0_IBUF.LOC = "PAD110";
  X_BUF iaData_0_IBUF (
    .I(iaData[0]),
    .O(\iaData<0>/INBUF )
  );
  defparam \iaData<0>/IFF/IMUX .LOC = "PAD110";
  X_BUF \iaData<0>/IFF/IMUX  (
    .I(\iaData<0>/INBUF ),
    .O(iaData_0_IBUF_1)
  );
  defparam \iaData<1>/PAD .LOC = "PAD109";
  X_IPAD \iaData<1>/PAD  (
    .PAD(iaData[1])
  );
  defparam iaData_1_IBUF.LOC = "PAD109";
  X_BUF iaData_1_IBUF (
    .I(iaData[1]),
    .O(\iaData<1>/INBUF )
  );
  defparam \iaData<1>/IFF/IMUX .LOC = "PAD109";
  X_BUF \iaData<1>/IFF/IMUX  (
    .I(\iaData<1>/INBUF ),
    .O(iaData_1_IBUF_2)
  );
  defparam \iaData<2>/PAD .LOC = "PAD114";
  X_IPAD \iaData<2>/PAD  (
    .PAD(iaData[2])
  );
  defparam iaData_2_IBUF.LOC = "PAD114";
  X_BUF iaData_2_IBUF (
    .I(iaData[2]),
    .O(\iaData<2>/INBUF )
  );
  defparam \iaData<2>/IFF/IMUX .LOC = "PAD114";
  X_BUF \iaData<2>/IFF/IMUX  (
    .I(\iaData<2>/INBUF ),
    .O(iaData_2_IBUF_3)
  );
  defparam \iaData<3>/PAD .LOC = "PAD107";
  X_IPAD \iaData<3>/PAD  (
    .PAD(iaData[3])
  );
  defparam iaData_3_IBUF.LOC = "PAD107";
  X_BUF iaData_3_IBUF (
    .I(iaData[3]),
    .O(\iaData<3>/INBUF )
  );
  defparam \iaData<3>/IFF/IMUX .LOC = "PAD107";
  X_BUF \iaData<3>/IFF/IMUX  (
    .I(\iaData<3>/INBUF ),
    .O(iaData_3_IBUF_4)
  );
  defparam \iLoad/PAD .LOC = "PAD108";
  X_IPAD \iLoad/PAD  (
    .PAD(iLoad)
  );
  defparam iLoad_IBUF.LOC = "PAD108";
  X_BUF iLoad_IBUF (
    .I(iLoad),
    .O(\iLoad/INBUF )
  );
  defparam \iLoad/IFF/IMUX .LOC = "PAD108";
  X_BUF \iLoad/IFF/IMUX  (
    .I(\iLoad/INBUF ),
    .O(iLoad_IBUF_5)
  );
  defparam \iClk_BUFGP/BUFG .LOC = "BUFGMUX7";
  X_BUFGMUX \iClk_BUFGP/BUFG  (
    .I0(\iClk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\iClk_BUFGP/BUFG/S_INVNOT ),
    .O(iClk_BUFGP)
  );
  defparam \iClk_BUFGP/BUFG/SINV .LOC = "BUFGMUX7";
  X_INV \iClk_BUFGP/BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\iClk_BUFGP/BUFG/S_INVNOT )
  );
  defparam \iClk_BUFGP/BUFG/I0_USED .LOC = "BUFGMUX7";
  X_BUF \iClk_BUFGP/BUFG/I0_USED  (
    .I(\iClk/INBUF ),
    .O(\iClk_BUFGP/BUFG/I0_INV )
  );
  defparam \saQ<3>/DXMUX .LOC = "SLICE_X1Y21";
  X_BUF \saQ<3>/DXMUX  (
    .I(\saQ<3>/F5MUX_7 ),
    .O(\saQ<3>/DXMUX_6 )
  );
  defparam \saQ<3>/F5MUX .LOC = "SLICE_X1Y21";
  X_MUX2 \saQ<3>/F5MUX  (
    .IA(N71),
    .IB(N70),
    .SEL(\saQ<3>/BXINV_8 ),
    .O(\saQ<3>/F5MUX_7 )
  );
  defparam \saQ<3>/BXINV .LOC = "SLICE_X1Y21";
  X_BUF \saQ<3>/BXINV  (
    .I(saQ[3]),
    .O(\saQ<3>/BXINV_8 )
  );
  defparam \saQ<3>/REVUSED .LOC = "SLICE_X1Y21";
  X_BUF \saQ<3>/REVUSED  (
    .I(\saY<3>_map0 ),
    .O(\saQ<3>/REVUSED_9 )
  );
  defparam \saQ<3>/SRINV .LOC = "SLICE_X1Y21";
  X_BUF \saQ<3>/SRINV  (
    .I(iClear_IBUF_0),
    .O(\saQ<3>/SRINV_10 )
  );
  defparam \saQ<3>/CLKINV .LOC = "SLICE_X1Y21";
  X_BUF \saQ<3>/CLKINV  (
    .I(iClk_BUFGP),
    .O(\saQ<3>/CLKINV_11 )
  );
  defparam \saQ<1>/DXMUX .LOC = "SLICE_X0Y21";
  X_BUF \saQ<1>/DXMUX  (
    .I(\saQ<1>/F5MUX_13 ),
    .O(\saQ<1>/DXMUX_12 )
  );
  defparam \saQ<1>/F5MUX .LOC = "SLICE_X0Y21";
  X_MUX2 \saQ<1>/F5MUX  (
    .IA(N64),
    .IB(N65),
    .SEL(\saQ<1>/BXINV_14 ),
    .O(\saQ<1>/F5MUX_13 )
  );
  defparam \saQ<1>/BXINV .LOC = "SLICE_X0Y21";
  X_BUF \saQ<1>/BXINV  (
    .I(saQ[0]),
    .O(\saQ<1>/BXINV_14 )
  );
  defparam \saQ<1>/CLKINV .LOC = "SLICE_X0Y21";
  X_BUF \saQ<1>/CLKINV  (
    .I(iClk_BUFGP),
    .O(\saQ<1>/CLKINV_15 )
  );
  defparam \saY<1>_F .INIT = 16'h00B8;
  defparam \saY<1>_F .LOC = "SLICE_X0Y21";
  X_LUT4 \saY<1>_F  (
    .ADR0(iaData_1_IBUF_2),
    .ADR1(iLoad_IBUF_5),
    .ADR2(saQ[1]),
    .ADR3(iClear_IBUF_0),
    .O(N64)
  );
  defparam \saQ<2>/DXMUX .LOC = "SLICE_X1Y20";
  X_BUF \saQ<2>/DXMUX  (
    .I(\saQ<2>/F5MUX_17 ),
    .O(\saQ<2>/DXMUX_16 )
  );
  defparam \saQ<2>/F5MUX .LOC = "SLICE_X1Y20";
  X_MUX2 \saQ<2>/F5MUX  (
    .IA(N66),
    .IB(N67),
    .SEL(\saQ<2>/BXINV_18 ),
    .O(\saQ<2>/F5MUX_17 )
  );
  defparam \saQ<2>/BXINV .LOC = "SLICE_X1Y20";
  X_BUF \saQ<2>/BXINV  (
    .I(iLoad_IBUF_5),
    .O(\saQ<2>/BXINV_18 )
  );
  defparam \saQ<2>/CLKINV .LOC = "SLICE_X1Y20";
  X_BUF \saQ<2>/CLKINV  (
    .I(iClk_BUFGP),
    .O(\saQ<2>/CLKINV_19 )
  );
  defparam \saY<2>_F .INIT = 16'h1450;
  defparam \saY<2>_F .LOC = "SLICE_X1Y20";
  X_LUT4 \saY<2>_F  (
    .ADR0(iClear_IBUF_0),
    .ADR1(saQ[1]),
    .ADR2(saQ[2]),
    .ADR3(saQ[0]),
    .O(N66)
  );
  defparam \saQ<0>/DYMUX .LOC = "SLICE_X0Y20";
  X_BUF \saQ<0>/DYMUX  (
    .I(N61),
    .O(\saQ<0>/DYMUX_20 )
  );
  defparam \saQ<0>/SRINV .LOC = "SLICE_X0Y20";
  X_BUF \saQ<0>/SRINV  (
    .I(iClear_IBUF_0),
    .O(\saQ<0>/SRINV_21 )
  );
  defparam \saQ<0>/CLKINV .LOC = "SLICE_X0Y20";
  X_BUF \saQ<0>/CLKINV  (
    .I(iClk_BUFGP),
    .O(\saQ<0>/CLKINV_22 )
  );
  defparam sY_cmp_eq00001.INIT = 16'h8000;
  defparam sY_cmp_eq00001.LOC = "SLICE_X0Y22";
  X_LUT4 sY_cmp_eq00001 (
    .ADR0(saQ[3]),
    .ADR1(saQ[0]),
    .ADR2(saQ[1]),
    .ADR3(saQ[2]),
    .O(oQ_OBUF_23)
  );
  defparam \saY<3>64112 .INIT = 16'h4000;
  defparam \saY<3>64112 .LOC = "SLICE_X1Y21";
  X_LUT4 \saY<3>64112  (
    .ADR0(iLoad_IBUF_5),
    .ADR1(saQ[1]),
    .ADR2(saQ[2]),
    .ADR3(saQ[0]),
    .O(N71)
  );
  defparam \saY<1>_G .INIT = 16'h008B;
  defparam \saY<1>_G .LOC = "SLICE_X0Y21";
  X_LUT4 \saY<1>_G  (
    .ADR0(iaData_1_IBUF_2),
    .ADR1(iLoad_IBUF_5),
    .ADR2(saQ[1]),
    .ADR3(iClear_IBUF_0),
    .O(N65)
  );
  defparam \saY<2>_G .INIT = 16'h0C0C;
  defparam \saY<2>_G .LOC = "SLICE_X1Y20";
  X_LUT4 \saY<2>_G  (
    .ADR0(VCC),
    .ADR1(iaData_2_IBUF_3),
    .ADR2(iClear_IBUF_0),
    .ADR3(VCC),
    .O(N67)
  );
  defparam \saY<0>11 .INIT = 16'hA0F5;
  defparam \saY<0>11 .LOC = "SLICE_X0Y20";
  X_LUT4 \saY<0>11  (
    .ADR0(iLoad_IBUF_5),
    .ADR1(VCC),
    .ADR2(iaData_0_IBUF_1),
    .ADR3(saQ[0]),
    .O(N61)
  );
  defparam saQ_0.LOC = "SLICE_X0Y20";
  defparam saQ_0.INIT = 1'b0;
  X_SFF saQ_0 (
    .I(\saQ<0>/DYMUX_20 ),
    .CE(VCC),
    .CLK(\saQ<0>/CLKINV_22 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\saQ<0>/SRINV_21 ),
    .O(saQ[0])
  );
  defparam \saY<3>0 .INIT = 16'hCC00;
  defparam \saY<3>0 .LOC = "SLICE_X0Y20";
  X_LUT4 \saY<3>0  (
    .ADR0(VCC),
    .ADR1(iLoad_IBUF_5),
    .ADR2(VCC),
    .ADR3(iaData_3_IBUF_4),
    .O(\saY<3>_map0 )
  );
  defparam \saY<3>64111 .INIT = 16'h1555;
  defparam \saY<3>64111 .LOC = "SLICE_X1Y21";
  X_LUT4 \saY<3>64111  (
    .ADR0(iLoad_IBUF_5),
    .ADR1(saQ[1]),
    .ADR2(saQ[2]),
    .ADR3(saQ[0]),
    .O(N70)
  );
  defparam saQ_3.LOC = "SLICE_X1Y21";
  defparam saQ_3.INIT = 1'b0;
  X_SFF saQ_3 (
    .I(\saQ<3>/DXMUX_6 ),
    .CE(VCC),
    .CLK(\saQ<3>/CLKINV_11 ),
    .SET(GND),
    .RST(GND),
    .SSET(\saQ<3>/REVUSED_9 ),
    .SRST(\saQ<3>/SRINV_10 ),
    .O(saQ[3])
  );
  defparam saQ_1.LOC = "SLICE_X0Y21";
  defparam saQ_1.INIT = 1'b0;
  X_FF saQ_1 (
    .I(\saQ<1>/DXMUX_12 ),
    .CE(VCC),
    .CLK(\saQ<1>/CLKINV_15 ),
    .SET(GND),
    .RST(GND),
    .O(saQ[1])
  );
  defparam saQ_2.LOC = "SLICE_X1Y20";
  defparam saQ_2.INIT = 1'b0;
  X_FF saQ_2 (
    .I(\saQ<2>/DXMUX_16 ),
    .CE(VCC),
    .CLK(\saQ<2>/CLKINV_19 ),
    .SET(GND),
    .RST(GND),
    .O(saQ[2])
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  defparam \oQ/OUTPUT/OFF/OMUX .LOC = "PAD123";
  X_BUF \oQ/OUTPUT/OFF/OMUX  (
    .I(oQ_OBUF_23),
    .O(\oQ/O )
  );
  defparam \oaData<0>/OUTPUT/OFF/OMUX .LOC = "PAD118";
  X_BUF \oaData<0>/OUTPUT/OFF/OMUX  (
    .I(saQ[0]),
    .O(\oaData<0>/O )
  );
  defparam \oaData<1>/OUTPUT/OFF/OMUX .LOC = "PAD117";
  X_BUF \oaData<1>/OUTPUT/OFF/OMUX  (
    .I(saQ[1]),
    .O(\oaData<1>/O )
  );
  defparam \oaData<2>/OUTPUT/OFF/OMUX .LOC = "PAD124";
  X_BUF \oaData<2>/OUTPUT/OFF/OMUX  (
    .I(saQ[2]),
    .O(\oaData<2>/O )
  );
  defparam \oaData<3>/OUTPUT/OFF/OMUX .LOC = "PAD105";
  X_BUF \oaData<3>/OUTPUT/OFF/OMUX  (
    .I(saQ[3]),
    .O(\oaData<3>/O )
  );
  X_ZERO NlwBlock_num1_GND (
    .O(GND)
  );
  X_ONE NlwBlock_num1_VCC (
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

