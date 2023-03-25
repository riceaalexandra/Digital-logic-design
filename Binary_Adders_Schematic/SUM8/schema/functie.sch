VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CIN
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        SIGNAL OFL
        SIGNAL COUT
        PORT Input CIN
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        PORT Output OFL
        PORT Output COUT
        BEGIN BLOCKDEF add8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 336 -128 336 -148 
            LINE N 384 -128 336 -128 
            LINE N 64 -288 64 -432 
            LINE N 128 -256 64 -288 
            LINE N 64 -224 128 -256 
            LINE N 64 -80 64 -224 
            LINE N 384 -160 64 -80 
            LINE N 384 -336 384 -160 
            LINE N 384 -352 384 -336 
            LINE N 64 -432 384 -352 
            LINE N 128 -448 64 -448 
            LINE N 128 -416 128 -448 
            LINE N 0 -448 64 -448 
            RECTANGLE N 384 -268 448 -244 
            LINE N 448 -256 384 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -332 64 -308 
            RECTANGLE N 0 -204 64 -180 
            LINE N 240 -64 384 -64 
            LINE N 240 -124 240 -64 
            LINE N 448 -64 384 -64 
            LINE N 448 -128 384 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add8
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN CI CIN
            PIN CO COUT
            PIN OFL OFL
            PIN S(7:0) S(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1376 1072 R0
        BEGIN BRANCH CIN
            WIRE 1152 624 1376 624
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1152 752 1376 752
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1152 880 1376 880
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1824 816 2080 816
        END BRANCH
        BEGIN BRANCH OFL
            WIRE 1824 944 2080 944
        END BRANCH
        BEGIN BRANCH COUT
            WIRE 1824 1008 2080 1008
        END BRANCH
        IOMARKER 1152 624 CIN R180 28
        IOMARKER 1152 752 A(7:0) R180 28
        IOMARKER 1152 880 B(7:0) R180 28
        IOMARKER 2080 816 S(7:0) R0 28
        IOMARKER 2080 944 OFL R0 28
        IOMARKER 2080 1008 COUT R0 28
    END SHEET
END SCHEMATIC
