VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL b(3:0)
        SIGNAL s(3:0)
        SIGNAL a(3:0)
        SIGNAL a(3)
        SIGNAL a(2)
        SIGNAL a(1)
        SIGNAL a(0)
        SIGNAL b(3)
        SIGNAL b(2)
        SIGNAL b(1)
        SIGNAL b(0)
        SIGNAL s(3)
        SIGNAL s(2)
        SIGNAL s(1)
        SIGNAL s(0)
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL Cout
        SIGNAL Cin
        PORT Input b(3:0)
        PORT Output s(3:0)
        PORT Input a(3:0)
        PORT Output Cout
        PORT Input Cin
        BEGIN BLOCKDEF adder1
            TIMESTAMP 2022 1 11 12 38 25
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -48 0 -48 
            LINE N 320 -160 384 -160 
            LINE N 320 -80 384 -80 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder1
            PIN A a(3)
            PIN B b(3)
            PIN Cin XLXN_20
            PIN Cout Cout
            PIN S s(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 adder1
            PIN A a(2)
            PIN B b(2)
            PIN Cin XLXN_21
            PIN Cout XLXN_20
            PIN S s(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 adder1
            PIN A a(1)
            PIN B b(1)
            PIN Cin XLXN_23
            PIN Cout XLXN_21
            PIN S s(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 adder1
            PIN A a(0)
            PIN B b(0)
            PIN Cin Cin
            PIN Cout XLXN_23
            PIN S s(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 432 1152 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_2 800 1152 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1200 1152 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1568 1152 M90
        END INSTANCE
        BEGIN BRANCH b(3:0)
            WIRE 240 960 336 960
            WIRE 336 960 704 960
            WIRE 704 960 1104 960
            WIRE 1104 960 1472 960
            WIRE 1472 960 1648 960
            WIRE 1648 960 1664 960
            WIRE 1664 960 1680 960
        END BRANCH
        BEGIN BRANCH s(3:0)
            WIRE 240 1760 352 1760
            WIRE 352 1760 720 1760
            WIRE 720 1760 1120 1760
            WIRE 1120 1760 1296 1760
            WIRE 1296 1760 1488 1760
            WIRE 1488 1760 1632 1760
        END BRANCH
        BEGIN BRANCH a(3:0)
            WIRE 240 816 272 816
            WIRE 272 816 640 816
            WIRE 640 816 1040 816
            WIRE 1040 816 1408 816
            WIRE 1408 816 1664 816
        END BRANCH
        IOMARKER 1664 816 a(3:0) R0 28
        IOMARKER 1680 960 b(3:0) R0 28
        IOMARKER 1632 1760 s(3:0) R0 28
        BUSTAP 272 816 272 912
        BUSTAP 640 816 640 912
        BUSTAP 1040 816 1040 912
        BUSTAP 1408 816 1408 912
        BUSTAP 336 960 336 1056
        BUSTAP 704 960 704 1056
        BUSTAP 1104 960 1104 1056
        BUSTAP 1472 960 1472 1056
        BUSTAP 1488 1760 1488 1664
        BUSTAP 1120 1760 1120 1664
        BUSTAP 720 1760 720 1664
        BUSTAP 352 1760 352 1664
        BEGIN BRANCH a(3)
            WIRE 272 912 272 1056
            WIRE 272 1056 272 1152
            BEGIN DISPLAY 272 1056 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 640 912 640 1072
            WIRE 640 1072 640 1152
            BEGIN DISPLAY 640 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 1040 912 1040 1072
            WIRE 1040 1072 1040 1088
            WIRE 1040 1088 1040 1152
            BEGIN DISPLAY 1040 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(0)
            WIRE 1408 912 1408 1088
            WIRE 1408 1088 1408 1104
            WIRE 1408 1104 1408 1152
            BEGIN DISPLAY 1408 1104 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 336 1056 336 1088
            WIRE 336 1088 336 1152
            BEGIN DISPLAY 336 1088 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 704 1056 704 1136
            WIRE 704 1136 704 1152
            BEGIN DISPLAY 704 1136 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1104 1056 1104 1104
            WIRE 1104 1104 1104 1152
            BEGIN DISPLAY 1104 1104 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 1472 1056 1472 1104
            WIRE 1472 1104 1472 1136
            WIRE 1472 1136 1472 1152
            BEGIN DISPLAY 1472 1136 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s(3)
            WIRE 352 1536 352 1600
            WIRE 352 1600 352 1664
            BEGIN DISPLAY 352 1600 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s(2)
            WIRE 720 1536 720 1600
            WIRE 720 1600 720 1664
            BEGIN DISPLAY 720 1600 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s(1)
            WIRE 1120 1536 1120 1600
            WIRE 1120 1600 1120 1664
            BEGIN DISPLAY 1120 1600 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s(0)
            WIRE 1488 1536 1488 1616
            WIRE 1488 1616 1488 1664
            BEGIN DISPLAY 1488 1616 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 384 1072 384 1152
            WIRE 384 1072 496 1072
            WIRE 496 1072 496 1552
            WIRE 496 1552 640 1552
            WIRE 640 1536 640 1552
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 752 1040 752 1152
            WIRE 752 1040 896 1040
            WIRE 896 1040 896 1552
            WIRE 896 1552 1040 1552
            WIRE 1040 1536 1040 1552
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1152 1072 1152 1152
            WIRE 1152 1072 1280 1072
            WIRE 1280 1072 1280 1600
            WIRE 1280 1600 1408 1600
            WIRE 1408 1536 1408 1600
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 272 1536 272 1632
        END BRANCH
        IOMARKER 272 1632 Cout R90 28
        BEGIN BRANCH Cin
            WIRE 1520 1120 1520 1152
        END BRANCH
        IOMARKER 1520 1120 Cin R270 28
    END SHEET
END SCHEMATIC
