VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL DATAIN(3:0)
        SIGNAL DATAIN(0)
        SIGNAL DATAIN(1)
        SIGNAL DATAIN(2)
        SIGNAL DATAIN(3)
        SIGNAL SEL(1:0)
        SIGNAL Y
        SIGNAL SEL(0)
        SIGNAL SEL(1)
        SIGNAL ENABLE
        PORT Input DATAIN(3:0)
        PORT Input SEL(1:0)
        PORT Output Y
        PORT Input ENABLE
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m4_1e
            PIN D0 DATAIN(0)
            PIN D1 DATAIN(1)
            PIN D2 DATAIN(2)
            PIN D3 DATAIN(3)
            PIN E ENABLE
            PIN S0 SEL(0)
            PIN S1 SEL(1)
            PIN O Y
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH DATAIN(3:0)
            WIRE 432 256 576 256
            WIRE 576 256 576 288
            WIRE 576 288 576 352
            WIRE 576 352 576 416
            WIRE 576 416 576 480
            WIRE 576 480 576 496
        END BRANCH
        IOMARKER 432 256 DATAIN(3:0) R180 28
        BUSTAP 576 288 672 288
        BUSTAP 576 352 672 352
        BUSTAP 576 416 672 416
        BUSTAP 576 480 672 480
        INSTANCE XLXI_1 1280 704 R0
        BEGIN BRANCH DATAIN(0)
            WIRE 672 288 864 288
            WIRE 864 288 1280 288
            BEGIN DISPLAY 864 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATAIN(1)
            WIRE 672 352 864 352
            WIRE 864 352 1280 352
            BEGIN DISPLAY 864 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATAIN(2)
            WIRE 672 416 864 416
            WIRE 864 416 1280 416
            BEGIN DISPLAY 864 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATAIN(3)
            WIRE 672 480 864 480
            WIRE 864 480 1280 480
            BEGIN DISPLAY 864 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SEL(1:0)
            WIRE 432 544 576 544
            WIRE 576 544 576 576
            WIRE 576 576 576 592
            WIRE 576 592 576 640
            WIRE 576 640 576 688
        END BRANCH
        BUSTAP 576 592 672 592
        BUSTAP 576 640 672 640
        BEGIN BRANCH Y
            WIRE 1600 384 1664 384
        END BRANCH
        IOMARKER 1664 384 Y R0 28
        IOMARKER 432 544 SEL(1:0) R180 28
        BEGIN BRANCH SEL(0)
            WIRE 672 592 736 592
            WIRE 736 592 976 592
            WIRE 976 544 976 592
            WIRE 976 544 1280 544
            BEGIN DISPLAY 736 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SEL(1)
            WIRE 672 640 704 640
            WIRE 704 640 976 640
            WIRE 976 608 976 640
            WIRE 976 608 1280 608
            BEGIN DISPLAY 704 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ENABLE
            WIRE 1248 672 1280 672
        END BRANCH
        IOMARKER 1248 672 ENABLE R180 28
    END SHEET
END SCHEMATIC
