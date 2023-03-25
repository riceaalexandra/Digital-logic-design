VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL A
        SIGNAL B
        SIGNAL S
        SIGNAL Cin
        SIGNAL Cout
        PORT Input A
        PORT Input B
        PORT Output S
        PORT Input Cin
        PORT Output Cout
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF xor3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 208 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N -24 -184 88 -72 64 -80 64 -176 
            ARC N 44 -176 220 0 208 -128 128 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 128 -80 64 -80 
            LINE N 128 -176 64 -176 
            ARC N 44 -256 220 -80 128 -80 208 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 A
            PIN I1 Cin
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 B
            PIN I1 Cin
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 or3
            PIN I0 XLXN_4
            PIN I1 XLXN_3
            PIN I2 XLXN_1
            PIN O Cout
        END BLOCK
        BEGIN BLOCK XLXI_7 xor3
            PIN I0 Cin
            PIN I1 B
            PIN I2 A
            PIN O S
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 752 960 R0
        INSTANCE XLXI_3 752 1216 R0
        INSTANCE XLXI_4 752 1504 R0
        BEGIN BRANCH XLXN_1
            WIRE 1008 864 1024 864
            WIRE 1024 864 1312 864
            WIRE 1312 864 1312 1056
        END BRANCH
        INSTANCE XLXI_5 1312 1248 R0
        BEGIN BRANCH XLXN_3
            WIRE 1008 1120 1312 1120
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1008 1408 1312 1408
            WIRE 1312 1184 1312 1408
        END BRANCH
        BEGIN BRANCH A
            WIRE 656 832 752 832
            BEGIN DISPLAY 656 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 656 896 752 896
            BEGIN DISPLAY 656 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 656 1088 752 1088
            BEGIN DISPLAY 656 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 656 1152 752 1152
            BEGIN DISPLAY 656 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 672 1376 752 1376
            BEGIN DISPLAY 672 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 672 1440 752 1440
            BEGIN DISPLAY 672 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 656 608 B R180 28
        IOMARKER 656 544 A R180 28
        BEGIN BRANCH B
            WIRE 656 608 752 608
        END BRANCH
        BEGIN BRANCH A
            WIRE 656 544 752 544
        END BRANCH
        INSTANCE XLXI_7 752 736 R0
        BEGIN BRANCH S
            WIRE 1008 608 1120 608
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 672 672 752 672
        END BRANCH
        IOMARKER 672 672 Cin R180 28
        IOMARKER 1120 608 S R0 28
        BEGIN BRANCH Cout
            WIRE 1568 1120 1600 1120
        END BRANCH
        IOMARKER 1600 1120 Cout R0 28
    END SHEET
END SCHEMATIC
