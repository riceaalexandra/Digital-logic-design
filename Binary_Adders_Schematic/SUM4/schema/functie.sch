VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Cin
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL B(2)
        SIGNAL B(3)
        SIGNAL A(0)
        SIGNAL A(1)
        SIGNAL A(2)
        SIGNAL A(3)
        SIGNAL OFL
        SIGNAL Cout
        SIGNAL S(3:0)
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        PORT Input Cin
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Output OFL
        PORT Output Cout
        PORT Output S(3:0)
        BEGIN BLOCKDEF add4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 112 -832 112 -804 
            LINE N 64 -832 112 -832 
            LINE N 0 -832 64 -832 
            LINE N 0 -192 64 -192 
            LINE N 448 -352 384 -352 
            LINE N 448 -416 384 -416 
            LINE N 448 -480 384 -480 
            LINE N 448 -544 384 -544 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -512 64 -512 
            LINE N 0 -576 64 -576 
            LINE N 0 -640 64 -640 
            LINE N 0 -704 64 -704 
            LINE N 240 -64 384 -64 
            LINE N 240 -124 240 -64 
            LINE N 336 -128 336 -148 
            LINE N 384 -128 336 -128 
            LINE N 384 -736 64 -816 
            LINE N 384 -160 384 -736 
            LINE N 64 -80 384 -160 
            LINE N 64 -416 64 -80 
            LINE N 144 -448 64 -416 
            LINE N 64 -480 144 -448 
            LINE N 64 -816 64 -480 
            LINE N 448 -64 384 -64 
            LINE N 448 -128 384 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add4
            PIN A0 A(0)
            PIN A1 A(1)
            PIN A2 A(2)
            PIN A3 A(3)
            PIN B0 B(0)
            PIN B1 B(1)
            PIN B2 B(2)
            PIN B3 B(3)
            PIN CI Cin
            PIN CO Cout
            PIN OFL OFL
            PIN S0 S(0)
            PIN S1 S(1)
            PIN S2 S(2)
            PIN S3 S(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1456 1632 R0
        BEGIN BRANCH Cin
            WIRE 1072 800 1456 800
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 880 880 1120 880
            WIRE 1120 880 1120 928
            WIRE 1120 928 1120 992
            WIRE 1120 992 1120 1056
            WIRE 1120 1056 1120 1120
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 880 1200 1120 1200
            WIRE 1120 1200 1120 1248
            WIRE 1120 1248 1120 1312
            WIRE 1120 1312 1120 1376
            WIRE 1120 1376 1120 1440
        END BRANCH
        IOMARKER 1072 800 Cin R180 28
        IOMARKER 880 880 A(3:0) R180 28
        IOMARKER 880 1200 B(3:0) R180 28
        BUSTAP 1120 928 1216 928
        BUSTAP 1120 992 1216 992
        BUSTAP 1120 1056 1216 1056
        BUSTAP 1120 1120 1216 1120
        BUSTAP 1120 1248 1216 1248
        BUSTAP 1120 1312 1216 1312
        BUSTAP 1120 1376 1216 1376
        BUSTAP 1120 1440 1216 1440
        BEGIN BRANCH B(0)
            WIRE 1216 1248 1280 1248
            WIRE 1280 1248 1456 1248
            BEGIN DISPLAY 1280 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1216 1312 1280 1312
            WIRE 1280 1312 1456 1312
            BEGIN DISPLAY 1280 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1216 1376 1280 1376
            WIRE 1280 1376 1456 1376
            BEGIN DISPLAY 1280 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1216 1440 1280 1440
            WIRE 1280 1440 1456 1440
            BEGIN DISPLAY 1280 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 1216 928 1280 928
            WIRE 1280 928 1456 928
            BEGIN DISPLAY 1280 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1216 992 1264 992
            WIRE 1264 992 1456 992
            BEGIN DISPLAY 1264 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1216 1056 1264 1056
            WIRE 1264 1056 1456 1056
            BEGIN DISPLAY 1264 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1216 1120 1264 1120
            WIRE 1264 1120 1456 1120
            BEGIN DISPLAY 1264 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OFL
            WIRE 1904 1504 2048 1504
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1904 1568 2048 1568
        END BRANCH
        BEGIN BRANCH S(3:0)
            WIRE 2080 1072 2240 1072
            WIRE 2080 1072 2080 1088
            WIRE 2080 1088 2080 1152
            WIRE 2080 1152 2080 1216
            WIRE 2080 1216 2080 1280
            WIRE 2080 1280 2080 1312
        END BRANCH
        IOMARKER 2240 1072 S(3:0) R0 28
        BUSTAP 2080 1088 1984 1088
        BUSTAP 2080 1152 1984 1152
        BUSTAP 2080 1216 1984 1216
        BUSTAP 2080 1280 1984 1280
        BEGIN BRANCH S(0)
            WIRE 1904 1088 1920 1088
            WIRE 1920 1088 1984 1088
            BEGIN DISPLAY 1920 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1904 1152 1984 1152
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1904 1216 1920 1216
            WIRE 1920 1216 1984 1216
            BEGIN DISPLAY 1920 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1904 1280 1920 1280
            WIRE 1920 1280 1984 1280
            BEGIN DISPLAY 1920 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2048 1504 OFL R0 28
        IOMARKER 2048 1568 Cout R0 28
    END SHEET
END SCHEMATIC
