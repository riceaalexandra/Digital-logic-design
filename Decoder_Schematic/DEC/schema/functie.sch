VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ADR(1:0)
        SIGNAL ADR(0)
        SIGNAL E
        SIGNAL XLXN_20
        SIGNAL ADR(1)
        SIGNAL DATA(3:0)
        SIGNAL DATA(0)
        SIGNAL DATA(2)
        SIGNAL DATA(3)
        SIGNAL DATA(1)
        PORT Input ADR(1:0)
        PORT Input E
        PORT Output DATA(3:0)
        BEGIN BLOCKDEF d2_4e
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 d2_4e
            PIN A0 ADR(0)
            PIN A1 ADR(1)
            PIN E E
            PIN D0 DATA(0)
            PIN D1 DATA(1)
            PIN D2 DATA(2)
            PIN D3 DATA(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ADR(1:0)
            WIRE 224 368 368 368
            WIRE 368 368 368 528
            WIRE 368 528 368 608
            WIRE 368 608 368 656
            WIRE 368 656 368 704
        END BRANCH
        IOMARKER 224 368 ADR(1:0) R180 28
        BUSTAP 368 608 464 608
        BUSTAP 368 656 464 656
        BEGIN BRANCH E
            WIRE 576 800 592 800
            WIRE 592 784 656 784
            WIRE 592 784 592 800
        END BRANCH
        IOMARKER 576 800 E R180 28
        INSTANCE XLXI_1 656 912 R0
        BEGIN BRANCH ADR(0)
            WIRE 464 608 480 608
            WIRE 480 592 480 608
            WIRE 480 592 544 592
            WIRE 544 592 656 592
            BEGIN DISPLAY 544 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADR(1)
            WIRE 464 656 544 656
            WIRE 544 656 656 656
            BEGIN DISPLAY 544 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATA(3:0)
            WIRE 1280 544 1280 592
            WIRE 1280 592 1280 656
            WIRE 1280 656 1280 720
            WIRE 1280 720 1280 784
            WIRE 1280 784 1280 896
            WIRE 1280 896 1440 896
        END BRANCH
        IOMARKER 1440 896 DATA(3:0) R0 28
        BUSTAP 1280 592 1184 592
        BUSTAP 1280 656 1184 656
        BUSTAP 1280 720 1184 720
        BUSTAP 1280 784 1184 784
        BEGIN BRANCH DATA(0)
            WIRE 1040 592 1072 592
            WIRE 1072 592 1184 592
            BEGIN DISPLAY 1072 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATA(1)
            WIRE 1040 656 1088 656
            WIRE 1088 656 1184 656
            BEGIN DISPLAY 1088 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATA(2)
            WIRE 1040 720 1056 720
            WIRE 1056 720 1184 720
            BEGIN DISPLAY 1056 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATA(3)
            WIRE 1040 784 1056 784
            WIRE 1056 784 1184 784
            BEGIN DISPLAY 1056 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
