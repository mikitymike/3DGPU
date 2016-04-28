/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 28 12:11:17 2016
/////////////////////////////////////////////////////////////


module triangle_area_3_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_3_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_3_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_3_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_3_DW_mult_tc_6 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_3_DW_mult_tc_7 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[10]), .Y(n365) );
  INVX2 U326 ( .A(a[10]), .Y(n381) );
  INVX2 U327 ( .A(b[11]), .Y(n364) );
  INVX2 U328 ( .A(a[11]), .Y(n380) );
  INVX2 U329 ( .A(b[12]), .Y(n363) );
  INVX2 U330 ( .A(a[12]), .Y(n379) );
  INVX2 U331 ( .A(b[13]), .Y(n362) );
  INVX2 U332 ( .A(a[13]), .Y(n378) );
  INVX2 U333 ( .A(b[14]), .Y(n361) );
  INVX2 U334 ( .A(a[14]), .Y(n377) );
  INVX2 U335 ( .A(b[15]), .Y(n360) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_3_DW_mult_tc_8 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_3_DW_mult_tc_9 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_3_DW_mult_tc_10 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_3_DW_mult_tc_11 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_3 ( .p({\p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , 
        \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , 
        \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , 
        \p[y][15] , \p[y][14] , \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , 
        \p[y][9] , \p[y][8] , \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , 
        \p[y][3] , \p[y][2] , \p[y][1] , \p[y][0] }), .q({\q[x][15] , 
        \q[x][14] , \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , 
        \q[x][8] , \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , 
        \q[x][2] , \q[x][1] , \q[x][0] , \q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .r({\r[x][15] , \r[x][14] , \r[x][13] , \r[x][12] , 
        \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , \r[x][7] , \r[x][6] , 
        \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , \r[x][1] , \r[x][0] , 
        \r[y][15] , \r[y][14] , \r[y][13] , \r[y][12] , \r[y][11] , \r[y][10] , 
        \r[y][9] , \r[y][8] , \r[y][7] , \r[y][6] , \r[y][5] , \r[y][4] , 
        \r[y][3] , \r[y][2] , \r[y][1] , \r[y][0] }), area );
  output [15:0] area;
  input \p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] ,
         \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] ,
         \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , \p[y][15] , \p[y][14] ,
         \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] ,
         \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] ,
         \p[y][1] , \p[y][0] , \q[x][15] , \q[x][14] , \q[x][13] , \q[x][12] ,
         \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , \q[x][7] , \q[x][6] ,
         \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , \q[x][1] , \q[x][0] ,
         \q[y][15] , \q[y][14] , \q[y][13] , \q[y][12] , \q[y][11] ,
         \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , \q[y][6] , \q[y][5] ,
         \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , \q[y][0] , \r[x][15] ,
         \r[x][14] , \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] ,
         \r[x][8] , \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] ,
         \r[x][2] , \r[x][1] , \r[x][0] , \r[y][15] , \r[y][14] , \r[y][13] ,
         \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] ,
         \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] ,
         \r[y][0] ;
  wire   N161, \sarea2[0] , N99, N98, N97, N96, N95, N94, N93, N92, N91, N90,
         N9, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N8, N79, N78,
         N77, N76, N75, N74, N73, N72, N71, N70, N7, N69, N68, N67, N66, N65,
         N64, N63, N62, N61, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, N5, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N4,
         N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27,
         N26, N25, N24, N23, N22, N21, N20, N2, N19, N18, N17, N160, N16, N159,
         N158, N157, N156, N155, N154, N153, N152, N151, N150, N15, N149, N148,
         N147, N146, N145, N144, N143, N142, N141, N140, N14, N139, N138, N137,
         N136, N135, N134, N133, N132, N131, N130, N13, N129, N128, N127, N126,
         N125, N124, N123, N122, N121, N120, N12, N119, N118, N117, N116, N115,
         N114, N113, N112, N111, N110, N11, N109, N108, N107, N106, N105, N104,
         N103, N102, N101, N100, N10, N1, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n35, n36, n37, n38, n39, n40;
  wire   [15:0] sarea2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95;
  assign area[15] = 1'b0;

  triangle_area_3_DW01_sub_1 sub_0_root_sub_23_3 ( .A({N144, N143, N142, N141, 
        N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129}), .B({N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97}), .CI(1'b0), .DIFF({N161, sarea2[14:1], 
        \sarea2[0] }) );
  triangle_area_3_DW01_add_0 add_2_root_sub_23_3 ( .A({N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113}), .B({N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145}), .CI(1'b0), .SUM({N112, N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97})
         );
  triangle_area_3_DW01_add_1 add_1_root_sub_23_3 ( .A({N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .B({N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65}), 
        .CI(1'b0), .SUM({N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129}) );
  triangle_area_3_DW01_sub_2 sub_3_root_sub_23_3 ( .A({N64, N63, N62, N61, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49}), .B({N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81}), 
        .CI(1'b0), .DIFF({N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65}) );
  triangle_area_3_DW01_add_2 add_4_root_sub_23_3 ( .A({N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .B({N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17}), .CI(1'b0), .SUM({N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33}) );
  triangle_area_3_DW_mult_tc_6 mult_23 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N16, N15, N14, N13, N12, N11, N10, N9, N8, 
        N7, N6, N5, N4, N3, N2, N1}) );
  triangle_area_3_DW_mult_tc_7 mult_23_2 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18, N17}) );
  triangle_area_3_DW_mult_tc_8 mult_23_3 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49}) );
  triangle_area_3_DW_mult_tc_9 mult_23_4 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81}) );
  triangle_area_3_DW_mult_tc_10 mult_23_5 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113}) );
  triangle_area_3_DW_mult_tc_11 mult_23_6 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83, SYNOPSYS_UNCONNECTED__84, 
        SYNOPSYS_UNCONNECTED__85, SYNOPSYS_UNCONNECTED__86, 
        SYNOPSYS_UNCONNECTED__87, SYNOPSYS_UNCONNECTED__88, 
        SYNOPSYS_UNCONNECTED__89, SYNOPSYS_UNCONNECTED__90, 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, 
        SYNOPSYS_UNCONNECTED__95, N160, N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145}) );
  XNOR2X1 U2 ( .A(sarea2[1]), .B(n1), .Y(area[0]) );
  NAND2X1 U3 ( .A(\sarea2[0] ), .B(N161), .Y(n1) );
  XNOR2X1 U4 ( .A(sarea2[11]), .B(n2), .Y(area[10]) );
  NAND2X1 U5 ( .A(N161), .B(n3), .Y(n2) );
  XOR2X1 U6 ( .A(sarea2[12]), .B(n4), .Y(area[11]) );
  NOR2X1 U7 ( .A(n5), .B(n6), .Y(n4) );
  XNOR2X1 U8 ( .A(sarea2[13]), .B(n7), .Y(area[12]) );
  NAND2X1 U9 ( .A(N161), .B(n8), .Y(n7) );
  XOR2X1 U10 ( .A(sarea2[14]), .B(n9), .Y(area[13]) );
  NOR2X1 U11 ( .A(n10), .B(n6), .Y(n9) );
  NOR2X1 U12 ( .A(n11), .B(n12), .Y(area[14]) );
  OR2X1 U13 ( .A(n6), .B(sarea2[14]), .Y(n12) );
  INVX1 U19 ( .A(n10), .Y(n11) );
  NOR2X1 U20 ( .A(n8), .B(sarea2[13]), .Y(n10) );
  NAND2X1 U21 ( .A(n5), .B(n13), .Y(n8) );
  INVX1 U22 ( .A(sarea2[12]), .Y(n13) );
  NOR2X1 U23 ( .A(n3), .B(sarea2[11]), .Y(n5) );
  NAND2X1 U24 ( .A(n14), .B(n15), .Y(n3) );
  XNOR2X1 U25 ( .A(sarea2[2]), .B(n16), .Y(area[1]) );
  NAND2X1 U26 ( .A(N161), .B(n17), .Y(n16) );
  XNOR2X1 U27 ( .A(sarea2[3]), .B(n18), .Y(area[2]) );
  NAND2X1 U28 ( .A(N161), .B(n19), .Y(n18) );
  XNOR2X1 U29 ( .A(n20), .B(n21), .Y(area[3]) );
  NOR2X1 U30 ( .A(n22), .B(n6), .Y(n21) );
  XNOR2X1 U31 ( .A(sarea2[5]), .B(n23), .Y(area[4]) );
  NAND2X1 U32 ( .A(N161), .B(n24), .Y(n23) );
  XNOR2X1 U33 ( .A(n25), .B(n26), .Y(area[5]) );
  NOR2X1 U34 ( .A(n27), .B(n6), .Y(n26) );
  XNOR2X1 U35 ( .A(sarea2[7]), .B(n28), .Y(area[6]) );
  NAND2X1 U36 ( .A(N161), .B(n29), .Y(n28) );
  XNOR2X1 U37 ( .A(n35), .B(n36), .Y(area[7]) );
  NOR2X1 U38 ( .A(n37), .B(n6), .Y(n36) );
  XNOR2X1 U39 ( .A(sarea2[9]), .B(n38), .Y(area[8]) );
  NAND2X1 U40 ( .A(N161), .B(n39), .Y(n38) );
  XNOR2X1 U41 ( .A(n15), .B(n40), .Y(area[9]) );
  NOR2X1 U42 ( .A(n14), .B(n6), .Y(n40) );
  INVX1 U43 ( .A(N161), .Y(n6) );
  NOR2X1 U44 ( .A(n39), .B(sarea2[9]), .Y(n14) );
  NAND2X1 U45 ( .A(n37), .B(n35), .Y(n39) );
  INVX1 U46 ( .A(sarea2[8]), .Y(n35) );
  NOR2X1 U47 ( .A(n29), .B(sarea2[7]), .Y(n37) );
  NAND2X1 U48 ( .A(n27), .B(n25), .Y(n29) );
  INVX1 U49 ( .A(sarea2[6]), .Y(n25) );
  NOR2X1 U50 ( .A(n24), .B(sarea2[5]), .Y(n27) );
  NAND2X1 U51 ( .A(n22), .B(n20), .Y(n24) );
  INVX1 U52 ( .A(sarea2[4]), .Y(n20) );
  NOR2X1 U53 ( .A(n19), .B(sarea2[3]), .Y(n22) );
  OR2X1 U54 ( .A(n17), .B(sarea2[2]), .Y(n19) );
  OR2X1 U55 ( .A(sarea2[1]), .B(\sarea2[0] ), .Y(n17) );
  INVX1 U56 ( .A(sarea2[10]), .Y(n15) );
endmodule


module triangle_area_2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_2_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_2_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_2_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_2_DW_mult_tc_6 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(a[0]), .Y(n391) );
  INVX1 U306 ( .A(a[2]), .Y(n389) );
  INVX1 U307 ( .A(a[8]), .Y(n383) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(a[3]), .Y(n388) );
  INVX1 U310 ( .A(a[4]), .Y(n387) );
  INVX1 U311 ( .A(a[10]), .Y(n381) );
  INVX1 U312 ( .A(a[7]), .Y(n384) );
  INVX1 U313 ( .A(a[6]), .Y(n385) );
  INVX1 U314 ( .A(a[9]), .Y(n382) );
  INVX2 U315 ( .A(a[5]), .Y(n386) );
  INVX1 U316 ( .A(a[15]), .Y(n376) );
  INVX1 U317 ( .A(a[12]), .Y(n379) );
  INVX1 U318 ( .A(a[11]), .Y(n380) );
  INVX1 U319 ( .A(a[13]), .Y(n378) );
  INVX1 U320 ( .A(a[14]), .Y(n377) );
  INVX2 U321 ( .A(b[0]), .Y(n375) );
  INVX2 U322 ( .A(b[1]), .Y(n374) );
  INVX2 U323 ( .A(b[2]), .Y(n373) );
  INVX2 U324 ( .A(b[3]), .Y(n372) );
  INVX2 U325 ( .A(b[4]), .Y(n371) );
  INVX2 U326 ( .A(b[5]), .Y(n370) );
  INVX2 U327 ( .A(b[6]), .Y(n369) );
  INVX2 U328 ( .A(b[7]), .Y(n368) );
  INVX2 U329 ( .A(b[8]), .Y(n367) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(b[9]), .Y(n366) );
  INVX2 U332 ( .A(b[10]), .Y(n365) );
  INVX2 U333 ( .A(b[11]), .Y(n364) );
  INVX2 U334 ( .A(b[12]), .Y(n363) );
  INVX2 U335 ( .A(b[13]), .Y(n362) );
  INVX2 U336 ( .A(b[14]), .Y(n361) );
endmodule


module triangle_area_2_DW_mult_tc_7 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[10]), .Y(n365) );
  INVX2 U326 ( .A(a[10]), .Y(n381) );
  INVX2 U327 ( .A(b[11]), .Y(n364) );
  INVX2 U328 ( .A(a[11]), .Y(n380) );
  INVX2 U329 ( .A(b[12]), .Y(n363) );
  INVX2 U330 ( .A(a[12]), .Y(n379) );
  INVX2 U331 ( .A(b[13]), .Y(n362) );
  INVX2 U332 ( .A(a[13]), .Y(n378) );
  INVX2 U333 ( .A(b[14]), .Y(n361) );
  INVX2 U334 ( .A(a[14]), .Y(n377) );
  INVX2 U335 ( .A(b[15]), .Y(n360) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_2_DW_mult_tc_8 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[1]), .Y(n374) );
  INVX2 U306 ( .A(b[0]), .Y(n375) );
  INVX1 U307 ( .A(b[4]), .Y(n371) );
  INVX1 U308 ( .A(b[3]), .Y(n372) );
  INVX1 U309 ( .A(b[6]), .Y(n369) );
  INVX1 U310 ( .A(b[5]), .Y(n370) );
  INVX1 U311 ( .A(b[7]), .Y(n368) );
  INVX2 U312 ( .A(b[2]), .Y(n373) );
  INVX2 U313 ( .A(b[8]), .Y(n367) );
  INVX2 U314 ( .A(b[9]), .Y(n366) );
  INVX2 U315 ( .A(b[10]), .Y(n365) );
  INVX2 U316 ( .A(b[11]), .Y(n364) );
  INVX2 U317 ( .A(b[12]), .Y(n363) );
  INVX2 U318 ( .A(b[13]), .Y(n362) );
  INVX2 U319 ( .A(a[0]), .Y(n391) );
  INVX2 U320 ( .A(a[1]), .Y(n390) );
  INVX2 U321 ( .A(b[14]), .Y(n361) );
  INVX2 U322 ( .A(a[2]), .Y(n389) );
  INVX2 U323 ( .A(a[3]), .Y(n388) );
  INVX2 U324 ( .A(a[4]), .Y(n387) );
  INVX2 U325 ( .A(a[5]), .Y(n386) );
  INVX2 U326 ( .A(a[6]), .Y(n385) );
  INVX2 U327 ( .A(a[7]), .Y(n384) );
  INVX2 U328 ( .A(a[8]), .Y(n383) );
  INVX2 U329 ( .A(a[9]), .Y(n382) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(a[10]), .Y(n381) );
  INVX2 U332 ( .A(a[11]), .Y(n380) );
  INVX2 U333 ( .A(a[12]), .Y(n379) );
  INVX2 U334 ( .A(a[13]), .Y(n378) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_2_DW_mult_tc_9 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[1]), .Y(n374) );
  INVX2 U306 ( .A(b[0]), .Y(n375) );
  INVX1 U307 ( .A(b[4]), .Y(n371) );
  INVX1 U308 ( .A(b[3]), .Y(n372) );
  INVX1 U309 ( .A(b[6]), .Y(n369) );
  INVX2 U310 ( .A(b[5]), .Y(n370) );
  INVX1 U311 ( .A(b[7]), .Y(n368) );
  INVX2 U312 ( .A(b[2]), .Y(n373) );
  INVX2 U313 ( .A(b[8]), .Y(n367) );
  INVX2 U314 ( .A(b[9]), .Y(n366) );
  INVX2 U315 ( .A(b[10]), .Y(n365) );
  INVX2 U316 ( .A(b[11]), .Y(n364) );
  INVX2 U317 ( .A(b[12]), .Y(n363) );
  INVX2 U318 ( .A(b[13]), .Y(n362) );
  INVX2 U319 ( .A(a[0]), .Y(n391) );
  INVX2 U320 ( .A(a[1]), .Y(n390) );
  INVX2 U321 ( .A(b[14]), .Y(n361) );
  INVX2 U322 ( .A(a[2]), .Y(n389) );
  INVX2 U323 ( .A(a[3]), .Y(n388) );
  INVX2 U324 ( .A(a[4]), .Y(n387) );
  INVX2 U325 ( .A(a[5]), .Y(n386) );
  INVX2 U326 ( .A(a[6]), .Y(n385) );
  INVX2 U327 ( .A(a[7]), .Y(n384) );
  INVX2 U328 ( .A(a[8]), .Y(n383) );
  INVX2 U329 ( .A(a[9]), .Y(n382) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(a[10]), .Y(n381) );
  INVX2 U332 ( .A(a[11]), .Y(n380) );
  INVX2 U333 ( .A(a[12]), .Y(n379) );
  INVX2 U334 ( .A(a[13]), .Y(n378) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_2_DW_mult_tc_10 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_2_DW_mult_tc_11 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(a[0]), .Y(n391) );
  INVX1 U306 ( .A(a[2]), .Y(n389) );
  INVX1 U307 ( .A(a[8]), .Y(n383) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX1 U309 ( .A(a[3]), .Y(n388) );
  INVX1 U310 ( .A(a[4]), .Y(n387) );
  INVX1 U311 ( .A(a[10]), .Y(n381) );
  INVX1 U312 ( .A(a[7]), .Y(n384) );
  INVX1 U313 ( .A(a[6]), .Y(n385) );
  INVX1 U314 ( .A(a[9]), .Y(n382) );
  INVX2 U315 ( .A(a[5]), .Y(n386) );
  INVX1 U316 ( .A(a[15]), .Y(n376) );
  INVX1 U317 ( .A(a[12]), .Y(n379) );
  INVX1 U318 ( .A(a[11]), .Y(n380) );
  INVX1 U319 ( .A(a[13]), .Y(n378) );
  INVX1 U320 ( .A(a[14]), .Y(n377) );
  INVX2 U321 ( .A(b[0]), .Y(n375) );
  INVX2 U322 ( .A(b[1]), .Y(n374) );
  INVX2 U323 ( .A(b[2]), .Y(n373) );
  INVX2 U324 ( .A(b[3]), .Y(n372) );
  INVX2 U325 ( .A(b[4]), .Y(n371) );
  INVX2 U326 ( .A(b[5]), .Y(n370) );
  INVX2 U327 ( .A(b[6]), .Y(n369) );
  INVX2 U328 ( .A(b[7]), .Y(n368) );
  INVX2 U329 ( .A(b[8]), .Y(n367) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(b[9]), .Y(n366) );
  INVX2 U332 ( .A(b[10]), .Y(n365) );
  INVX2 U333 ( .A(b[11]), .Y(n364) );
  INVX2 U334 ( .A(b[12]), .Y(n363) );
  INVX2 U335 ( .A(b[13]), .Y(n362) );
  INVX2 U336 ( .A(b[14]), .Y(n361) );
endmodule


module triangle_area_2 ( .p({\p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , 
        \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , 
        \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , 
        \p[y][15] , \p[y][14] , \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , 
        \p[y][9] , \p[y][8] , \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , 
        \p[y][3] , \p[y][2] , \p[y][1] , \p[y][0] }), .q({\q[x][15] , 
        \q[x][14] , \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , 
        \q[x][8] , \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , 
        \q[x][2] , \q[x][1] , \q[x][0] , \q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .r({\r[x][15] , \r[x][14] , \r[x][13] , \r[x][12] , 
        \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , \r[x][7] , \r[x][6] , 
        \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , \r[x][1] , \r[x][0] , 
        \r[y][15] , \r[y][14] , \r[y][13] , \r[y][12] , \r[y][11] , \r[y][10] , 
        \r[y][9] , \r[y][8] , \r[y][7] , \r[y][6] , \r[y][5] , \r[y][4] , 
        \r[y][3] , \r[y][2] , \r[y][1] , \r[y][0] }), area );
  output [15:0] area;
  input \p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] ,
         \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] ,
         \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , \p[y][15] , \p[y][14] ,
         \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] ,
         \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] ,
         \p[y][1] , \p[y][0] , \q[x][15] , \q[x][14] , \q[x][13] , \q[x][12] ,
         \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , \q[x][7] , \q[x][6] ,
         \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , \q[x][1] , \q[x][0] ,
         \q[y][15] , \q[y][14] , \q[y][13] , \q[y][12] , \q[y][11] ,
         \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , \q[y][6] , \q[y][5] ,
         \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , \q[y][0] , \r[x][15] ,
         \r[x][14] , \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] ,
         \r[x][8] , \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] ,
         \r[x][2] , \r[x][1] , \r[x][0] , \r[y][15] , \r[y][14] , \r[y][13] ,
         \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] ,
         \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] ,
         \r[y][0] ;
  wire   N161, \sarea2[0] , N99, N98, N97, N96, N95, N94, N93, N92, N91, N90,
         N9, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N8, N79, N78,
         N77, N76, N75, N74, N73, N72, N71, N70, N7, N69, N68, N67, N66, N65,
         N64, N63, N62, N61, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, N5, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N4,
         N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27,
         N26, N25, N24, N23, N22, N21, N20, N2, N19, N18, N17, N160, N16, N159,
         N158, N157, N156, N155, N154, N153, N152, N151, N150, N15, N149, N148,
         N147, N146, N145, N144, N143, N142, N141, N140, N14, N139, N138, N137,
         N136, N135, N134, N133, N132, N131, N130, N13, N129, N128, N127, N126,
         N125, N124, N123, N122, N121, N120, N12, N119, N118, N117, N116, N115,
         N114, N113, N112, N111, N110, N11, N109, N108, N107, N106, N105, N104,
         N103, N102, N101, N100, N10, N1, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n35, n36, n37, n38, n39;
  wire   [15:0] sarea2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95;
  assign area[15] = 1'b0;

  triangle_area_2_DW01_sub_1 sub_0_root_sub_23_3 ( .A({N144, N143, N142, N141, 
        N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129}), .B({N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97}), .CI(1'b0), .DIFF({N161, sarea2[14:1], 
        \sarea2[0] }) );
  triangle_area_2_DW01_add_0 add_2_root_sub_23_3 ( .A({N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113}), .B({N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145}), .CI(1'b0), .SUM({N112, N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97})
         );
  triangle_area_2_DW01_add_1 add_1_root_sub_23_3 ( .A({N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .B({N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65}), 
        .CI(1'b0), .SUM({N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129}) );
  triangle_area_2_DW01_sub_2 sub_3_root_sub_23_3 ( .A({N64, N63, N62, N61, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49}), .B({N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81}), 
        .CI(1'b0), .DIFF({N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65}) );
  triangle_area_2_DW01_add_2 add_4_root_sub_23_3 ( .A({N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .B({N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17}), .CI(1'b0), .SUM({N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33}) );
  triangle_area_2_DW_mult_tc_6 mult_23 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N16, N15, N14, N13, N12, N11, N10, N9, N8, 
        N7, N6, N5, N4, N3, N2, N1}) );
  triangle_area_2_DW_mult_tc_7 mult_23_2 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18, N17}) );
  triangle_area_2_DW_mult_tc_8 mult_23_3 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49}) );
  triangle_area_2_DW_mult_tc_9 mult_23_4 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81}) );
  triangle_area_2_DW_mult_tc_10 mult_23_5 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113}) );
  triangle_area_2_DW_mult_tc_11 mult_23_6 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83, SYNOPSYS_UNCONNECTED__84, 
        SYNOPSYS_UNCONNECTED__85, SYNOPSYS_UNCONNECTED__86, 
        SYNOPSYS_UNCONNECTED__87, SYNOPSYS_UNCONNECTED__88, 
        SYNOPSYS_UNCONNECTED__89, SYNOPSYS_UNCONNECTED__90, 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, 
        SYNOPSYS_UNCONNECTED__95, N160, N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145}) );
  AND2X2 U2 ( .A(n11), .B(n1), .Y(area[14]) );
  NOR2X1 U3 ( .A(n7), .B(sarea2[14]), .Y(n1) );
  XNOR2X1 U4 ( .A(sarea2[1]), .B(n2), .Y(area[0]) );
  NAND2X1 U5 ( .A(\sarea2[0] ), .B(N161), .Y(n2) );
  XNOR2X1 U6 ( .A(sarea2[11]), .B(n3), .Y(area[10]) );
  NAND2X1 U7 ( .A(N161), .B(n4), .Y(n3) );
  XOR2X1 U8 ( .A(sarea2[12]), .B(n5), .Y(area[11]) );
  NOR2X1 U9 ( .A(n6), .B(n7), .Y(n5) );
  XNOR2X1 U10 ( .A(sarea2[13]), .B(n8), .Y(area[12]) );
  NAND2X1 U11 ( .A(N161), .B(n9), .Y(n8) );
  XOR2X1 U12 ( .A(sarea2[14]), .B(n10), .Y(area[13]) );
  NOR2X1 U13 ( .A(n11), .B(n7), .Y(n10) );
  NOR2X1 U19 ( .A(n9), .B(sarea2[13]), .Y(n11) );
  NAND2X1 U20 ( .A(n6), .B(n12), .Y(n9) );
  INVX1 U21 ( .A(sarea2[12]), .Y(n12) );
  NOR2X1 U22 ( .A(n4), .B(sarea2[11]), .Y(n6) );
  NAND2X1 U23 ( .A(n13), .B(n14), .Y(n4) );
  XNOR2X1 U24 ( .A(sarea2[2]), .B(n15), .Y(area[1]) );
  NAND2X1 U25 ( .A(N161), .B(n16), .Y(n15) );
  XNOR2X1 U26 ( .A(sarea2[3]), .B(n17), .Y(area[2]) );
  NAND2X1 U27 ( .A(N161), .B(n18), .Y(n17) );
  XNOR2X1 U28 ( .A(n19), .B(n20), .Y(area[3]) );
  NOR2X1 U29 ( .A(n21), .B(n7), .Y(n20) );
  XNOR2X1 U30 ( .A(sarea2[5]), .B(n22), .Y(area[4]) );
  NAND2X1 U31 ( .A(N161), .B(n23), .Y(n22) );
  XNOR2X1 U32 ( .A(n24), .B(n25), .Y(area[5]) );
  NOR2X1 U33 ( .A(n26), .B(n7), .Y(n25) );
  XNOR2X1 U34 ( .A(sarea2[7]), .B(n27), .Y(area[6]) );
  NAND2X1 U35 ( .A(N161), .B(n28), .Y(n27) );
  XNOR2X1 U36 ( .A(n29), .B(n35), .Y(area[7]) );
  NOR2X1 U37 ( .A(n36), .B(n7), .Y(n35) );
  XNOR2X1 U38 ( .A(sarea2[9]), .B(n37), .Y(area[8]) );
  NAND2X1 U39 ( .A(N161), .B(n38), .Y(n37) );
  XNOR2X1 U40 ( .A(n14), .B(n39), .Y(area[9]) );
  NOR2X1 U41 ( .A(n13), .B(n7), .Y(n39) );
  INVX1 U42 ( .A(N161), .Y(n7) );
  NOR2X1 U43 ( .A(n38), .B(sarea2[9]), .Y(n13) );
  NAND2X1 U44 ( .A(n36), .B(n29), .Y(n38) );
  INVX1 U45 ( .A(sarea2[8]), .Y(n29) );
  NOR2X1 U46 ( .A(n28), .B(sarea2[7]), .Y(n36) );
  NAND2X1 U47 ( .A(n26), .B(n24), .Y(n28) );
  INVX1 U48 ( .A(sarea2[6]), .Y(n24) );
  NOR2X1 U49 ( .A(n23), .B(sarea2[5]), .Y(n26) );
  NAND2X1 U50 ( .A(n21), .B(n19), .Y(n23) );
  INVX1 U51 ( .A(sarea2[4]), .Y(n19) );
  NOR2X1 U52 ( .A(n18), .B(sarea2[3]), .Y(n21) );
  OR2X1 U53 ( .A(n16), .B(sarea2[2]), .Y(n18) );
  OR2X1 U54 ( .A(sarea2[1]), .B(\sarea2[0] ), .Y(n16) );
  INVX1 U55 ( .A(sarea2[10]), .Y(n14) );
endmodule


module triangle_area_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_1_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_1_DW_mult_tc_6 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[1]), .Y(n374) );
  INVX2 U306 ( .A(b[0]), .Y(n375) );
  INVX1 U307 ( .A(b[4]), .Y(n371) );
  INVX1 U308 ( .A(b[3]), .Y(n372) );
  INVX1 U309 ( .A(b[6]), .Y(n369) );
  INVX1 U310 ( .A(b[5]), .Y(n370) );
  INVX1 U311 ( .A(b[7]), .Y(n368) );
  INVX2 U312 ( .A(b[2]), .Y(n373) );
  INVX1 U313 ( .A(b[8]), .Y(n367) );
  INVX1 U314 ( .A(b[9]), .Y(n366) );
  INVX1 U315 ( .A(b[10]), .Y(n365) );
  INVX2 U316 ( .A(b[11]), .Y(n364) );
  INVX2 U317 ( .A(b[12]), .Y(n363) );
  INVX2 U318 ( .A(b[13]), .Y(n362) );
  INVX2 U319 ( .A(a[0]), .Y(n391) );
  INVX2 U320 ( .A(a[1]), .Y(n390) );
  INVX2 U321 ( .A(b[14]), .Y(n361) );
  INVX2 U322 ( .A(a[2]), .Y(n389) );
  INVX2 U323 ( .A(a[3]), .Y(n388) );
  INVX2 U324 ( .A(a[4]), .Y(n387) );
  INVX2 U325 ( .A(a[5]), .Y(n386) );
  INVX2 U326 ( .A(a[6]), .Y(n385) );
  INVX2 U327 ( .A(a[7]), .Y(n384) );
  INVX2 U328 ( .A(a[8]), .Y(n383) );
  INVX2 U329 ( .A(a[9]), .Y(n382) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(a[10]), .Y(n381) );
  INVX2 U332 ( .A(a[11]), .Y(n380) );
  INVX2 U333 ( .A(a[12]), .Y(n379) );
  INVX2 U334 ( .A(a[13]), .Y(n378) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_1_DW_mult_tc_7 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(a[0]), .Y(n391) );
  INVX1 U306 ( .A(a[2]), .Y(n389) );
  INVX1 U307 ( .A(a[8]), .Y(n383) );
  INVX1 U308 ( .A(a[1]), .Y(n390) );
  INVX1 U309 ( .A(a[3]), .Y(n388) );
  INVX1 U310 ( .A(a[4]), .Y(n387) );
  INVX1 U311 ( .A(a[10]), .Y(n381) );
  INVX1 U312 ( .A(a[7]), .Y(n384) );
  INVX1 U313 ( .A(a[6]), .Y(n385) );
  INVX1 U314 ( .A(a[9]), .Y(n382) );
  INVX1 U315 ( .A(a[5]), .Y(n386) );
  INVX1 U316 ( .A(a[15]), .Y(n376) );
  INVX1 U317 ( .A(a[12]), .Y(n379) );
  INVX1 U318 ( .A(a[11]), .Y(n380) );
  INVX1 U319 ( .A(a[13]), .Y(n378) );
  INVX1 U320 ( .A(a[14]), .Y(n377) );
  INVX2 U321 ( .A(b[0]), .Y(n375) );
  INVX2 U322 ( .A(b[1]), .Y(n374) );
  INVX2 U323 ( .A(b[2]), .Y(n373) );
  INVX2 U324 ( .A(b[3]), .Y(n372) );
  INVX2 U325 ( .A(b[4]), .Y(n371) );
  INVX2 U326 ( .A(b[5]), .Y(n370) );
  INVX2 U327 ( .A(b[6]), .Y(n369) );
  INVX2 U328 ( .A(b[7]), .Y(n368) );
  INVX2 U329 ( .A(b[8]), .Y(n367) );
  INVX2 U330 ( .A(b[9]), .Y(n366) );
  INVX2 U331 ( .A(b[10]), .Y(n365) );
  INVX2 U332 ( .A(b[11]), .Y(n364) );
  INVX2 U333 ( .A(b[12]), .Y(n363) );
  INVX2 U334 ( .A(b[13]), .Y(n362) );
  INVX2 U335 ( .A(b[14]), .Y(n361) );
  INVX2 U336 ( .A(b[15]), .Y(n360) );
endmodule


module triangle_area_1_DW_mult_tc_8 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_1_DW_mult_tc_9 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(a[0]), .Y(n391) );
  INVX2 U306 ( .A(a[2]), .Y(n389) );
  INVX1 U307 ( .A(a[8]), .Y(n383) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(a[3]), .Y(n388) );
  INVX2 U310 ( .A(a[4]), .Y(n387) );
  INVX1 U311 ( .A(a[10]), .Y(n381) );
  INVX1 U312 ( .A(a[7]), .Y(n384) );
  INVX2 U313 ( .A(a[6]), .Y(n385) );
  INVX1 U314 ( .A(a[9]), .Y(n382) );
  INVX2 U315 ( .A(a[5]), .Y(n386) );
  INVX1 U316 ( .A(a[15]), .Y(n376) );
  INVX1 U317 ( .A(a[12]), .Y(n379) );
  INVX1 U318 ( .A(a[11]), .Y(n380) );
  INVX1 U319 ( .A(a[13]), .Y(n378) );
  INVX1 U320 ( .A(a[14]), .Y(n377) );
  INVX2 U321 ( .A(b[0]), .Y(n375) );
  INVX2 U322 ( .A(b[1]), .Y(n374) );
  INVX2 U323 ( .A(b[2]), .Y(n373) );
  INVX2 U324 ( .A(b[3]), .Y(n372) );
  INVX2 U325 ( .A(b[4]), .Y(n371) );
  INVX2 U326 ( .A(b[5]), .Y(n370) );
  INVX2 U327 ( .A(b[6]), .Y(n369) );
  INVX2 U328 ( .A(b[7]), .Y(n368) );
  INVX2 U329 ( .A(b[8]), .Y(n367) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(b[9]), .Y(n366) );
  INVX2 U332 ( .A(b[10]), .Y(n365) );
  INVX2 U333 ( .A(b[11]), .Y(n364) );
  INVX2 U334 ( .A(b[12]), .Y(n363) );
  INVX2 U335 ( .A(b[13]), .Y(n362) );
  INVX2 U336 ( .A(b[14]), .Y(n361) );
endmodule


module triangle_area_1_DW_mult_tc_10 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[1]), .Y(n374) );
  INVX2 U306 ( .A(b[0]), .Y(n375) );
  INVX1 U307 ( .A(b[4]), .Y(n371) );
  INVX1 U308 ( .A(b[3]), .Y(n372) );
  INVX1 U309 ( .A(b[6]), .Y(n369) );
  INVX1 U310 ( .A(b[5]), .Y(n370) );
  INVX1 U311 ( .A(b[7]), .Y(n368) );
  INVX2 U312 ( .A(b[2]), .Y(n373) );
  INVX1 U313 ( .A(b[8]), .Y(n367) );
  INVX1 U314 ( .A(b[9]), .Y(n366) );
  INVX1 U315 ( .A(b[10]), .Y(n365) );
  INVX2 U316 ( .A(b[11]), .Y(n364) );
  INVX2 U317 ( .A(b[12]), .Y(n363) );
  INVX2 U318 ( .A(b[13]), .Y(n362) );
  INVX2 U319 ( .A(a[0]), .Y(n391) );
  INVX2 U320 ( .A(a[1]), .Y(n390) );
  INVX2 U321 ( .A(b[14]), .Y(n361) );
  INVX2 U322 ( .A(a[2]), .Y(n389) );
  INVX2 U323 ( .A(a[3]), .Y(n388) );
  INVX2 U324 ( .A(a[4]), .Y(n387) );
  INVX2 U325 ( .A(a[5]), .Y(n386) );
  INVX2 U326 ( .A(a[6]), .Y(n385) );
  INVX2 U327 ( .A(a[7]), .Y(n384) );
  INVX2 U328 ( .A(a[8]), .Y(n383) );
  INVX2 U329 ( .A(a[9]), .Y(n382) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(a[10]), .Y(n381) );
  INVX2 U332 ( .A(a[11]), .Y(n380) );
  INVX2 U333 ( .A(a[12]), .Y(n379) );
  INVX2 U334 ( .A(a[13]), .Y(n378) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_1_DW_mult_tc_11 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_1 ( .p({\p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , 
        \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , 
        \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , 
        \p[y][15] , \p[y][14] , \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , 
        \p[y][9] , \p[y][8] , \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , 
        \p[y][3] , \p[y][2] , \p[y][1] , \p[y][0] }), .q({\q[x][15] , 
        \q[x][14] , \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , 
        \q[x][8] , \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , 
        \q[x][2] , \q[x][1] , \q[x][0] , \q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .r({\r[x][15] , \r[x][14] , \r[x][13] , \r[x][12] , 
        \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , \r[x][7] , \r[x][6] , 
        \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , \r[x][1] , \r[x][0] , 
        \r[y][15] , \r[y][14] , \r[y][13] , \r[y][12] , \r[y][11] , \r[y][10] , 
        \r[y][9] , \r[y][8] , \r[y][7] , \r[y][6] , \r[y][5] , \r[y][4] , 
        \r[y][3] , \r[y][2] , \r[y][1] , \r[y][0] }), area );
  output [15:0] area;
  input \p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] ,
         \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] ,
         \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , \p[y][15] , \p[y][14] ,
         \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] ,
         \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] ,
         \p[y][1] , \p[y][0] , \q[x][15] , \q[x][14] , \q[x][13] , \q[x][12] ,
         \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , \q[x][7] , \q[x][6] ,
         \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , \q[x][1] , \q[x][0] ,
         \q[y][15] , \q[y][14] , \q[y][13] , \q[y][12] , \q[y][11] ,
         \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , \q[y][6] , \q[y][5] ,
         \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , \q[y][0] , \r[x][15] ,
         \r[x][14] , \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] ,
         \r[x][8] , \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] ,
         \r[x][2] , \r[x][1] , \r[x][0] , \r[y][15] , \r[y][14] , \r[y][13] ,
         \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] ,
         \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] ,
         \r[y][0] ;
  wire   N161, \sarea2[0] , N99, N98, N97, N96, N95, N94, N93, N92, N91, N90,
         N9, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N8, N79, N78,
         N77, N76, N75, N74, N73, N72, N71, N70, N7, N69, N68, N67, N66, N65,
         N64, N63, N62, N61, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, N5, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N4,
         N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27,
         N26, N25, N24, N23, N22, N21, N20, N2, N19, N18, N17, N160, N16, N159,
         N158, N157, N156, N155, N154, N153, N152, N151, N150, N15, N149, N148,
         N147, N146, N145, N144, N143, N142, N141, N140, N14, N139, N138, N137,
         N136, N135, N134, N133, N132, N131, N130, N13, N129, N128, N127, N126,
         N125, N124, N123, N122, N121, N120, N12, N119, N118, N117, N116, N115,
         N114, N113, N112, N111, N110, N11, N109, N108, N107, N106, N105, N104,
         N103, N102, N101, N100, N10, N1, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n35, n36, n37, n38, n39;
  wire   [15:0] sarea2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95;
  assign area[15] = 1'b0;

  triangle_area_1_DW01_sub_1 sub_0_root_sub_23_3 ( .A({N144, N143, N142, N141, 
        N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129}), .B({N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97}), .CI(1'b0), .DIFF({N161, sarea2[14:1], 
        \sarea2[0] }) );
  triangle_area_1_DW01_add_0 add_2_root_sub_23_3 ( .A({N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113}), .B({N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145}), .CI(1'b0), .SUM({N112, N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97})
         );
  triangle_area_1_DW01_add_1 add_1_root_sub_23_3 ( .A({N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .B({N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65}), 
        .CI(1'b0), .SUM({N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129}) );
  triangle_area_1_DW01_sub_2 sub_3_root_sub_23_3 ( .A({N64, N63, N62, N61, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49}), .B({N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81}), 
        .CI(1'b0), .DIFF({N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65}) );
  triangle_area_1_DW01_add_2 add_4_root_sub_23_3 ( .A({N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .B({N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17}), .CI(1'b0), .SUM({N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33}) );
  triangle_area_1_DW_mult_tc_6 mult_23 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N16, N15, N14, N13, N12, N11, N10, N9, N8, 
        N7, N6, N5, N4, N3, N2, N1}) );
  triangle_area_1_DW_mult_tc_7 mult_23_2 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18, N17}) );
  triangle_area_1_DW_mult_tc_8 mult_23_3 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49}) );
  triangle_area_1_DW_mult_tc_9 mult_23_4 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81}) );
  triangle_area_1_DW_mult_tc_10 mult_23_5 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113}) );
  triangle_area_1_DW_mult_tc_11 mult_23_6 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83, SYNOPSYS_UNCONNECTED__84, 
        SYNOPSYS_UNCONNECTED__85, SYNOPSYS_UNCONNECTED__86, 
        SYNOPSYS_UNCONNECTED__87, SYNOPSYS_UNCONNECTED__88, 
        SYNOPSYS_UNCONNECTED__89, SYNOPSYS_UNCONNECTED__90, 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, 
        SYNOPSYS_UNCONNECTED__95, N160, N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145}) );
  AND2X2 U2 ( .A(n11), .B(n1), .Y(area[14]) );
  NOR2X1 U3 ( .A(n7), .B(sarea2[14]), .Y(n1) );
  XNOR2X1 U4 ( .A(sarea2[1]), .B(n2), .Y(area[0]) );
  NAND2X1 U5 ( .A(\sarea2[0] ), .B(N161), .Y(n2) );
  XNOR2X1 U6 ( .A(sarea2[11]), .B(n3), .Y(area[10]) );
  NAND2X1 U7 ( .A(N161), .B(n4), .Y(n3) );
  XOR2X1 U8 ( .A(sarea2[12]), .B(n5), .Y(area[11]) );
  NOR2X1 U9 ( .A(n6), .B(n7), .Y(n5) );
  XNOR2X1 U10 ( .A(sarea2[13]), .B(n8), .Y(area[12]) );
  NAND2X1 U11 ( .A(N161), .B(n9), .Y(n8) );
  XOR2X1 U12 ( .A(sarea2[14]), .B(n10), .Y(area[13]) );
  NOR2X1 U13 ( .A(n11), .B(n7), .Y(n10) );
  NOR2X1 U19 ( .A(n9), .B(sarea2[13]), .Y(n11) );
  NAND2X1 U20 ( .A(n6), .B(n12), .Y(n9) );
  INVX1 U21 ( .A(sarea2[12]), .Y(n12) );
  NOR2X1 U22 ( .A(n4), .B(sarea2[11]), .Y(n6) );
  NAND2X1 U23 ( .A(n13), .B(n14), .Y(n4) );
  XNOR2X1 U24 ( .A(sarea2[2]), .B(n15), .Y(area[1]) );
  NAND2X1 U25 ( .A(N161), .B(n16), .Y(n15) );
  XNOR2X1 U26 ( .A(sarea2[3]), .B(n17), .Y(area[2]) );
  NAND2X1 U27 ( .A(N161), .B(n18), .Y(n17) );
  XNOR2X1 U28 ( .A(n19), .B(n20), .Y(area[3]) );
  NOR2X1 U29 ( .A(n21), .B(n7), .Y(n20) );
  XNOR2X1 U30 ( .A(sarea2[5]), .B(n22), .Y(area[4]) );
  NAND2X1 U31 ( .A(N161), .B(n23), .Y(n22) );
  XNOR2X1 U32 ( .A(n24), .B(n25), .Y(area[5]) );
  NOR2X1 U33 ( .A(n26), .B(n7), .Y(n25) );
  XNOR2X1 U34 ( .A(sarea2[7]), .B(n27), .Y(area[6]) );
  NAND2X1 U35 ( .A(N161), .B(n28), .Y(n27) );
  XNOR2X1 U36 ( .A(n29), .B(n35), .Y(area[7]) );
  NOR2X1 U37 ( .A(n36), .B(n7), .Y(n35) );
  XNOR2X1 U38 ( .A(sarea2[9]), .B(n37), .Y(area[8]) );
  NAND2X1 U39 ( .A(N161), .B(n38), .Y(n37) );
  XNOR2X1 U40 ( .A(n14), .B(n39), .Y(area[9]) );
  NOR2X1 U41 ( .A(n13), .B(n7), .Y(n39) );
  INVX1 U42 ( .A(N161), .Y(n7) );
  NOR2X1 U43 ( .A(n38), .B(sarea2[9]), .Y(n13) );
  NAND2X1 U44 ( .A(n36), .B(n29), .Y(n38) );
  INVX1 U45 ( .A(sarea2[8]), .Y(n29) );
  NOR2X1 U46 ( .A(n28), .B(sarea2[7]), .Y(n36) );
  NAND2X1 U47 ( .A(n26), .B(n24), .Y(n28) );
  INVX1 U48 ( .A(sarea2[6]), .Y(n24) );
  NOR2X1 U49 ( .A(n23), .B(sarea2[5]), .Y(n26) );
  NAND2X1 U50 ( .A(n21), .B(n19), .Y(n23) );
  INVX1 U51 ( .A(sarea2[4]), .Y(n19) );
  NOR2X1 U52 ( .A(n18), .B(sarea2[3]), .Y(n21) );
  OR2X1 U53 ( .A(n16), .B(sarea2[2]), .Y(n18) );
  OR2X1 U54 ( .A(sarea2[1]), .B(\sarea2[0] ), .Y(n16) );
  INVX1 U55 ( .A(sarea2[10]), .Y(n14) );
endmodule


module triangle_area_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_0_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [16:0] carry;

  FAX1 U2_15 ( .A(A[15]), .B(n1), .C(carry[15]), .YS(DIFF[15]) );
  FAX1 U2_14 ( .A(A[14]), .B(n2), .C(carry[14]), .YC(carry[15]), .YS(DIFF[14])
         );
  FAX1 U2_13 ( .A(A[13]), .B(n3), .C(carry[13]), .YC(carry[14]), .YS(DIFF[13])
         );
  FAX1 U2_12 ( .A(A[12]), .B(n4), .C(carry[12]), .YC(carry[13]), .YS(DIFF[12])
         );
  FAX1 U2_11 ( .A(A[11]), .B(n5), .C(carry[11]), .YC(carry[12]), .YS(DIFF[11])
         );
  FAX1 U2_10 ( .A(A[10]), .B(n6), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n7), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n8), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n10), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n11), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n12), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n13), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n14), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n15), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n16), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[15]), .Y(n1) );
  INVX2 U4 ( .A(B[14]), .Y(n2) );
  INVX2 U5 ( .A(B[13]), .Y(n3) );
  INVX2 U6 ( .A(B[12]), .Y(n4) );
  INVX2 U7 ( .A(B[11]), .Y(n5) );
  INVX2 U8 ( .A(B[10]), .Y(n6) );
  INVX2 U9 ( .A(B[9]), .Y(n7) );
  INVX2 U10 ( .A(B[8]), .Y(n8) );
  INVX2 U11 ( .A(B[7]), .Y(n9) );
  INVX2 U12 ( .A(B[6]), .Y(n10) );
  INVX2 U13 ( .A(B[5]), .Y(n11) );
  INVX2 U14 ( .A(B[4]), .Y(n12) );
  INVX2 U15 ( .A(B[3]), .Y(n13) );
  INVX2 U16 ( .A(B[2]), .Y(n14) );
  INVX2 U17 ( .A(B[1]), .Y(n15) );
  INVX2 U18 ( .A(B[0]), .Y(n16) );
endmodule


module triangle_area_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module triangle_area_0_DW_mult_tc_6 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_0_DW_mult_tc_7 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[1]), .Y(n374) );
  INVX2 U306 ( .A(b[0]), .Y(n375) );
  INVX1 U307 ( .A(b[4]), .Y(n371) );
  INVX1 U308 ( .A(b[3]), .Y(n372) );
  INVX1 U309 ( .A(b[6]), .Y(n369) );
  INVX1 U310 ( .A(b[5]), .Y(n370) );
  INVX1 U311 ( .A(b[7]), .Y(n368) );
  INVX1 U312 ( .A(b[2]), .Y(n373) );
  INVX1 U313 ( .A(b[8]), .Y(n367) );
  INVX1 U314 ( .A(b[9]), .Y(n366) );
  INVX1 U315 ( .A(b[10]), .Y(n365) );
  INVX1 U316 ( .A(b[11]), .Y(n364) );
  INVX1 U317 ( .A(b[12]), .Y(n363) );
  INVX2 U318 ( .A(b[13]), .Y(n362) );
  INVX2 U319 ( .A(a[0]), .Y(n391) );
  INVX2 U320 ( .A(b[15]), .Y(n360) );
  INVX2 U321 ( .A(a[1]), .Y(n390) );
  INVX2 U322 ( .A(b[14]), .Y(n361) );
  INVX2 U323 ( .A(a[2]), .Y(n389) );
  INVX2 U324 ( .A(a[3]), .Y(n388) );
  INVX2 U325 ( .A(a[4]), .Y(n387) );
  INVX2 U326 ( .A(a[5]), .Y(n386) );
  INVX2 U327 ( .A(a[6]), .Y(n385) );
  INVX2 U328 ( .A(a[7]), .Y(n384) );
  INVX2 U329 ( .A(a[8]), .Y(n383) );
  INVX2 U330 ( .A(a[9]), .Y(n382) );
  INVX2 U331 ( .A(a[10]), .Y(n381) );
  INVX2 U332 ( .A(a[11]), .Y(n380) );
  INVX2 U333 ( .A(a[12]), .Y(n379) );
  INVX2 U334 ( .A(a[13]), .Y(n378) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_0_DW_mult_tc_8 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(a[0]), .Y(n391) );
  INVX1 U306 ( .A(a[2]), .Y(n389) );
  INVX1 U307 ( .A(a[8]), .Y(n383) );
  INVX1 U308 ( .A(a[1]), .Y(n390) );
  INVX1 U309 ( .A(a[3]), .Y(n388) );
  INVX1 U310 ( .A(a[4]), .Y(n387) );
  INVX1 U311 ( .A(a[10]), .Y(n381) );
  INVX1 U312 ( .A(a[7]), .Y(n384) );
  INVX1 U313 ( .A(a[6]), .Y(n385) );
  INVX1 U314 ( .A(a[9]), .Y(n382) );
  INVX1 U315 ( .A(a[5]), .Y(n386) );
  INVX1 U316 ( .A(a[15]), .Y(n376) );
  INVX1 U317 ( .A(a[12]), .Y(n379) );
  INVX1 U318 ( .A(a[11]), .Y(n380) );
  INVX1 U319 ( .A(a[13]), .Y(n378) );
  INVX1 U320 ( .A(a[14]), .Y(n377) );
  INVX2 U321 ( .A(b[0]), .Y(n375) );
  INVX2 U322 ( .A(b[1]), .Y(n374) );
  INVX2 U323 ( .A(b[2]), .Y(n373) );
  INVX2 U324 ( .A(b[3]), .Y(n372) );
  INVX2 U325 ( .A(b[4]), .Y(n371) );
  INVX2 U326 ( .A(b[5]), .Y(n370) );
  INVX2 U327 ( .A(b[6]), .Y(n369) );
  INVX2 U328 ( .A(b[7]), .Y(n368) );
  INVX2 U329 ( .A(b[8]), .Y(n367) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(b[9]), .Y(n366) );
  INVX2 U332 ( .A(b[10]), .Y(n365) );
  INVX2 U333 ( .A(b[11]), .Y(n364) );
  INVX2 U334 ( .A(b[12]), .Y(n363) );
  INVX2 U335 ( .A(b[13]), .Y(n362) );
  INVX2 U336 ( .A(b[14]), .Y(n361) );
endmodule


module triangle_area_0_DW_mult_tc_9 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[0]), .Y(n375) );
  INVX2 U306 ( .A(a[0]), .Y(n391) );
  INVX2 U307 ( .A(b[1]), .Y(n374) );
  INVX2 U308 ( .A(a[1]), .Y(n390) );
  INVX2 U309 ( .A(b[2]), .Y(n373) );
  INVX2 U310 ( .A(a[2]), .Y(n389) );
  INVX2 U311 ( .A(b[3]), .Y(n372) );
  INVX2 U312 ( .A(a[3]), .Y(n388) );
  INVX2 U313 ( .A(b[4]), .Y(n371) );
  INVX2 U314 ( .A(a[4]), .Y(n387) );
  INVX2 U315 ( .A(b[5]), .Y(n370) );
  INVX2 U316 ( .A(a[5]), .Y(n386) );
  INVX2 U317 ( .A(b[6]), .Y(n369) );
  INVX2 U318 ( .A(a[6]), .Y(n385) );
  INVX2 U319 ( .A(b[7]), .Y(n368) );
  INVX2 U320 ( .A(a[7]), .Y(n384) );
  INVX2 U321 ( .A(b[8]), .Y(n367) );
  INVX2 U322 ( .A(a[8]), .Y(n383) );
  INVX2 U323 ( .A(b[9]), .Y(n366) );
  INVX2 U324 ( .A(a[9]), .Y(n382) );
  INVX2 U325 ( .A(b[15]), .Y(n360) );
  INVX2 U326 ( .A(b[10]), .Y(n365) );
  INVX2 U327 ( .A(a[10]), .Y(n381) );
  INVX2 U328 ( .A(b[11]), .Y(n364) );
  INVX2 U329 ( .A(a[11]), .Y(n380) );
  INVX2 U330 ( .A(b[12]), .Y(n363) );
  INVX2 U331 ( .A(a[12]), .Y(n379) );
  INVX2 U332 ( .A(b[13]), .Y(n362) );
  INVX2 U333 ( .A(a[13]), .Y(n378) );
  INVX2 U334 ( .A(b[14]), .Y(n361) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_0_DW_mult_tc_10 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(a[0]), .Y(n391) );
  INVX1 U306 ( .A(a[2]), .Y(n389) );
  INVX1 U307 ( .A(a[8]), .Y(n383) );
  INVX1 U308 ( .A(a[1]), .Y(n390) );
  INVX1 U309 ( .A(a[3]), .Y(n388) );
  INVX1 U310 ( .A(a[4]), .Y(n387) );
  INVX1 U311 ( .A(a[10]), .Y(n381) );
  INVX1 U312 ( .A(a[7]), .Y(n384) );
  INVX1 U313 ( .A(a[6]), .Y(n385) );
  INVX1 U314 ( .A(a[9]), .Y(n382) );
  INVX1 U315 ( .A(a[5]), .Y(n386) );
  INVX1 U316 ( .A(a[15]), .Y(n376) );
  INVX1 U317 ( .A(a[12]), .Y(n379) );
  INVX1 U318 ( .A(a[11]), .Y(n380) );
  INVX1 U319 ( .A(a[13]), .Y(n378) );
  INVX1 U320 ( .A(a[14]), .Y(n377) );
  INVX2 U321 ( .A(b[0]), .Y(n375) );
  INVX2 U322 ( .A(b[1]), .Y(n374) );
  INVX2 U323 ( .A(b[2]), .Y(n373) );
  INVX2 U324 ( .A(b[3]), .Y(n372) );
  INVX2 U325 ( .A(b[4]), .Y(n371) );
  INVX2 U326 ( .A(b[5]), .Y(n370) );
  INVX2 U327 ( .A(b[6]), .Y(n369) );
  INVX2 U328 ( .A(b[7]), .Y(n368) );
  INVX2 U329 ( .A(b[8]), .Y(n367) );
  INVX2 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(b[9]), .Y(n366) );
  INVX2 U332 ( .A(b[10]), .Y(n365) );
  INVX2 U333 ( .A(b[11]), .Y(n364) );
  INVX2 U334 ( .A(b[12]), .Y(n363) );
  INVX2 U335 ( .A(b[13]), .Y(n362) );
  INVX2 U336 ( .A(b[14]), .Y(n361) );
endmodule


module triangle_area_0_DW_mult_tc_11 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n359), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n21), .Y(n18) );
  XOR2X1 U21 ( .A(n55), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n23), .B(n53), .Y(n20) );
  XOR2X1 U23 ( .A(n27), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n25), .B(n57), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n29), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n59), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n42), .B(n33), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n41), .Y(n30) );
  XOR2X1 U33 ( .A(n291), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n35), .B(n246), .Y(n32) );
  XOR2X1 U35 ( .A(n280), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n303), .B(n316), .Y(n34) );
  XOR2X1 U37 ( .A(n261), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n240), .B(n330), .Y(n36) );
  XOR2X1 U39 ( .A(n253), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n225), .B(n235), .Y(n38) );
  XOR2X1 U41 ( .A(n270), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n345), .B(n226), .Y(n40) );
  XOR2X1 U43 ( .A(n231), .B(n228), .Y(n42) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n346), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n347), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n348), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n349), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n350), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n351), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n352), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n353), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n354), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n355), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n356), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n357), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n358), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n375), .B(n376), .Y(n225) );
  NOR2X1 U136 ( .A(n377), .B(n374), .Y(n226) );
  NOR2X1 U137 ( .A(n377), .B(n375), .Y(n227) );
  NOR2X1 U138 ( .A(n378), .B(n373), .Y(n228) );
  NOR2X1 U139 ( .A(n378), .B(n374), .Y(n229) );
  NOR2X1 U140 ( .A(n378), .B(n375), .Y(n230) );
  NOR2X1 U141 ( .A(n379), .B(n372), .Y(n231) );
  NOR2X1 U142 ( .A(n379), .B(n373), .Y(n232) );
  NOR2X1 U143 ( .A(n379), .B(n374), .Y(n233) );
  NOR2X1 U144 ( .A(n379), .B(n375), .Y(n234) );
  NOR2X1 U145 ( .A(n380), .B(n371), .Y(n235) );
  NOR2X1 U146 ( .A(n380), .B(n372), .Y(n236) );
  NOR2X1 U147 ( .A(n380), .B(n373), .Y(n237) );
  NOR2X1 U148 ( .A(n380), .B(n374), .Y(n238) );
  NOR2X1 U149 ( .A(n380), .B(n375), .Y(n239) );
  NOR2X1 U150 ( .A(n381), .B(n370), .Y(n240) );
  NOR2X1 U151 ( .A(n381), .B(n371), .Y(n241) );
  NOR2X1 U152 ( .A(n381), .B(n372), .Y(n242) );
  NOR2X1 U153 ( .A(n381), .B(n373), .Y(n243) );
  NOR2X1 U154 ( .A(n381), .B(n374), .Y(n244) );
  NOR2X1 U155 ( .A(n381), .B(n375), .Y(n245) );
  NOR2X1 U156 ( .A(n382), .B(n369), .Y(n246) );
  NOR2X1 U157 ( .A(n382), .B(n370), .Y(n247) );
  NOR2X1 U158 ( .A(n382), .B(n371), .Y(n248) );
  NOR2X1 U159 ( .A(n382), .B(n372), .Y(n249) );
  NOR2X1 U160 ( .A(n382), .B(n373), .Y(n250) );
  NOR2X1 U161 ( .A(n382), .B(n374), .Y(n251) );
  NOR2X1 U162 ( .A(n382), .B(n375), .Y(n252) );
  NOR2X1 U163 ( .A(n383), .B(n368), .Y(n253) );
  NOR2X1 U164 ( .A(n383), .B(n369), .Y(n254) );
  NOR2X1 U165 ( .A(n383), .B(n370), .Y(n255) );
  NOR2X1 U166 ( .A(n383), .B(n371), .Y(n256) );
  NOR2X1 U167 ( .A(n383), .B(n372), .Y(n257) );
  NOR2X1 U168 ( .A(n383), .B(n373), .Y(n258) );
  NOR2X1 U169 ( .A(n383), .B(n374), .Y(n259) );
  NOR2X1 U170 ( .A(n383), .B(n375), .Y(n260) );
  NOR2X1 U171 ( .A(n384), .B(n367), .Y(n261) );
  NOR2X1 U172 ( .A(n384), .B(n368), .Y(n262) );
  NOR2X1 U173 ( .A(n384), .B(n369), .Y(n263) );
  NOR2X1 U174 ( .A(n384), .B(n370), .Y(n264) );
  NOR2X1 U175 ( .A(n384), .B(n371), .Y(n265) );
  NOR2X1 U176 ( .A(n384), .B(n372), .Y(n266) );
  NOR2X1 U177 ( .A(n384), .B(n373), .Y(n267) );
  NOR2X1 U178 ( .A(n384), .B(n374), .Y(n268) );
  NOR2X1 U179 ( .A(n384), .B(n375), .Y(n269) );
  NOR2X1 U180 ( .A(n385), .B(n366), .Y(n270) );
  NOR2X1 U181 ( .A(n385), .B(n367), .Y(n271) );
  NOR2X1 U182 ( .A(n385), .B(n368), .Y(n272) );
  NOR2X1 U183 ( .A(n385), .B(n369), .Y(n273) );
  NOR2X1 U184 ( .A(n385), .B(n370), .Y(n274) );
  NOR2X1 U185 ( .A(n385), .B(n371), .Y(n275) );
  NOR2X1 U186 ( .A(n385), .B(n372), .Y(n276) );
  NOR2X1 U187 ( .A(n385), .B(n373), .Y(n277) );
  NOR2X1 U188 ( .A(n385), .B(n374), .Y(n278) );
  NOR2X1 U189 ( .A(n385), .B(n375), .Y(n279) );
  NOR2X1 U190 ( .A(n386), .B(n365), .Y(n280) );
  NOR2X1 U191 ( .A(n386), .B(n366), .Y(n281) );
  NOR2X1 U192 ( .A(n386), .B(n367), .Y(n282) );
  NOR2X1 U193 ( .A(n386), .B(n368), .Y(n283) );
  NOR2X1 U194 ( .A(n386), .B(n369), .Y(n284) );
  NOR2X1 U195 ( .A(n386), .B(n370), .Y(n285) );
  NOR2X1 U196 ( .A(n386), .B(n371), .Y(n286) );
  NOR2X1 U197 ( .A(n386), .B(n372), .Y(n287) );
  NOR2X1 U198 ( .A(n386), .B(n373), .Y(n288) );
  NOR2X1 U199 ( .A(n386), .B(n374), .Y(n289) );
  NOR2X1 U200 ( .A(n386), .B(n375), .Y(n290) );
  NOR2X1 U201 ( .A(n387), .B(n364), .Y(n291) );
  NOR2X1 U202 ( .A(n387), .B(n365), .Y(n292) );
  NOR2X1 U203 ( .A(n387), .B(n366), .Y(n293) );
  NOR2X1 U204 ( .A(n387), .B(n367), .Y(n294) );
  NOR2X1 U205 ( .A(n387), .B(n368), .Y(n295) );
  NOR2X1 U206 ( .A(n387), .B(n369), .Y(n296) );
  NOR2X1 U207 ( .A(n387), .B(n370), .Y(n297) );
  NOR2X1 U208 ( .A(n387), .B(n371), .Y(n298) );
  NOR2X1 U209 ( .A(n387), .B(n372), .Y(n299) );
  NOR2X1 U210 ( .A(n387), .B(n373), .Y(n300) );
  NOR2X1 U211 ( .A(n387), .B(n374), .Y(n301) );
  NOR2X1 U212 ( .A(n387), .B(n375), .Y(n302) );
  NOR2X1 U213 ( .A(n388), .B(n363), .Y(n303) );
  NOR2X1 U214 ( .A(n388), .B(n364), .Y(n304) );
  NOR2X1 U215 ( .A(n388), .B(n365), .Y(n305) );
  NOR2X1 U216 ( .A(n388), .B(n366), .Y(n306) );
  NOR2X1 U217 ( .A(n388), .B(n367), .Y(n307) );
  NOR2X1 U218 ( .A(n388), .B(n368), .Y(n308) );
  NOR2X1 U219 ( .A(n388), .B(n369), .Y(n309) );
  NOR2X1 U220 ( .A(n388), .B(n370), .Y(n310) );
  NOR2X1 U221 ( .A(n388), .B(n371), .Y(n311) );
  NOR2X1 U222 ( .A(n388), .B(n372), .Y(n312) );
  NOR2X1 U223 ( .A(n388), .B(n373), .Y(n313) );
  NOR2X1 U224 ( .A(n388), .B(n374), .Y(n314) );
  NOR2X1 U225 ( .A(n388), .B(n375), .Y(n315) );
  NOR2X1 U226 ( .A(n389), .B(n362), .Y(n316) );
  NOR2X1 U227 ( .A(n389), .B(n363), .Y(n317) );
  NOR2X1 U228 ( .A(n389), .B(n364), .Y(n318) );
  NOR2X1 U229 ( .A(n389), .B(n365), .Y(n319) );
  NOR2X1 U230 ( .A(n389), .B(n366), .Y(n320) );
  NOR2X1 U231 ( .A(n389), .B(n367), .Y(n321) );
  NOR2X1 U232 ( .A(n389), .B(n368), .Y(n322) );
  NOR2X1 U233 ( .A(n389), .B(n369), .Y(n323) );
  NOR2X1 U234 ( .A(n389), .B(n370), .Y(n324) );
  NOR2X1 U235 ( .A(n389), .B(n371), .Y(n325) );
  NOR2X1 U236 ( .A(n389), .B(n372), .Y(n326) );
  NOR2X1 U237 ( .A(n389), .B(n373), .Y(n327) );
  NOR2X1 U238 ( .A(n389), .B(n374), .Y(n328) );
  NOR2X1 U239 ( .A(n389), .B(n375), .Y(n329) );
  NOR2X1 U240 ( .A(n390), .B(n361), .Y(n330) );
  NOR2X1 U241 ( .A(n390), .B(n362), .Y(n331) );
  NOR2X1 U242 ( .A(n390), .B(n363), .Y(n332) );
  NOR2X1 U243 ( .A(n390), .B(n364), .Y(n333) );
  NOR2X1 U244 ( .A(n390), .B(n365), .Y(n334) );
  NOR2X1 U245 ( .A(n390), .B(n366), .Y(n335) );
  NOR2X1 U246 ( .A(n390), .B(n367), .Y(n336) );
  NOR2X1 U247 ( .A(n390), .B(n368), .Y(n337) );
  NOR2X1 U248 ( .A(n390), .B(n369), .Y(n338) );
  NOR2X1 U249 ( .A(n390), .B(n370), .Y(n339) );
  NOR2X1 U250 ( .A(n390), .B(n371), .Y(n340) );
  NOR2X1 U251 ( .A(n390), .B(n372), .Y(n341) );
  NOR2X1 U252 ( .A(n390), .B(n373), .Y(n342) );
  NOR2X1 U253 ( .A(n390), .B(n374), .Y(n343) );
  NOR2X1 U254 ( .A(n390), .B(n375), .Y(n344) );
  OR2X2 U255 ( .A(n360), .B(n391), .Y(n345) );
  NOR2X1 U256 ( .A(n391), .B(n361), .Y(n346) );
  NOR2X1 U257 ( .A(n391), .B(n362), .Y(n347) );
  NOR2X1 U258 ( .A(n391), .B(n363), .Y(n348) );
  NOR2X1 U259 ( .A(n391), .B(n364), .Y(n349) );
  NOR2X1 U260 ( .A(n391), .B(n365), .Y(n350) );
  NOR2X1 U261 ( .A(n391), .B(n366), .Y(n351) );
  NOR2X1 U262 ( .A(n391), .B(n367), .Y(n352) );
  NOR2X1 U263 ( .A(n391), .B(n368), .Y(n353) );
  NOR2X1 U264 ( .A(n391), .B(n369), .Y(n354) );
  NOR2X1 U265 ( .A(n391), .B(n370), .Y(n355) );
  NOR2X1 U266 ( .A(n391), .B(n371), .Y(n356) );
  NOR2X1 U267 ( .A(n391), .B(n372), .Y(n357) );
  NOR2X1 U268 ( .A(n391), .B(n373), .Y(n358) );
  NOR2X1 U269 ( .A(n391), .B(n374), .Y(n359) );
  NOR2X1 U270 ( .A(n391), .B(n375), .Y(product[0]) );
  INVX2 U305 ( .A(b[1]), .Y(n374) );
  INVX2 U306 ( .A(b[0]), .Y(n375) );
  INVX1 U307 ( .A(b[4]), .Y(n371) );
  INVX1 U308 ( .A(b[3]), .Y(n372) );
  INVX1 U309 ( .A(b[6]), .Y(n369) );
  INVX1 U310 ( .A(b[5]), .Y(n370) );
  INVX1 U311 ( .A(b[7]), .Y(n368) );
  INVX1 U312 ( .A(b[2]), .Y(n373) );
  INVX1 U313 ( .A(b[8]), .Y(n367) );
  INVX1 U314 ( .A(b[9]), .Y(n366) );
  INVX1 U315 ( .A(b[10]), .Y(n365) );
  INVX1 U316 ( .A(b[11]), .Y(n364) );
  INVX1 U317 ( .A(b[12]), .Y(n363) );
  INVX1 U318 ( .A(b[13]), .Y(n362) );
  INVX2 U319 ( .A(a[0]), .Y(n391) );
  INVX2 U320 ( .A(a[1]), .Y(n390) );
  INVX2 U321 ( .A(b[14]), .Y(n361) );
  INVX2 U322 ( .A(a[2]), .Y(n389) );
  INVX2 U323 ( .A(a[3]), .Y(n388) );
  INVX2 U324 ( .A(a[4]), .Y(n387) );
  INVX2 U325 ( .A(a[5]), .Y(n386) );
  INVX2 U326 ( .A(a[6]), .Y(n385) );
  INVX2 U327 ( .A(a[7]), .Y(n384) );
  INVX2 U328 ( .A(a[8]), .Y(n383) );
  INVX2 U329 ( .A(a[9]), .Y(n382) );
  INVX1 U330 ( .A(b[15]), .Y(n360) );
  INVX2 U331 ( .A(a[10]), .Y(n381) );
  INVX2 U332 ( .A(a[11]), .Y(n380) );
  INVX2 U333 ( .A(a[12]), .Y(n379) );
  INVX2 U334 ( .A(a[13]), .Y(n378) );
  INVX2 U335 ( .A(a[14]), .Y(n377) );
  INVX2 U336 ( .A(a[15]), .Y(n376) );
endmodule


module triangle_area_0 ( .p({\p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , 
        \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , 
        \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , 
        \p[y][15] , \p[y][14] , \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , 
        \p[y][9] , \p[y][8] , \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , 
        \p[y][3] , \p[y][2] , \p[y][1] , \p[y][0] }), .q({\q[x][15] , 
        \q[x][14] , \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , 
        \q[x][8] , \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , 
        \q[x][2] , \q[x][1] , \q[x][0] , \q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .r({\r[x][15] , \r[x][14] , \r[x][13] , \r[x][12] , 
        \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , \r[x][7] , \r[x][6] , 
        \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , \r[x][1] , \r[x][0] , 
        \r[y][15] , \r[y][14] , \r[y][13] , \r[y][12] , \r[y][11] , \r[y][10] , 
        \r[y][9] , \r[y][8] , \r[y][7] , \r[y][6] , \r[y][5] , \r[y][4] , 
        \r[y][3] , \r[y][2] , \r[y][1] , \r[y][0] }), area );
  output [15:0] area;
  input \p[x][15] , \p[x][14] , \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] ,
         \p[x][9] , \p[x][8] , \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] ,
         \p[x][3] , \p[x][2] , \p[x][1] , \p[x][0] , \p[y][15] , \p[y][14] ,
         \p[y][13] , \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] ,
         \p[y][7] , \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] ,
         \p[y][1] , \p[y][0] , \q[x][15] , \q[x][14] , \q[x][13] , \q[x][12] ,
         \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , \q[x][7] , \q[x][6] ,
         \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , \q[x][1] , \q[x][0] ,
         \q[y][15] , \q[y][14] , \q[y][13] , \q[y][12] , \q[y][11] ,
         \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , \q[y][6] , \q[y][5] ,
         \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , \q[y][0] , \r[x][15] ,
         \r[x][14] , \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] ,
         \r[x][8] , \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] ,
         \r[x][2] , \r[x][1] , \r[x][0] , \r[y][15] , \r[y][14] , \r[y][13] ,
         \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] ,
         \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] ,
         \r[y][0] ;
  wire   N161, \sarea2[0] , N99, N98, N97, N96, N95, N94, N93, N92, N91, N90,
         N9, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N8, N79, N78,
         N77, N76, N75, N74, N73, N72, N71, N70, N7, N69, N68, N67, N66, N65,
         N64, N63, N62, N61, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, N5, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N4,
         N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27,
         N26, N25, N24, N23, N22, N21, N20, N2, N19, N18, N17, N160, N16, N159,
         N158, N157, N156, N155, N154, N153, N152, N151, N150, N15, N149, N148,
         N147, N146, N145, N144, N143, N142, N141, N140, N14, N139, N138, N137,
         N136, N135, N134, N133, N132, N131, N130, N13, N129, N128, N127, N126,
         N125, N124, N123, N122, N121, N120, N12, N119, N118, N117, N116, N115,
         N114, N113, N112, N111, N110, N11, N109, N108, N107, N106, N105, N104,
         N103, N102, N101, N100, N10, N1, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n35, n36, n37, n38, n39;
  wire   [15:0] sarea2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95;
  assign area[15] = 1'b0;

  triangle_area_0_DW01_sub_1 sub_0_root_sub_23_3 ( .A({N144, N143, N142, N141, 
        N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129}), .B({N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97}), .CI(1'b0), .DIFF({N161, sarea2[14:1], 
        \sarea2[0] }) );
  triangle_area_0_DW01_add_0 add_2_root_sub_23_3 ( .A({N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113}), .B({N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, 
        N148, N147, N146, N145}), .CI(1'b0), .SUM({N112, N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97})
         );
  triangle_area_0_DW01_add_1 add_1_root_sub_23_3 ( .A({N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .B({N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65}), 
        .CI(1'b0), .SUM({N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129}) );
  triangle_area_0_DW01_sub_2 sub_3_root_sub_23_3 ( .A({N64, N63, N62, N61, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49}), .B({N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81}), 
        .CI(1'b0), .DIFF({N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65}) );
  triangle_area_0_DW01_add_2 add_4_root_sub_23_3 ( .A({N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .B({N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17}), .CI(1'b0), .SUM({N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        N34, N33}) );
  triangle_area_0_DW_mult_tc_6 mult_23 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N16, N15, N14, N13, N12, N11, N10, N9, N8, 
        N7, N6, N5, N4, N3, N2, N1}) );
  triangle_area_0_DW_mult_tc_7 mult_23_2 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18, N17}) );
  triangle_area_0_DW_mult_tc_8 mult_23_3 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49}) );
  triangle_area_0_DW_mult_tc_9 mult_23_4 ( .a({\q[x][15] , \q[x][14] , 
        \q[x][13] , \q[x][12] , \q[x][11] , \q[x][10] , \q[x][9] , \q[x][8] , 
        \q[x][7] , \q[x][6] , \q[x][5] , \q[x][4] , \q[x][3] , \q[x][2] , 
        \q[x][1] , \q[x][0] }), .b({\p[y][15] , \p[y][14] , \p[y][13] , 
        \p[y][12] , \p[y][11] , \p[y][10] , \p[y][9] , \p[y][8] , \p[y][7] , 
        \p[y][6] , \p[y][5] , \p[y][4] , \p[y][3] , \p[y][2] , \p[y][1] , 
        \p[y][0] }), .product({SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81}) );
  triangle_area_0_DW_mult_tc_10 mult_23_5 ( .a({\r[x][15] , \r[x][14] , 
        \r[x][13] , \r[x][12] , \r[x][11] , \r[x][10] , \r[x][9] , \r[x][8] , 
        \r[x][7] , \r[x][6] , \r[x][5] , \r[x][4] , \r[x][3] , \r[x][2] , 
        \r[x][1] , \r[x][0] }), .b({\q[y][15] , \q[y][14] , \q[y][13] , 
        \q[y][12] , \q[y][11] , \q[y][10] , \q[y][9] , \q[y][8] , \q[y][7] , 
        \q[y][6] , \q[y][5] , \q[y][4] , \q[y][3] , \q[y][2] , \q[y][1] , 
        \q[y][0] }), .product({SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113}) );
  triangle_area_0_DW_mult_tc_11 mult_23_6 ( .a({\p[x][15] , \p[x][14] , 
        \p[x][13] , \p[x][12] , \p[x][11] , \p[x][10] , \p[x][9] , \p[x][8] , 
        \p[x][7] , \p[x][6] , \p[x][5] , \p[x][4] , \p[x][3] , \p[x][2] , 
        \p[x][1] , \p[x][0] }), .b({\r[y][15] , \r[y][14] , \r[y][13] , 
        \r[y][12] , \r[y][11] , \r[y][10] , \r[y][9] , \r[y][8] , \r[y][7] , 
        \r[y][6] , \r[y][5] , \r[y][4] , \r[y][3] , \r[y][2] , \r[y][1] , 
        \r[y][0] }), .product({SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83, SYNOPSYS_UNCONNECTED__84, 
        SYNOPSYS_UNCONNECTED__85, SYNOPSYS_UNCONNECTED__86, 
        SYNOPSYS_UNCONNECTED__87, SYNOPSYS_UNCONNECTED__88, 
        SYNOPSYS_UNCONNECTED__89, SYNOPSYS_UNCONNECTED__90, 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, 
        SYNOPSYS_UNCONNECTED__95, N160, N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145}) );
  AND2X2 U2 ( .A(n11), .B(n1), .Y(area[14]) );
  NOR2X1 U3 ( .A(n7), .B(sarea2[14]), .Y(n1) );
  XNOR2X1 U4 ( .A(sarea2[1]), .B(n2), .Y(area[0]) );
  NAND2X1 U5 ( .A(\sarea2[0] ), .B(N161), .Y(n2) );
  XNOR2X1 U6 ( .A(sarea2[11]), .B(n3), .Y(area[10]) );
  NAND2X1 U7 ( .A(N161), .B(n4), .Y(n3) );
  XOR2X1 U8 ( .A(sarea2[12]), .B(n5), .Y(area[11]) );
  NOR2X1 U9 ( .A(n6), .B(n7), .Y(n5) );
  XNOR2X1 U10 ( .A(sarea2[13]), .B(n8), .Y(area[12]) );
  NAND2X1 U11 ( .A(N161), .B(n9), .Y(n8) );
  XOR2X1 U12 ( .A(sarea2[14]), .B(n10), .Y(area[13]) );
  NOR2X1 U13 ( .A(n11), .B(n7), .Y(n10) );
  NOR2X1 U19 ( .A(n9), .B(sarea2[13]), .Y(n11) );
  NAND2X1 U20 ( .A(n6), .B(n12), .Y(n9) );
  INVX1 U21 ( .A(sarea2[12]), .Y(n12) );
  NOR2X1 U22 ( .A(n4), .B(sarea2[11]), .Y(n6) );
  NAND2X1 U23 ( .A(n13), .B(n14), .Y(n4) );
  XNOR2X1 U24 ( .A(sarea2[2]), .B(n15), .Y(area[1]) );
  NAND2X1 U25 ( .A(N161), .B(n16), .Y(n15) );
  XNOR2X1 U26 ( .A(sarea2[3]), .B(n17), .Y(area[2]) );
  NAND2X1 U27 ( .A(N161), .B(n18), .Y(n17) );
  XNOR2X1 U28 ( .A(n19), .B(n20), .Y(area[3]) );
  NOR2X1 U29 ( .A(n21), .B(n7), .Y(n20) );
  XNOR2X1 U30 ( .A(sarea2[5]), .B(n22), .Y(area[4]) );
  NAND2X1 U31 ( .A(N161), .B(n23), .Y(n22) );
  XNOR2X1 U32 ( .A(n24), .B(n25), .Y(area[5]) );
  NOR2X1 U33 ( .A(n26), .B(n7), .Y(n25) );
  XNOR2X1 U34 ( .A(sarea2[7]), .B(n27), .Y(area[6]) );
  NAND2X1 U35 ( .A(N161), .B(n28), .Y(n27) );
  XNOR2X1 U36 ( .A(n29), .B(n35), .Y(area[7]) );
  NOR2X1 U37 ( .A(n36), .B(n7), .Y(n35) );
  XNOR2X1 U38 ( .A(sarea2[9]), .B(n37), .Y(area[8]) );
  NAND2X1 U39 ( .A(N161), .B(n38), .Y(n37) );
  XNOR2X1 U40 ( .A(n14), .B(n39), .Y(area[9]) );
  NOR2X1 U41 ( .A(n13), .B(n7), .Y(n39) );
  INVX1 U42 ( .A(N161), .Y(n7) );
  NOR2X1 U43 ( .A(n38), .B(sarea2[9]), .Y(n13) );
  NAND2X1 U44 ( .A(n36), .B(n29), .Y(n38) );
  INVX1 U45 ( .A(sarea2[8]), .Y(n29) );
  NOR2X1 U46 ( .A(n28), .B(sarea2[7]), .Y(n36) );
  NAND2X1 U47 ( .A(n26), .B(n24), .Y(n28) );
  INVX1 U48 ( .A(sarea2[6]), .Y(n24) );
  NOR2X1 U49 ( .A(n23), .B(sarea2[5]), .Y(n26) );
  NAND2X1 U50 ( .A(n21), .B(n19), .Y(n23) );
  INVX1 U51 ( .A(sarea2[4]), .Y(n19) );
  NOR2X1 U52 ( .A(n18), .B(sarea2[3]), .Y(n21) );
  OR2X1 U53 ( .A(n16), .B(sarea2[2]), .Y(n18) );
  OR2X1 U54 ( .A(sarea2[1]), .B(\sarea2[0] ), .Y(n16) );
  INVX1 U55 ( .A(sarea2[10]), .Y(n14) );
endmodule


module z_interpolation_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;

  INVX2 U2 ( .A(A[14]), .Y(n1) );
  INVX2 U3 ( .A(n16), .Y(n2) );
  INVX2 U4 ( .A(n18), .Y(n3) );
  INVX2 U5 ( .A(n19), .Y(n4) );
  INVX2 U6 ( .A(n20), .Y(n5) );
  INVX2 U7 ( .A(n21), .Y(n6) );
  INVX2 U8 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U9 ( .A(A[9]), .B(n8), .Y(SUM[9]) );
  AND2X1 U10 ( .A(n4), .B(A[8]), .Y(n8) );
  XOR2X1 U11 ( .A(A[8]), .B(n4), .Y(SUM[8]) );
  XOR2X1 U12 ( .A(A[7]), .B(n9), .Y(SUM[7]) );
  AND2X1 U13 ( .A(n5), .B(A[6]), .Y(n9) );
  XOR2X1 U14 ( .A(A[6]), .B(n5), .Y(SUM[6]) );
  XOR2X1 U15 ( .A(A[5]), .B(n10), .Y(SUM[5]) );
  AND2X1 U16 ( .A(n6), .B(A[4]), .Y(n10) );
  XOR2X1 U17 ( .A(A[4]), .B(n6), .Y(SUM[4]) );
  XOR2X1 U18 ( .A(A[3]), .B(n11), .Y(SUM[3]) );
  AND2X1 U19 ( .A(n12), .B(A[2]), .Y(n11) );
  XOR2X1 U20 ( .A(A[2]), .B(n12), .Y(SUM[2]) );
  XOR2X1 U21 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  XOR2X1 U22 ( .A(A[15]), .B(n13), .Y(SUM[15]) );
  NOR2X1 U23 ( .A(n14), .B(n1), .Y(n13) );
  XOR2X1 U24 ( .A(n1), .B(n14), .Y(SUM[14]) );
  NAND3X1 U25 ( .A(A[12]), .B(n2), .C(A[13]), .Y(n14) );
  XOR2X1 U26 ( .A(A[13]), .B(n15), .Y(SUM[13]) );
  AND2X1 U27 ( .A(n2), .B(A[12]), .Y(n15) );
  XOR2X1 U28 ( .A(A[12]), .B(n2), .Y(SUM[12]) );
  NAND3X1 U29 ( .A(A[10]), .B(n3), .C(A[11]), .Y(n16) );
  XOR2X1 U30 ( .A(A[11]), .B(n17), .Y(SUM[11]) );
  AND2X1 U31 ( .A(n3), .B(A[10]), .Y(n17) );
  XOR2X1 U32 ( .A(A[10]), .B(n3), .Y(SUM[10]) );
  NAND3X1 U33 ( .A(A[8]), .B(n4), .C(A[9]), .Y(n18) );
  NAND3X1 U34 ( .A(A[6]), .B(n5), .C(A[7]), .Y(n19) );
  NAND3X1 U35 ( .A(A[4]), .B(n6), .C(A[5]), .Y(n20) );
  NAND3X1 U36 ( .A(A[2]), .B(n12), .C(A[3]), .Y(n21) );
  AND2X1 U37 ( .A(A[1]), .B(A[0]), .Y(n12) );
endmodule


module z_interpolation_DW01_absval_0 ( A, ABSVAL );
  input [15:0] A;
  output [15:0] ABSVAL;
  wire   n1, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46;
  wire   [15:0] AMUX1;

  z_interpolation_DW01_inc_0 NEG ( .A({n1, n17, n18, n19, n20, n21, n22, n23, 
        n24, n25, n26, n27, n28, n29, n30, n31}), .SUM(AMUX1) );
  AND2X2 U1 ( .A(AMUX1[15]), .B(A[15]), .Y(ABSVAL[15]) );
  INVX1 U2 ( .A(A[15]), .Y(n1) );
  INVX2 U3 ( .A(n32), .Y(ABSVAL[9]) );
  INVX2 U4 ( .A(n33), .Y(ABSVAL[8]) );
  INVX2 U5 ( .A(n34), .Y(ABSVAL[7]) );
  INVX2 U6 ( .A(n35), .Y(ABSVAL[6]) );
  INVX2 U7 ( .A(n36), .Y(ABSVAL[5]) );
  INVX2 U8 ( .A(n37), .Y(ABSVAL[4]) );
  INVX2 U9 ( .A(n38), .Y(ABSVAL[3]) );
  INVX2 U10 ( .A(n39), .Y(ABSVAL[2]) );
  INVX2 U11 ( .A(n40), .Y(ABSVAL[1]) );
  INVX2 U12 ( .A(n41), .Y(ABSVAL[14]) );
  INVX2 U13 ( .A(n42), .Y(ABSVAL[13]) );
  INVX2 U14 ( .A(n43), .Y(ABSVAL[12]) );
  INVX2 U15 ( .A(n44), .Y(ABSVAL[11]) );
  INVX2 U16 ( .A(n45), .Y(ABSVAL[10]) );
  INVX2 U17 ( .A(n46), .Y(ABSVAL[0]) );
  INVX2 U18 ( .A(A[14]), .Y(n17) );
  INVX2 U19 ( .A(A[13]), .Y(n18) );
  INVX2 U20 ( .A(A[12]), .Y(n19) );
  INVX2 U21 ( .A(A[11]), .Y(n20) );
  INVX2 U22 ( .A(A[10]), .Y(n21) );
  INVX2 U23 ( .A(A[9]), .Y(n22) );
  INVX2 U24 ( .A(A[8]), .Y(n23) );
  INVX2 U25 ( .A(A[7]), .Y(n24) );
  INVX2 U26 ( .A(A[6]), .Y(n25) );
  INVX2 U27 ( .A(A[5]), .Y(n26) );
  INVX2 U28 ( .A(A[4]), .Y(n27) );
  INVX2 U29 ( .A(A[3]), .Y(n28) );
  INVX2 U30 ( .A(A[2]), .Y(n29) );
  INVX2 U31 ( .A(A[1]), .Y(n30) );
  INVX2 U32 ( .A(A[0]), .Y(n31) );
  MUX2X1 U33 ( .B(A[9]), .A(AMUX1[9]), .S(A[15]), .Y(n32) );
  MUX2X1 U34 ( .B(A[8]), .A(AMUX1[8]), .S(A[15]), .Y(n33) );
  MUX2X1 U35 ( .B(A[7]), .A(AMUX1[7]), .S(A[15]), .Y(n34) );
  MUX2X1 U36 ( .B(A[6]), .A(AMUX1[6]), .S(A[15]), .Y(n35) );
  MUX2X1 U37 ( .B(A[5]), .A(AMUX1[5]), .S(A[15]), .Y(n36) );
  MUX2X1 U38 ( .B(A[4]), .A(AMUX1[4]), .S(A[15]), .Y(n37) );
  MUX2X1 U39 ( .B(A[3]), .A(AMUX1[3]), .S(A[15]), .Y(n38) );
  MUX2X1 U40 ( .B(A[2]), .A(AMUX1[2]), .S(A[15]), .Y(n39) );
  MUX2X1 U41 ( .B(A[1]), .A(AMUX1[1]), .S(A[15]), .Y(n40) );
  MUX2X1 U42 ( .B(A[14]), .A(AMUX1[14]), .S(A[15]), .Y(n41) );
  MUX2X1 U43 ( .B(A[13]), .A(AMUX1[13]), .S(A[15]), .Y(n42) );
  MUX2X1 U44 ( .B(A[12]), .A(AMUX1[12]), .S(A[15]), .Y(n43) );
  MUX2X1 U45 ( .B(A[11]), .A(AMUX1[11]), .S(A[15]), .Y(n44) );
  MUX2X1 U46 ( .B(A[10]), .A(AMUX1[10]), .S(A[15]), .Y(n45) );
  MUX2X1 U47 ( .B(A[0]), .A(AMUX1[0]), .S(A[15]), .Y(n46) );
endmodule


module z_interpolation_DW01_add_1 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6;

  FAX1 U2 ( .A(B[5]), .B(A[5]), .C(n2), .YC(CO), .YS(SUM[5]) );
  FAX1 U3 ( .A(B[4]), .B(A[4]), .C(n3), .YC(n2), .YS(SUM[4]) );
  FAX1 U4 ( .A(B[3]), .B(A[3]), .C(n4), .YC(n3), .YS(SUM[3]) );
  FAX1 U5 ( .A(B[2]), .B(A[2]), .C(n5), .YC(n4), .YS(SUM[2]) );
  FAX1 U6 ( .A(B[1]), .B(A[1]), .C(n6), .YC(n5), .YS(SUM[1]) );
  FAX1 U7 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n6), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_2 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;

  FAX1 U2 ( .A(B[6]), .B(A[6]), .C(n2), .YC(CO), .YS(SUM[6]) );
  FAX1 U3 ( .A(B[5]), .B(A[5]), .C(n3), .YC(n2), .YS(SUM[5]) );
  FAX1 U4 ( .A(B[4]), .B(A[4]), .C(n4), .YC(n3), .YS(SUM[4]) );
  FAX1 U5 ( .A(B[3]), .B(A[3]), .C(n5), .YC(n4), .YS(SUM[3]) );
  FAX1 U6 ( .A(B[2]), .B(A[2]), .C(n6), .YC(n5), .YS(SUM[2]) );
  FAX1 U7 ( .A(B[1]), .B(A[1]), .C(n7), .YC(n6), .YS(SUM[1]) );
  FAX1 U8 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n7), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_3 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8;

  FAX1 U2 ( .A(B[7]), .B(A[7]), .C(n2), .YC(CO), .YS(SUM[7]) );
  FAX1 U3 ( .A(B[6]), .B(A[6]), .C(n3), .YC(n2), .YS(SUM[6]) );
  FAX1 U4 ( .A(B[5]), .B(A[5]), .C(n4), .YC(n3), .YS(SUM[5]) );
  FAX1 U5 ( .A(B[4]), .B(A[4]), .C(n5), .YC(n4), .YS(SUM[4]) );
  FAX1 U6 ( .A(B[3]), .B(A[3]), .C(n6), .YC(n5), .YS(SUM[3]) );
  FAX1 U7 ( .A(B[2]), .B(A[2]), .C(n7), .YC(n6), .YS(SUM[2]) );
  FAX1 U8 ( .A(B[1]), .B(A[1]), .C(n8), .YC(n7), .YS(SUM[1]) );
  FAX1 U9 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n8), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_4 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9;

  FAX1 U2 ( .A(B[8]), .B(A[8]), .C(n2), .YC(CO), .YS(SUM[8]) );
  FAX1 U3 ( .A(B[7]), .B(A[7]), .C(n3), .YC(n2), .YS(SUM[7]) );
  FAX1 U4 ( .A(B[6]), .B(A[6]), .C(n4), .YC(n3), .YS(SUM[6]) );
  FAX1 U5 ( .A(B[5]), .B(A[5]), .C(n5), .YC(n4), .YS(SUM[5]) );
  FAX1 U6 ( .A(B[4]), .B(A[4]), .C(n6), .YC(n5), .YS(SUM[4]) );
  FAX1 U7 ( .A(B[3]), .B(A[3]), .C(n7), .YC(n6), .YS(SUM[3]) );
  FAX1 U8 ( .A(B[2]), .B(A[2]), .C(n8), .YC(n7), .YS(SUM[2]) );
  FAX1 U9 ( .A(B[1]), .B(A[1]), .C(n9), .YC(n8), .YS(SUM[1]) );
  FAX1 U10 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n9), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_5 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10;

  FAX1 U2 ( .A(B[9]), .B(A[9]), .C(n2), .YC(CO), .YS(SUM[9]) );
  FAX1 U3 ( .A(B[8]), .B(A[8]), .C(n3), .YC(n2), .YS(SUM[8]) );
  FAX1 U4 ( .A(B[7]), .B(A[7]), .C(n4), .YC(n3), .YS(SUM[7]) );
  FAX1 U5 ( .A(B[6]), .B(A[6]), .C(n5), .YC(n4), .YS(SUM[6]) );
  FAX1 U6 ( .A(B[5]), .B(A[5]), .C(n6), .YC(n5), .YS(SUM[5]) );
  FAX1 U7 ( .A(B[4]), .B(A[4]), .C(n7), .YC(n6), .YS(SUM[4]) );
  FAX1 U8 ( .A(B[3]), .B(A[3]), .C(n8), .YC(n7), .YS(SUM[3]) );
  FAX1 U9 ( .A(B[2]), .B(A[2]), .C(n9), .YC(n8), .YS(SUM[2]) );
  FAX1 U10 ( .A(B[1]), .B(A[1]), .C(n10), .YC(n9), .YS(SUM[1]) );
  FAX1 U11 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n10), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_6 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  FAX1 U2 ( .A(B[10]), .B(A[10]), .C(n2), .YC(CO), .YS(SUM[10]) );
  FAX1 U3 ( .A(B[9]), .B(A[9]), .C(n3), .YC(n2), .YS(SUM[9]) );
  FAX1 U4 ( .A(B[8]), .B(A[8]), .C(n4), .YC(n3), .YS(SUM[8]) );
  FAX1 U5 ( .A(B[7]), .B(A[7]), .C(n5), .YC(n4), .YS(SUM[7]) );
  FAX1 U6 ( .A(B[6]), .B(A[6]), .C(n6), .YC(n5), .YS(SUM[6]) );
  FAX1 U7 ( .A(B[5]), .B(A[5]), .C(n7), .YC(n6), .YS(SUM[5]) );
  FAX1 U8 ( .A(B[4]), .B(A[4]), .C(n8), .YC(n7), .YS(SUM[4]) );
  FAX1 U9 ( .A(B[3]), .B(A[3]), .C(n9), .YC(n8), .YS(SUM[3]) );
  FAX1 U10 ( .A(B[2]), .B(A[2]), .C(n10), .YC(n9), .YS(SUM[2]) );
  FAX1 U11 ( .A(B[1]), .B(A[1]), .C(n11), .YC(n10), .YS(SUM[1]) );
  FAX1 U12 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n11), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_7 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  FAX1 U2 ( .A(B[11]), .B(A[11]), .C(n2), .YC(CO), .YS(SUM[11]) );
  FAX1 U3 ( .A(B[10]), .B(A[10]), .C(n3), .YC(n2), .YS(SUM[10]) );
  FAX1 U4 ( .A(B[9]), .B(A[9]), .C(n4), .YC(n3), .YS(SUM[9]) );
  FAX1 U5 ( .A(B[8]), .B(A[8]), .C(n5), .YC(n4), .YS(SUM[8]) );
  FAX1 U6 ( .A(B[7]), .B(A[7]), .C(n6), .YC(n5), .YS(SUM[7]) );
  FAX1 U7 ( .A(B[6]), .B(A[6]), .C(n7), .YC(n6), .YS(SUM[6]) );
  FAX1 U8 ( .A(B[5]), .B(A[5]), .C(n8), .YC(n7), .YS(SUM[5]) );
  FAX1 U9 ( .A(B[4]), .B(A[4]), .C(n9), .YC(n8), .YS(SUM[4]) );
  FAX1 U10 ( .A(B[3]), .B(A[3]), .C(n10), .YC(n9), .YS(SUM[3]) );
  FAX1 U11 ( .A(B[2]), .B(A[2]), .C(n11), .YC(n10), .YS(SUM[2]) );
  FAX1 U12 ( .A(B[1]), .B(A[1]), .C(n12), .YC(n11), .YS(SUM[1]) );
  FAX1 U13 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n12), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_8 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  FAX1 U2 ( .A(B[12]), .B(A[12]), .C(n2), .YC(CO), .YS(SUM[12]) );
  FAX1 U3 ( .A(B[11]), .B(A[11]), .C(n3), .YC(n2), .YS(SUM[11]) );
  FAX1 U4 ( .A(B[10]), .B(A[10]), .C(n4), .YC(n3), .YS(SUM[10]) );
  FAX1 U5 ( .A(B[9]), .B(A[9]), .C(n5), .YC(n4), .YS(SUM[9]) );
  FAX1 U6 ( .A(B[8]), .B(A[8]), .C(n6), .YC(n5), .YS(SUM[8]) );
  FAX1 U7 ( .A(B[7]), .B(A[7]), .C(n7), .YC(n6), .YS(SUM[7]) );
  FAX1 U8 ( .A(B[6]), .B(A[6]), .C(n8), .YC(n7), .YS(SUM[6]) );
  FAX1 U9 ( .A(B[5]), .B(A[5]), .C(n9), .YC(n8), .YS(SUM[5]) );
  FAX1 U10 ( .A(B[4]), .B(A[4]), .C(n10), .YC(n9), .YS(SUM[4]) );
  FAX1 U11 ( .A(B[3]), .B(A[3]), .C(n11), .YC(n10), .YS(SUM[3]) );
  FAX1 U12 ( .A(B[2]), .B(A[2]), .C(n12), .YC(n11), .YS(SUM[2]) );
  FAX1 U13 ( .A(B[1]), .B(A[1]), .C(n13), .YC(n12), .YS(SUM[1]) );
  FAX1 U14 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n13), .YS(SUM[0]) );
endmodule


module z_interpolation_DW01_add_9 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n64;

  FAX1 U2 ( .A(B[13]), .B(A[13]), .C(n2), .YC(n64), .YS(SUM[13]) );
  FAX1 U3 ( .A(B[12]), .B(A[12]), .C(n3), .YC(n2), .YS(SUM[12]) );
  FAX1 U4 ( .A(B[11]), .B(A[11]), .C(n4), .YC(n3), .YS(SUM[11]) );
  FAX1 U5 ( .A(B[10]), .B(A[10]), .C(n5), .YC(n4), .YS(SUM[10]) );
  FAX1 U6 ( .A(B[9]), .B(A[9]), .C(n6), .YC(n5), .YS(SUM[9]) );
  FAX1 U7 ( .A(B[8]), .B(A[8]), .C(n7), .YC(n6), .YS(SUM[8]) );
  FAX1 U8 ( .A(B[7]), .B(A[7]), .C(n8), .YC(n7), .YS(SUM[7]) );
  FAX1 U9 ( .A(B[6]), .B(A[6]), .C(n9), .YC(n8), .YS(SUM[6]) );
  FAX1 U10 ( .A(B[5]), .B(A[5]), .C(n10), .YC(n9), .YS(SUM[5]) );
  FAX1 U11 ( .A(B[4]), .B(A[4]), .C(n11), .YC(n10), .YS(SUM[4]) );
  FAX1 U12 ( .A(B[3]), .B(A[3]), .C(n12), .YC(n11), .YS(SUM[3]) );
  FAX1 U13 ( .A(B[2]), .B(A[2]), .C(n13), .YC(n12), .YS(SUM[2]) );
  FAX1 U14 ( .A(B[1]), .B(A[1]), .C(n14), .YC(n13), .YS(SUM[1]) );
  FAX1 U15 ( .A(B[0]), .B(A[0]), .C(CI), .YC(n14), .YS(SUM[0]) );
  BUFX2 U18 ( .A(n64), .Y(CO) );
endmodule


module z_interpolation_DW01_add_10 ( A, B, CI, SUM, CO );
  input [14:0] A;
  input [14:0] B;
  output [14:0] SUM;
  input CI;
  output CO;
  wire   n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133;

  INVX2 U21 ( .A(n102), .Y(n68) );
  INVX2 U22 ( .A(n103), .Y(n69) );
  INVX2 U23 ( .A(n108), .Y(n70) );
  INVX2 U24 ( .A(n109), .Y(n71) );
  INVX2 U25 ( .A(n114), .Y(n72) );
  INVX2 U26 ( .A(n115), .Y(n73) );
  INVX2 U27 ( .A(n120), .Y(n74) );
  INVX2 U28 ( .A(n121), .Y(n75) );
  INVX2 U29 ( .A(n126), .Y(n76) );
  INVX2 U30 ( .A(n127), .Y(n77) );
  INVX2 U31 ( .A(n132), .Y(n78) );
  INVX2 U32 ( .A(n133), .Y(n79) );
  INVX2 U33 ( .A(A[1]), .Y(n80) );
  INVX2 U34 ( .A(A[3]), .Y(n81) );
  INVX2 U35 ( .A(A[5]), .Y(n82) );
  INVX2 U36 ( .A(A[7]), .Y(n83) );
  INVX2 U37 ( .A(A[9]), .Y(n84) );
  INVX2 U38 ( .A(A[11]), .Y(n85) );
  INVX2 U39 ( .A(A[12]), .Y(n86) );
  INVX2 U40 ( .A(B[9]), .Y(n87) );
  INVX2 U41 ( .A(B[11]), .Y(n88) );
  INVX2 U42 ( .A(B[12]), .Y(n89) );
  INVX2 U43 ( .A(B[1]), .Y(n90) );
  INVX2 U44 ( .A(B[3]), .Y(n91) );
  INVX2 U45 ( .A(B[5]), .Y(n92) );
  INVX2 U46 ( .A(B[7]), .Y(n93) );
  NAND2X1 U47 ( .A(n94), .B(n95), .Y(CO) );
  AOI21X1 U48 ( .A(A[13]), .B(n96), .C(A[14]), .Y(n95) );
  AOI22X1 U49 ( .A(B[13]), .B(n96), .C(B[13]), .D(A[13]), .Y(n94) );
  OAI21X1 U50 ( .A(n86), .B(n89), .C(n97), .Y(n96) );
  AOI21X1 U51 ( .A(B[12]), .B(n98), .C(n99), .Y(n97) );
  AND2X1 U52 ( .A(n98), .B(A[12]), .Y(n99) );
  OAI21X1 U53 ( .A(n85), .B(n88), .C(n100), .Y(n98) );
  AOI21X1 U54 ( .A(B[11]), .B(n68), .C(n101), .Y(n100) );
  NOR2X1 U55 ( .A(n102), .B(n85), .Y(n101) );
  AOI21X1 U56 ( .A(A[10]), .B(B[10]), .C(n69), .Y(n102) );
  AOI21X1 U57 ( .A(B[10]), .B(n104), .C(n105), .Y(n103) );
  AND2X1 U58 ( .A(n104), .B(A[10]), .Y(n105) );
  OAI21X1 U59 ( .A(n84), .B(n87), .C(n106), .Y(n104) );
  AOI21X1 U60 ( .A(B[9]), .B(n70), .C(n107), .Y(n106) );
  NOR2X1 U61 ( .A(n108), .B(n84), .Y(n107) );
  AOI21X1 U62 ( .A(A[8]), .B(B[8]), .C(n71), .Y(n108) );
  AOI21X1 U63 ( .A(B[8]), .B(n110), .C(n111), .Y(n109) );
  AND2X1 U64 ( .A(n110), .B(A[8]), .Y(n111) );
  OAI21X1 U65 ( .A(n83), .B(n93), .C(n112), .Y(n110) );
  AOI21X1 U66 ( .A(B[7]), .B(n72), .C(n113), .Y(n112) );
  NOR2X1 U67 ( .A(n114), .B(n83), .Y(n113) );
  AOI21X1 U68 ( .A(A[6]), .B(B[6]), .C(n73), .Y(n114) );
  AOI21X1 U69 ( .A(B[6]), .B(n116), .C(n117), .Y(n115) );
  AND2X1 U70 ( .A(n116), .B(A[6]), .Y(n117) );
  OAI21X1 U71 ( .A(n82), .B(n92), .C(n118), .Y(n116) );
  AOI21X1 U72 ( .A(B[5]), .B(n74), .C(n119), .Y(n118) );
  NOR2X1 U73 ( .A(n120), .B(n82), .Y(n119) );
  AOI21X1 U74 ( .A(A[4]), .B(B[4]), .C(n75), .Y(n120) );
  AOI21X1 U75 ( .A(B[4]), .B(n122), .C(n123), .Y(n121) );
  AND2X1 U76 ( .A(n122), .B(A[4]), .Y(n123) );
  OAI21X1 U77 ( .A(n81), .B(n91), .C(n124), .Y(n122) );
  AOI21X1 U78 ( .A(B[3]), .B(n76), .C(n125), .Y(n124) );
  NOR2X1 U79 ( .A(n126), .B(n81), .Y(n125) );
  AOI21X1 U80 ( .A(A[2]), .B(B[2]), .C(n77), .Y(n126) );
  AOI21X1 U81 ( .A(B[2]), .B(n128), .C(n129), .Y(n127) );
  AND2X1 U82 ( .A(n128), .B(A[2]), .Y(n129) );
  OAI21X1 U83 ( .A(n80), .B(n90), .C(n130), .Y(n128) );
  AOI21X1 U84 ( .A(B[1]), .B(n78), .C(n131), .Y(n130) );
  NOR2X1 U85 ( .A(n132), .B(n80), .Y(n131) );
  AOI21X1 U86 ( .A(A[0]), .B(B[0]), .C(n79), .Y(n132) );
  AOI22X1 U87 ( .A(CI), .B(A[0]), .C(B[0]), .D(CI), .Y(n133) );
endmodule


module z_interpolation_DW_inc_0 ( carry_in, a, carry_out, sum );
  input [15:0] a;
  output [15:0] sum;
  input carry_in;
  output carry_out;
  wire   n1, n2, n3, n4, n5, n6, n7;

  HAX1 U2 ( .A(a[6]), .B(n2), .YC(n1), .YS(sum[6]) );
  HAX1 U3 ( .A(a[5]), .B(n3), .YC(n2), .YS(sum[5]) );
  HAX1 U4 ( .A(a[4]), .B(n4), .YC(n3), .YS(sum[4]) );
  HAX1 U5 ( .A(a[3]), .B(n5), .YC(n4), .YS(sum[3]) );
  HAX1 U6 ( .A(a[2]), .B(n6), .YC(n5), .YS(sum[2]) );
  HAX1 U7 ( .A(a[1]), .B(n7), .YC(n6), .YS(sum[1]) );
  HAX1 U8 ( .A(carry_in), .B(a[0]), .YC(n7), .YS(sum[0]) );
  XOR2X1 U11 ( .A(n1), .B(a[7]), .Y(sum[7]) );
endmodule


module z_interpolation_DW_div_tc_0 ( a, b, quotient, remainder, divide_by_0 );
  input [15:0] a;
  input [15:0] b;
  output [15:0] quotient;
  output [15:0] remainder;
  output divide_by_0;
  wire   \u_div/QIncCI , \u_div/QAbs_0 , \u_div/SumTmp[1][0] ,
         \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] ,
         \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] ,
         \u_div/SumTmp[1][7] , \u_div/SumTmp[1][8] , \u_div/SumTmp[1][9] ,
         \u_div/SumTmp[1][10] , \u_div/SumTmp[1][11] , \u_div/SumTmp[1][12] ,
         \u_div/SumTmp[1][13] , \u_div/SumTmp[1][14] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[2][6] ,
         \u_div/SumTmp[2][7] , \u_div/SumTmp[2][8] , \u_div/SumTmp[2][9] ,
         \u_div/SumTmp[2][10] , \u_div/SumTmp[2][11] , \u_div/SumTmp[2][12] ,
         \u_div/SumTmp[2][13] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[3][5] , \u_div/SumTmp[3][6] , \u_div/SumTmp[3][7] ,
         \u_div/SumTmp[3][8] , \u_div/SumTmp[3][9] , \u_div/SumTmp[3][10] ,
         \u_div/SumTmp[3][11] , \u_div/SumTmp[3][12] , \u_div/SumTmp[4][0] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] ,
         \u_div/SumTmp[4][4] , \u_div/SumTmp[4][5] , \u_div/SumTmp[4][6] ,
         \u_div/SumTmp[4][7] , \u_div/SumTmp[4][8] , \u_div/SumTmp[4][9] ,
         \u_div/SumTmp[4][10] , \u_div/SumTmp[4][11] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[5][3] ,
         \u_div/SumTmp[5][4] , \u_div/SumTmp[5][5] , \u_div/SumTmp[5][6] ,
         \u_div/SumTmp[5][7] , \u_div/SumTmp[5][8] , \u_div/SumTmp[5][9] ,
         \u_div/SumTmp[5][10] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[6][2] , \u_div/SumTmp[6][3] , \u_div/SumTmp[6][4] ,
         \u_div/SumTmp[6][5] , \u_div/SumTmp[6][6] , \u_div/SumTmp[6][7] ,
         \u_div/SumTmp[6][8] , \u_div/SumTmp[6][9] , \u_div/SumTmp[7][0] ,
         \u_div/SumTmp[7][1] , \u_div/SumTmp[7][2] , \u_div/SumTmp[7][3] ,
         \u_div/SumTmp[7][4] , \u_div/SumTmp[7][5] , \u_div/SumTmp[7][6] ,
         \u_div/SumTmp[7][7] , \u_div/SumTmp[7][8] , \u_div/SumTmp[8][0] ,
         \u_div/SumTmp[8][1] , \u_div/SumTmp[8][2] , \u_div/SumTmp[8][3] ,
         \u_div/SumTmp[8][4] , \u_div/SumTmp[8][5] , \u_div/SumTmp[8][6] ,
         \u_div/SumTmp[8][7] , \u_div/SumTmp[9][0] , \u_div/SumTmp[9][1] ,
         \u_div/SumTmp[9][2] , \u_div/SumTmp[9][3] , \u_div/SumTmp[9][4] ,
         \u_div/SumTmp[9][5] , \u_div/SumTmp[9][6] , \u_div/SumTmp[10][0] ,
         \u_div/SumTmp[10][1] , \u_div/SumTmp[10][2] , \u_div/SumTmp[10][3] ,
         \u_div/SumTmp[10][4] , \u_div/SumTmp[10][5] , \u_div/SumTmp[11][0] ,
         \u_div/SumTmp[11][1] , \u_div/SumTmp[11][2] , \u_div/SumTmp[11][3] ,
         \u_div/SumTmp[11][4] , \u_div/SumTmp[12][0] , \u_div/SumTmp[12][1] ,
         \u_div/SumTmp[12][2] , \u_div/SumTmp[12][3] , \u_div/SumTmp[13][0] ,
         \u_div/SumTmp[13][1] , \u_div/SumTmp[13][2] , \u_div/SumTmp[14][0] ,
         \u_div/SumTmp[14][1] , \u_div/SumTmp[15][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][16] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][14] , \u_div/CryTmp[2][16] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][13] , \u_div/CryTmp[3][16] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][12] , \u_div/CryTmp[4][16] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][11] , \u_div/CryTmp[5][16] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][10] , \u_div/CryTmp[6][16] , \u_div/CryTmp[7][1] ,
         \u_div/CryTmp[7][9] , \u_div/CryTmp[7][16] , \u_div/CryTmp[8][1] ,
         \u_div/CryTmp[8][8] , \u_div/CryTmp[8][16] , \u_div/CryTmp[9][1] ,
         \u_div/CryTmp[9][7] , \u_div/CryTmp[9][16] , \u_div/CryTmp[10][1] ,
         \u_div/CryTmp[10][6] , \u_div/CryTmp[10][16] , \u_div/CryTmp[11][5] ,
         \u_div/CryTmp[11][16] , \u_div/CryTmp[12][16] , \u_div/CryTmp[13][1] ,
         \u_div/CryTmp[13][3] , \u_div/CryTmp[13][16] , \u_div/CryTmp[14][1] ,
         \u_div/CryTmp[14][2] , \u_div/CryTmp[14][16] , \u_div/CryTmp[15][1] ,
         \u_div/PartRem[1][0] , \u_div/PartRem[2][0] , \u_div/PartRem[3][0] ,
         \u_div/PartRem[4][0] , \u_div/PartRem[5][0] , \u_div/PartRem[6][0] ,
         \u_div/PartRem[7][0] , \u_div/PartRem[8][0] , \u_div/PartRem[9][0] ,
         \u_div/PartRem[10][0] , \u_div/PartRem[11][0] ,
         \u_div/PartRem[12][0] , \u_div/PartRem[13][0] ,
         \u_div/PartRem[14][0] , \u_div/PartRem[15][0] ,
         \u_div/PartRem[16][0] , \u_div/u_add_PartRem_3_10/A[4] ,
         \u_div/u_add_PartRem_3_10/A[3] , \u_div/u_add_PartRem_3_10/A[2] ,
         \u_div/u_add_PartRem_3_10/A[1] , \u_div/u_add_PartRem_3_10/A[0] ,
         \u_div/u_add_PartRem_3_10/n5 , \u_div/u_add_PartRem_3_10/n4 ,
         \u_div/u_add_PartRem_3_10/n3 , \u_div/u_add_PartRem_3_10/n2 , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314;
  wire   [15:0] \u_div/QInv ;
  wire   [15:0] \u_div/BInv ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  MUX2X1 \u_div/u_mx_PartRem_1_15_0  ( .B(\u_div/PartRem[16][0] ), .A(
        \u_div/SumTmp[15][0] ), .S(n135), .Y(n178) );
  MUX2X1 \u_div/u_mx_PartRem_1_14_1  ( .B(n134), .A(\u_div/SumTmp[14][1] ), 
        .S(\u_div/CryTmp[14][16] ), .Y(n179) );
  MUX2X1 \u_div/u_mx_PartRem_1_14_0  ( .B(\u_div/PartRem[15][0] ), .A(
        \u_div/SumTmp[14][0] ), .S(\u_div/CryTmp[14][16] ), .Y(n180) );
  MUX2X1 \u_div/u_mx_PartRem_1_13_2  ( .B(n131), .A(\u_div/SumTmp[13][2] ), 
        .S(\u_div/CryTmp[13][16] ), .Y(n181) );
  MUX2X1 \u_div/u_mx_PartRem_1_13_1  ( .B(n129), .A(\u_div/SumTmp[13][1] ), 
        .S(\u_div/CryTmp[13][16] ), .Y(n182) );
  MUX2X1 \u_div/u_mx_PartRem_1_13_0  ( .B(\u_div/PartRem[14][0] ), .A(
        \u_div/SumTmp[13][0] ), .S(\u_div/CryTmp[13][16] ), .Y(n183) );
  MUX2X1 \u_div/u_mx_PartRem_1_12_3  ( .B(n127), .A(\u_div/SumTmp[12][3] ), 
        .S(\u_div/CryTmp[12][16] ), .Y(n184) );
  MUX2X1 \u_div/u_mx_PartRem_1_12_2  ( .B(n125), .A(\u_div/SumTmp[12][2] ), 
        .S(\u_div/CryTmp[12][16] ), .Y(n185) );
  MUX2X1 \u_div/u_mx_PartRem_1_12_1  ( .B(n121), .A(\u_div/SumTmp[12][1] ), 
        .S(\u_div/CryTmp[12][16] ), .Y(n186) );
  MUX2X1 \u_div/u_mx_PartRem_1_12_0  ( .B(\u_div/PartRem[13][0] ), .A(
        \u_div/SumTmp[12][0] ), .S(\u_div/CryTmp[12][16] ), .Y(n187) );
  MUX2X1 \u_div/u_mx_PartRem_1_11_4  ( .B(n118), .A(\u_div/SumTmp[11][4] ), 
        .S(\u_div/CryTmp[11][16] ), .Y(n188) );
  MUX2X1 \u_div/u_mx_PartRem_1_11_3  ( .B(n116), .A(\u_div/SumTmp[11][3] ), 
        .S(\u_div/CryTmp[11][16] ), .Y(n189) );
  MUX2X1 \u_div/u_mx_PartRem_1_11_2  ( .B(n114), .A(\u_div/SumTmp[11][2] ), 
        .S(\u_div/CryTmp[11][16] ), .Y(n190) );
  MUX2X1 \u_div/u_mx_PartRem_1_11_1  ( .B(n111), .A(\u_div/SumTmp[11][1] ), 
        .S(\u_div/CryTmp[11][16] ), .Y(n191) );
  MUX2X1 \u_div/u_mx_PartRem_1_11_0  ( .B(\u_div/PartRem[12][0] ), .A(
        \u_div/SumTmp[11][0] ), .S(\u_div/CryTmp[11][16] ), .Y(n192) );
  MUX2X1 \u_div/u_mx_PartRem_1_10_5  ( .B(\u_div/u_add_PartRem_3_10/A[4] ), 
        .A(\u_div/SumTmp[10][5] ), .S(\u_div/CryTmp[10][16] ), .Y(n193) );
  MUX2X1 \u_div/u_mx_PartRem_1_10_4  ( .B(\u_div/u_add_PartRem_3_10/A[3] ), 
        .A(\u_div/SumTmp[10][4] ), .S(\u_div/CryTmp[10][16] ), .Y(n194) );
  MUX2X1 \u_div/u_mx_PartRem_1_10_3  ( .B(\u_div/u_add_PartRem_3_10/A[2] ), 
        .A(\u_div/SumTmp[10][3] ), .S(\u_div/CryTmp[10][16] ), .Y(n195) );
  MUX2X1 \u_div/u_mx_PartRem_1_10_2  ( .B(\u_div/u_add_PartRem_3_10/A[1] ), 
        .A(\u_div/SumTmp[10][2] ), .S(\u_div/CryTmp[10][16] ), .Y(n196) );
  MUX2X1 \u_div/u_mx_PartRem_1_10_1  ( .B(\u_div/u_add_PartRem_3_10/A[0] ), 
        .A(\u_div/SumTmp[10][1] ), .S(\u_div/CryTmp[10][16] ), .Y(n197) );
  MUX2X1 \u_div/u_mx_PartRem_1_10_0  ( .B(\u_div/PartRem[11][0] ), .A(
        \u_div/SumTmp[10][0] ), .S(\u_div/CryTmp[10][16] ), .Y(n198) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_6  ( .B(n108), .A(\u_div/SumTmp[9][6] ), .S(
        \u_div/CryTmp[9][16] ), .Y(n199) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_5  ( .B(n107), .A(\u_div/SumTmp[9][5] ), .S(
        \u_div/CryTmp[9][16] ), .Y(n200) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_4  ( .B(n106), .A(\u_div/SumTmp[9][4] ), .S(
        \u_div/CryTmp[9][16] ), .Y(n201) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_3  ( .B(n105), .A(\u_div/SumTmp[9][3] ), .S(
        \u_div/CryTmp[9][16] ), .Y(n202) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_2  ( .B(n104), .A(\u_div/SumTmp[9][2] ), .S(
        \u_div/CryTmp[9][16] ), .Y(n203) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_1  ( .B(n103), .A(\u_div/SumTmp[9][1] ), .S(
        \u_div/CryTmp[9][16] ), .Y(n204) );
  MUX2X1 \u_div/u_mx_PartRem_1_9_0  ( .B(\u_div/PartRem[10][0] ), .A(
        \u_div/SumTmp[9][0] ), .S(\u_div/CryTmp[9][16] ), .Y(n205) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_7  ( .B(n102), .A(\u_div/SumTmp[8][7] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n206) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_6  ( .B(n101), .A(\u_div/SumTmp[8][6] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n207) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_5  ( .B(n100), .A(\u_div/SumTmp[8][5] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n208) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_4  ( .B(n99), .A(\u_div/SumTmp[8][4] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n209) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_3  ( .B(n98), .A(\u_div/SumTmp[8][3] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n210) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_2  ( .B(n97), .A(\u_div/SumTmp[8][2] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n211) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_1  ( .B(n96), .A(\u_div/SumTmp[8][1] ), .S(
        \u_div/CryTmp[8][16] ), .Y(n212) );
  MUX2X1 \u_div/u_mx_PartRem_1_8_0  ( .B(\u_div/PartRem[9][0] ), .A(
        \u_div/SumTmp[8][0] ), .S(\u_div/CryTmp[8][16] ), .Y(n213) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_8  ( .B(n95), .A(\u_div/SumTmp[7][8] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n214) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_7  ( .B(n94), .A(\u_div/SumTmp[7][7] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n215) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_6  ( .B(n93), .A(\u_div/SumTmp[7][6] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n216) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_5  ( .B(n92), .A(\u_div/SumTmp[7][5] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n217) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_4  ( .B(n91), .A(\u_div/SumTmp[7][4] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n218) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_3  ( .B(n90), .A(\u_div/SumTmp[7][3] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n219) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_2  ( .B(n89), .A(\u_div/SumTmp[7][2] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n220) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_1  ( .B(n88), .A(\u_div/SumTmp[7][1] ), .S(
        \u_div/CryTmp[7][16] ), .Y(n221) );
  MUX2X1 \u_div/u_mx_PartRem_1_7_0  ( .B(\u_div/PartRem[8][0] ), .A(
        \u_div/SumTmp[7][0] ), .S(\u_div/CryTmp[7][16] ), .Y(n222) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_9  ( .B(n87), .A(\u_div/SumTmp[6][9] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n223) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_8  ( .B(n86), .A(\u_div/SumTmp[6][8] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n224) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_7  ( .B(n85), .A(\u_div/SumTmp[6][7] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n225) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_6  ( .B(n84), .A(\u_div/SumTmp[6][6] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n226) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_5  ( .B(n83), .A(\u_div/SumTmp[6][5] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n227) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_4  ( .B(n82), .A(\u_div/SumTmp[6][4] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n228) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_3  ( .B(n81), .A(\u_div/SumTmp[6][3] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n229) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_2  ( .B(n80), .A(\u_div/SumTmp[6][2] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n230) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_1  ( .B(n79), .A(\u_div/SumTmp[6][1] ), .S(
        \u_div/CryTmp[6][16] ), .Y(n231) );
  MUX2X1 \u_div/u_mx_PartRem_1_6_0  ( .B(\u_div/PartRem[7][0] ), .A(
        \u_div/SumTmp[6][0] ), .S(\u_div/CryTmp[6][16] ), .Y(n232) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_10  ( .B(n78), .A(\u_div/SumTmp[5][10] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n233) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_9  ( .B(n77), .A(\u_div/SumTmp[5][9] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n234) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_8  ( .B(n76), .A(\u_div/SumTmp[5][8] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n235) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_7  ( .B(n75), .A(\u_div/SumTmp[5][7] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n236) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_6  ( .B(n74), .A(\u_div/SumTmp[5][6] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n237) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_5  ( .B(n73), .A(\u_div/SumTmp[5][5] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n238) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_4  ( .B(n72), .A(\u_div/SumTmp[5][4] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n239) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_3  ( .B(n71), .A(\u_div/SumTmp[5][3] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n240) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_2  ( .B(n70), .A(\u_div/SumTmp[5][2] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n241) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_1  ( .B(n69), .A(\u_div/SumTmp[5][1] ), .S(
        \u_div/CryTmp[5][16] ), .Y(n242) );
  MUX2X1 \u_div/u_mx_PartRem_1_5_0  ( .B(\u_div/PartRem[6][0] ), .A(
        \u_div/SumTmp[5][0] ), .S(\u_div/CryTmp[5][16] ), .Y(n243) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_11  ( .B(n68), .A(\u_div/SumTmp[4][11] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n244) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_10  ( .B(n67), .A(\u_div/SumTmp[4][10] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n245) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_9  ( .B(n66), .A(\u_div/SumTmp[4][9] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n246) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_8  ( .B(n65), .A(\u_div/SumTmp[4][8] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n247) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_7  ( .B(n64), .A(\u_div/SumTmp[4][7] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n248) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_6  ( .B(n63), .A(\u_div/SumTmp[4][6] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n249) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_5  ( .B(n62), .A(\u_div/SumTmp[4][5] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n250) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_4  ( .B(n61), .A(\u_div/SumTmp[4][4] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n251) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_3  ( .B(n60), .A(\u_div/SumTmp[4][3] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n252) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_2  ( .B(n59), .A(\u_div/SumTmp[4][2] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n253) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_1  ( .B(n58), .A(\u_div/SumTmp[4][1] ), .S(
        \u_div/CryTmp[4][16] ), .Y(n254) );
  MUX2X1 \u_div/u_mx_PartRem_1_4_0  ( .B(\u_div/PartRem[5][0] ), .A(
        \u_div/SumTmp[4][0] ), .S(\u_div/CryTmp[4][16] ), .Y(n255) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_12  ( .B(n57), .A(\u_div/SumTmp[3][12] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n256) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_11  ( .B(n56), .A(\u_div/SumTmp[3][11] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n257) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_10  ( .B(n55), .A(\u_div/SumTmp[3][10] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n258) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_9  ( .B(n54), .A(\u_div/SumTmp[3][9] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n259) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_8  ( .B(n53), .A(\u_div/SumTmp[3][8] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n260) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_7  ( .B(n52), .A(\u_div/SumTmp[3][7] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n261) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_6  ( .B(n51), .A(\u_div/SumTmp[3][6] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n262) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_5  ( .B(n50), .A(\u_div/SumTmp[3][5] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n263) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_4  ( .B(n49), .A(\u_div/SumTmp[3][4] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n264) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_3  ( .B(n48), .A(\u_div/SumTmp[3][3] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n265) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_2  ( .B(n47), .A(\u_div/SumTmp[3][2] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n266) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_1  ( .B(n46), .A(\u_div/SumTmp[3][1] ), .S(
        \u_div/CryTmp[3][16] ), .Y(n267) );
  MUX2X1 \u_div/u_mx_PartRem_1_3_0  ( .B(\u_div/PartRem[4][0] ), .A(
        \u_div/SumTmp[3][0] ), .S(\u_div/CryTmp[3][16] ), .Y(n268) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_13  ( .B(n45), .A(\u_div/SumTmp[2][13] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n269) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_12  ( .B(n44), .A(\u_div/SumTmp[2][12] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n270) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_11  ( .B(n43), .A(\u_div/SumTmp[2][11] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n271) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_10  ( .B(n42), .A(\u_div/SumTmp[2][10] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n272) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_9  ( .B(n41), .A(\u_div/SumTmp[2][9] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n273) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_8  ( .B(n40), .A(\u_div/SumTmp[2][8] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n274) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_7  ( .B(n39), .A(\u_div/SumTmp[2][7] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n275) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_6  ( .B(n38), .A(\u_div/SumTmp[2][6] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n276) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_5  ( .B(n37), .A(\u_div/SumTmp[2][5] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n277) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_4  ( .B(n36), .A(\u_div/SumTmp[2][4] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n278) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_3  ( .B(n35), .A(\u_div/SumTmp[2][3] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n279) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_2  ( .B(n34), .A(\u_div/SumTmp[2][2] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n280) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_1  ( .B(n33), .A(\u_div/SumTmp[2][1] ), .S(
        \u_div/CryTmp[2][16] ), .Y(n281) );
  MUX2X1 \u_div/u_mx_PartRem_1_2_0  ( .B(\u_div/PartRem[3][0] ), .A(
        \u_div/SumTmp[2][0] ), .S(\u_div/CryTmp[2][16] ), .Y(n282) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_14  ( .B(n32), .A(\u_div/SumTmp[1][14] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n283) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_13  ( .B(n31), .A(\u_div/SumTmp[1][13] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n284) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_12  ( .B(n30), .A(\u_div/SumTmp[1][12] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n285) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_11  ( .B(n29), .A(\u_div/SumTmp[1][11] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n286) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_10  ( .B(n28), .A(\u_div/SumTmp[1][10] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n287) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_9  ( .B(n27), .A(\u_div/SumTmp[1][9] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n288) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_8  ( .B(n26), .A(\u_div/SumTmp[1][8] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n289) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_7  ( .B(n25), .A(\u_div/SumTmp[1][7] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n290) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_6  ( .B(n24), .A(\u_div/SumTmp[1][6] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n291) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_5  ( .B(n23), .A(\u_div/SumTmp[1][5] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n292) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_4  ( .B(n22), .A(\u_div/SumTmp[1][4] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n293) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_3  ( .B(n21), .A(\u_div/SumTmp[1][3] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n294) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_2  ( .B(n20), .A(\u_div/SumTmp[1][2] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n295) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_1  ( .B(n19), .A(\u_div/SumTmp[1][1] ), .S(
        \u_div/CryTmp[1][16] ), .Y(n296) );
  MUX2X1 \u_div/u_mx_PartRem_1_1_0  ( .B(\u_div/PartRem[2][0] ), .A(
        \u_div/SumTmp[1][0] ), .S(\u_div/CryTmp[1][16] ), .Y(n297) );
  z_interpolation_DW01_absval_0 \u_div/u_absval_AAbs  ( .A(a), .ABSVAL({
        \u_div/PartRem[16][0] , \u_div/PartRem[15][0] , \u_div/PartRem[14][0] , 
        \u_div/PartRem[13][0] , \u_div/PartRem[12][0] , \u_div/PartRem[11][0] , 
        \u_div/PartRem[10][0] , \u_div/PartRem[9][0] , \u_div/PartRem[8][0] , 
        \u_div/PartRem[7][0] , \u_div/PartRem[6][0] , \u_div/PartRem[5][0] , 
        \u_div/PartRem[4][0] , \u_div/PartRem[3][0] , \u_div/PartRem[2][0] , 
        \u_div/PartRem[1][0] }) );
  z_interpolation_DW01_add_1 \u_div/u_add_PartRem_3_9  ( .A({n108, n107, n106, 
        n105, n104, n103}), .B(\u_div/BInv [6:1]), .CI(\u_div/CryTmp[9][1] ), 
        .SUM({\u_div/SumTmp[9][6] , \u_div/SumTmp[9][5] , \u_div/SumTmp[9][4] , 
        \u_div/SumTmp[9][3] , \u_div/SumTmp[9][2] , \u_div/SumTmp[9][1] }), 
        .CO(\u_div/CryTmp[9][7] ) );
  z_interpolation_DW01_add_2 \u_div/u_add_PartRem_3_8  ( .A({n102, n101, n100, 
        n99, n98, n97, n96}), .B(\u_div/BInv [7:1]), .CI(\u_div/CryTmp[8][1] ), 
        .SUM({\u_div/SumTmp[8][7] , \u_div/SumTmp[8][6] , \u_div/SumTmp[8][5] , 
        \u_div/SumTmp[8][4] , \u_div/SumTmp[8][3] , \u_div/SumTmp[8][2] , 
        \u_div/SumTmp[8][1] }), .CO(\u_div/CryTmp[8][8] ) );
  z_interpolation_DW01_add_3 \u_div/u_add_PartRem_3_7  ( .A({n95, n94, n93, 
        n92, n91, n90, n89, n88}), .B(\u_div/BInv [8:1]), .CI(
        \u_div/CryTmp[7][1] ), .SUM({\u_div/SumTmp[7][8] , 
        \u_div/SumTmp[7][7] , \u_div/SumTmp[7][6] , \u_div/SumTmp[7][5] , 
        \u_div/SumTmp[7][4] , \u_div/SumTmp[7][3] , \u_div/SumTmp[7][2] , 
        \u_div/SumTmp[7][1] }), .CO(\u_div/CryTmp[7][9] ) );
  z_interpolation_DW01_add_4 \u_div/u_add_PartRem_3_6  ( .A({n87, n86, n85, 
        n84, n83, n82, n81, n80, n79}), .B(\u_div/BInv [9:1]), .CI(
        \u_div/CryTmp[6][1] ), .SUM({\u_div/SumTmp[6][9] , 
        \u_div/SumTmp[6][8] , \u_div/SumTmp[6][7] , \u_div/SumTmp[6][6] , 
        \u_div/SumTmp[6][5] , \u_div/SumTmp[6][4] , \u_div/SumTmp[6][3] , 
        \u_div/SumTmp[6][2] , \u_div/SumTmp[6][1] }), .CO(
        \u_div/CryTmp[6][10] ) );
  z_interpolation_DW01_add_5 \u_div/u_add_PartRem_3_5  ( .A({n78, n77, n76, 
        n75, n74, n73, n72, n71, n70, n69}), .B(\u_div/BInv [10:1]), .CI(
        \u_div/CryTmp[5][1] ), .SUM({\u_div/SumTmp[5][10] , 
        \u_div/SumTmp[5][9] , \u_div/SumTmp[5][8] , \u_div/SumTmp[5][7] , 
        \u_div/SumTmp[5][6] , \u_div/SumTmp[5][5] , \u_div/SumTmp[5][4] , 
        \u_div/SumTmp[5][3] , \u_div/SumTmp[5][2] , \u_div/SumTmp[5][1] }), 
        .CO(\u_div/CryTmp[5][11] ) );
  z_interpolation_DW01_add_6 \u_div/u_add_PartRem_3_4  ( .A({n68, n67, n66, 
        n65, n64, n63, n62, n61, n60, n59, n58}), .B(\u_div/BInv [11:1]), .CI(
        \u_div/CryTmp[4][1] ), .SUM({\u_div/SumTmp[4][11] , 
        \u_div/SumTmp[4][10] , \u_div/SumTmp[4][9] , \u_div/SumTmp[4][8] , 
        \u_div/SumTmp[4][7] , \u_div/SumTmp[4][6] , \u_div/SumTmp[4][5] , 
        \u_div/SumTmp[4][4] , \u_div/SumTmp[4][3] , \u_div/SumTmp[4][2] , 
        \u_div/SumTmp[4][1] }), .CO(\u_div/CryTmp[4][12] ) );
  z_interpolation_DW01_add_7 \u_div/u_add_PartRem_3_3  ( .A({n57, n56, n55, 
        n54, n53, n52, n51, n50, n49, n48, n47, n46}), .B(\u_div/BInv [12:1]), 
        .CI(\u_div/CryTmp[3][1] ), .SUM({\u_div/SumTmp[3][12] , 
        \u_div/SumTmp[3][11] , \u_div/SumTmp[3][10] , \u_div/SumTmp[3][9] , 
        \u_div/SumTmp[3][8] , \u_div/SumTmp[3][7] , \u_div/SumTmp[3][6] , 
        \u_div/SumTmp[3][5] , \u_div/SumTmp[3][4] , \u_div/SumTmp[3][3] , 
        \u_div/SumTmp[3][2] , \u_div/SumTmp[3][1] }), .CO(
        \u_div/CryTmp[3][13] ) );
  z_interpolation_DW01_add_8 \u_div/u_add_PartRem_3_2  ( .A({n45, n44, n43, 
        n42, n41, n40, n39, n38, n37, n36, n35, n34, n33}), .B(
        \u_div/BInv [13:1]), .CI(\u_div/CryTmp[2][1] ), .SUM({
        \u_div/SumTmp[2][13] , \u_div/SumTmp[2][12] , \u_div/SumTmp[2][11] , 
        \u_div/SumTmp[2][10] , \u_div/SumTmp[2][9] , \u_div/SumTmp[2][8] , 
        \u_div/SumTmp[2][7] , \u_div/SumTmp[2][6] , \u_div/SumTmp[2][5] , 
        \u_div/SumTmp[2][4] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][2] , 
        \u_div/SumTmp[2][1] }), .CO(\u_div/CryTmp[2][14] ) );
  z_interpolation_DW01_add_9 \u_div/u_add_PartRem_3_1  ( .A({n32, n31, n30, 
        n29, n28, n27, n26, n25, n24, n23, n22, n21, n20, n19}), .B(
        \u_div/BInv [14:1]), .CI(\u_div/CryTmp[1][1] ), .SUM({
        \u_div/SumTmp[1][14] , \u_div/SumTmp[1][13] , \u_div/SumTmp[1][12] , 
        \u_div/SumTmp[1][11] , \u_div/SumTmp[1][10] , \u_div/SumTmp[1][9] , 
        \u_div/SumTmp[1][8] , \u_div/SumTmp[1][7] , \u_div/SumTmp[1][6] , 
        \u_div/SumTmp[1][5] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][3] , 
        \u_div/SumTmp[1][2] , \u_div/SumTmp[1][1] }), .CO(
        \u_div/CryTmp[1][16] ) );
  z_interpolation_DW01_add_10 \u_div/u_add_PartRem_2_0  ( .A({n18, n17, n16, 
        n15, n14, n13, n12, n11, n10, n9, n8, n7, n6, n5, n4}), .B({1'b1, 
        \u_div/BInv [14:1]}), .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/QAbs_0 )
         );
  z_interpolation_DW_inc_0 \u_div/u_inc_QInc  ( .carry_in(\u_div/QIncCI ), .a(
        \u_div/QInv ), .sum({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, quotient[7:0]}) );
  FAX1 \u_div/u_add_PartRem_3_10/U6  ( .A(\u_div/BInv [1]), .B(
        \u_div/u_add_PartRem_3_10/A[0] ), .C(\u_div/CryTmp[10][1] ), .YC(
        \u_div/u_add_PartRem_3_10/n5 ), .YS(\u_div/SumTmp[10][1] ) );
  FAX1 \u_div/u_add_PartRem_3_10/U5  ( .A(\u_div/BInv [2]), .B(
        \u_div/u_add_PartRem_3_10/A[1] ), .C(\u_div/u_add_PartRem_3_10/n5 ), 
        .YC(\u_div/u_add_PartRem_3_10/n4 ), .YS(\u_div/SumTmp[10][2] ) );
  FAX1 \u_div/u_add_PartRem_3_10/U4  ( .A(\u_div/BInv [3]), .B(
        \u_div/u_add_PartRem_3_10/A[2] ), .C(\u_div/u_add_PartRem_3_10/n4 ), 
        .YC(\u_div/u_add_PartRem_3_10/n3 ), .YS(\u_div/SumTmp[10][3] ) );
  FAX1 \u_div/u_add_PartRem_3_10/U3  ( .A(\u_div/BInv [4]), .B(
        \u_div/u_add_PartRem_3_10/A[3] ), .C(\u_div/u_add_PartRem_3_10/n3 ), 
        .YC(\u_div/u_add_PartRem_3_10/n2 ), .YS(\u_div/SumTmp[10][4] ) );
  FAX1 \u_div/u_add_PartRem_3_10/U2  ( .A(\u_div/BInv [5]), .B(
        \u_div/u_add_PartRem_3_10/A[4] ), .C(\u_div/u_add_PartRem_3_10/n2 ), 
        .YC(\u_div/CryTmp[10][6] ), .YS(\u_div/SumTmp[10][5] ) );
  NOR2X1 U1 ( .A(\u_div/PartRem[12][0] ), .B(\u_div/BInv [0]), .Y(n1) );
  NOR2X1 U2 ( .A(\u_div/PartRem[13][0] ), .B(\u_div/BInv [0]), .Y(n2) );
  INVX4 U3 ( .A(b[8]), .Y(\u_div/BInv [8]) );
  INVX4 U4 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVX4 U5 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  INVX4 U6 ( .A(n300), .Y(n136) );
  INVX4 U7 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  INVX4 U8 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  AND2X2 U9 ( .A(\u_div/CryTmp[2][14] ), .B(\u_div/BInv [14]), .Y(
        \u_div/CryTmp[2][16] ) );
  INVX4 U10 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  INVX4 U11 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  AND2X2 U12 ( .A(\u_div/CryTmp[6][10] ), .B(n307), .Y(\u_div/CryTmp[6][16] )
         );
  AND2X2 U13 ( .A(\u_div/CryTmp[5][11] ), .B(n308), .Y(\u_div/CryTmp[5][16] )
         );
  AND2X2 U14 ( .A(\u_div/CryTmp[4][12] ), .B(n309), .Y(\u_div/CryTmp[4][16] )
         );
  AND2X2 U15 ( .A(\u_div/CryTmp[3][13] ), .B(n310), .Y(\u_div/CryTmp[3][16] )
         );
  INVX1 U16 ( .A(a[15]), .Y(n300) );
  INVX4 U17 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  INVX4 U18 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  OR2X1 U19 ( .A(\u_div/PartRem[10][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[9][1] ) );
  XNOR2X1 U20 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[10][0] ), .Y(
        \u_div/SumTmp[9][0] ) );
  OR2X1 U21 ( .A(\u_div/PartRem[8][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[7][1] ) );
  XNOR2X1 U22 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[8][0] ), .Y(
        \u_div/SumTmp[7][0] ) );
  OR2X1 U23 ( .A(\u_div/PartRem[6][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[5][1] ) );
  XNOR2X1 U24 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[6][0] ), .Y(
        \u_div/SumTmp[5][0] ) );
  OR2X1 U25 ( .A(\u_div/PartRem[4][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[3][1] ) );
  XNOR2X1 U26 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[4][0] ), .Y(
        \u_div/SumTmp[3][0] ) );
  OR2X1 U27 ( .A(\u_div/PartRem[2][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[1][1] ) );
  XNOR2X1 U28 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[2][0] ), .Y(
        \u_div/SumTmp[1][0] ) );
  OR2X1 U29 ( .A(\u_div/PartRem[15][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[14][1] ) );
  XNOR2X1 U30 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[15][0] ), .Y(
        \u_div/SumTmp[14][0] ) );
  XNOR2X1 U31 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[13][0] ), .Y(
        \u_div/SumTmp[12][0] ) );
  OR2X1 U32 ( .A(\u_div/PartRem[11][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[10][1] ) );
  XNOR2X1 U33 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[11][0] ), .Y(
        \u_div/SumTmp[10][0] ) );
  NAND2X1 U34 ( .A(b[0]), .B(n3), .Y(\u_div/CryTmp[0][1] ) );
  INVX2 U35 ( .A(\u_div/PartRem[1][0] ), .Y(n3) );
  XNOR2X1 U36 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[12][0] ), .Y(
        \u_div/SumTmp[11][0] ) );
  OR2X1 U37 ( .A(\u_div/PartRem[14][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[13][1] ) );
  XNOR2X1 U38 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[14][0] ), .Y(
        \u_div/SumTmp[13][0] ) );
  OR2X1 U39 ( .A(\u_div/PartRem[16][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[15][1] ) );
  XNOR2X1 U40 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[16][0] ), .Y(
        \u_div/SumTmp[15][0] ) );
  OR2X1 U41 ( .A(\u_div/PartRem[3][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[2][1] ) );
  XNOR2X1 U42 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[3][0] ), .Y(
        \u_div/SumTmp[2][0] ) );
  OR2X1 U43 ( .A(\u_div/PartRem[5][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[4][1] ) );
  XNOR2X1 U44 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[5][0] ), .Y(
        \u_div/SumTmp[4][0] ) );
  OR2X1 U45 ( .A(\u_div/PartRem[7][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[6][1] ) );
  XNOR2X1 U46 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[7][0] ), .Y(
        \u_div/SumTmp[6][0] ) );
  OR2X1 U47 ( .A(\u_div/PartRem[9][0] ), .B(\u_div/BInv [0]), .Y(
        \u_div/CryTmp[8][1] ) );
  XNOR2X1 U48 ( .A(\u_div/BInv [0]), .B(\u_div/PartRem[9][0] ), .Y(
        \u_div/SumTmp[8][0] ) );
  INVX2 U49 ( .A(b[10]), .Y(\u_div/BInv [10]) );
  INVX2 U50 ( .A(b[11]), .Y(\u_div/BInv [11]) );
  INVX2 U51 ( .A(b[12]), .Y(\u_div/BInv [12]) );
  INVX2 U52 ( .A(b[13]), .Y(\u_div/BInv [13]) );
  INVX2 U53 ( .A(b[14]), .Y(\u_div/BInv [14]) );
  INVX2 U54 ( .A(b[9]), .Y(\u_div/BInv [9]) );
  NAND2X1 U55 ( .A(\u_div/BInv [0]), .B(n302), .Y(n301) );
  INVX2 U56 ( .A(n297), .Y(n4) );
  INVX2 U57 ( .A(n296), .Y(n5) );
  INVX2 U58 ( .A(n295), .Y(n6) );
  INVX2 U59 ( .A(n294), .Y(n7) );
  INVX2 U60 ( .A(n293), .Y(n8) );
  INVX2 U61 ( .A(n292), .Y(n9) );
  INVX2 U62 ( .A(n291), .Y(n10) );
  INVX2 U63 ( .A(n290), .Y(n11) );
  INVX2 U64 ( .A(n289), .Y(n12) );
  INVX2 U65 ( .A(n288), .Y(n13) );
  INVX2 U66 ( .A(n287), .Y(n14) );
  INVX2 U67 ( .A(n286), .Y(n15) );
  INVX2 U68 ( .A(n285), .Y(n16) );
  INVX2 U69 ( .A(n284), .Y(n17) );
  INVX2 U70 ( .A(n283), .Y(n18) );
  INVX2 U71 ( .A(n282), .Y(n19) );
  INVX2 U72 ( .A(n281), .Y(n20) );
  INVX2 U73 ( .A(n280), .Y(n21) );
  INVX2 U74 ( .A(n279), .Y(n22) );
  INVX2 U75 ( .A(n278), .Y(n23) );
  INVX2 U76 ( .A(n277), .Y(n24) );
  INVX2 U77 ( .A(n276), .Y(n25) );
  INVX2 U78 ( .A(n275), .Y(n26) );
  INVX2 U79 ( .A(n274), .Y(n27) );
  INVX2 U80 ( .A(n273), .Y(n28) );
  INVX2 U81 ( .A(n272), .Y(n29) );
  INVX2 U82 ( .A(n271), .Y(n30) );
  INVX2 U83 ( .A(n270), .Y(n31) );
  INVX2 U84 ( .A(n269), .Y(n32) );
  INVX2 U85 ( .A(n268), .Y(n33) );
  INVX2 U86 ( .A(n267), .Y(n34) );
  INVX2 U87 ( .A(n266), .Y(n35) );
  INVX2 U88 ( .A(n265), .Y(n36) );
  INVX2 U89 ( .A(n264), .Y(n37) );
  INVX2 U90 ( .A(n263), .Y(n38) );
  INVX2 U91 ( .A(n262), .Y(n39) );
  INVX2 U92 ( .A(n261), .Y(n40) );
  INVX2 U93 ( .A(n260), .Y(n41) );
  INVX2 U94 ( .A(n259), .Y(n42) );
  INVX2 U95 ( .A(n258), .Y(n43) );
  INVX2 U96 ( .A(n257), .Y(n44) );
  INVX2 U97 ( .A(n256), .Y(n45) );
  INVX2 U98 ( .A(n255), .Y(n46) );
  INVX2 U99 ( .A(n254), .Y(n47) );
  INVX2 U100 ( .A(n253), .Y(n48) );
  INVX2 U101 ( .A(n252), .Y(n49) );
  INVX2 U102 ( .A(n251), .Y(n50) );
  INVX2 U103 ( .A(n250), .Y(n51) );
  INVX2 U104 ( .A(n249), .Y(n52) );
  INVX2 U105 ( .A(n248), .Y(n53) );
  INVX2 U106 ( .A(n247), .Y(n54) );
  INVX2 U107 ( .A(n246), .Y(n55) );
  INVX2 U108 ( .A(n245), .Y(n56) );
  INVX2 U109 ( .A(n244), .Y(n57) );
  INVX2 U110 ( .A(n243), .Y(n58) );
  INVX2 U111 ( .A(n242), .Y(n59) );
  INVX2 U112 ( .A(n241), .Y(n60) );
  INVX2 U113 ( .A(n240), .Y(n61) );
  INVX2 U114 ( .A(n239), .Y(n62) );
  INVX2 U115 ( .A(n238), .Y(n63) );
  INVX2 U116 ( .A(n237), .Y(n64) );
  INVX2 U117 ( .A(n236), .Y(n65) );
  INVX2 U118 ( .A(n235), .Y(n66) );
  INVX2 U119 ( .A(n234), .Y(n67) );
  INVX2 U120 ( .A(n233), .Y(n68) );
  INVX2 U121 ( .A(n232), .Y(n69) );
  INVX2 U122 ( .A(n231), .Y(n70) );
  INVX2 U123 ( .A(n230), .Y(n71) );
  INVX2 U124 ( .A(n229), .Y(n72) );
  INVX2 U125 ( .A(n228), .Y(n73) );
  INVX2 U126 ( .A(n227), .Y(n74) );
  INVX2 U127 ( .A(n226), .Y(n75) );
  INVX2 U128 ( .A(n225), .Y(n76) );
  INVX2 U129 ( .A(n224), .Y(n77) );
  INVX2 U130 ( .A(n223), .Y(n78) );
  INVX2 U131 ( .A(n222), .Y(n79) );
  INVX2 U132 ( .A(n221), .Y(n80) );
  INVX2 U133 ( .A(n220), .Y(n81) );
  INVX2 U134 ( .A(n219), .Y(n82) );
  INVX2 U135 ( .A(n218), .Y(n83) );
  INVX2 U136 ( .A(n217), .Y(n84) );
  INVX2 U137 ( .A(n216), .Y(n85) );
  INVX2 U138 ( .A(n215), .Y(n86) );
  INVX2 U139 ( .A(n214), .Y(n87) );
  INVX2 U140 ( .A(n213), .Y(n88) );
  INVX2 U141 ( .A(n212), .Y(n89) );
  INVX2 U142 ( .A(n211), .Y(n90) );
  INVX2 U143 ( .A(n210), .Y(n91) );
  INVX2 U144 ( .A(n209), .Y(n92) );
  INVX2 U145 ( .A(n208), .Y(n93) );
  INVX2 U146 ( .A(n207), .Y(n94) );
  INVX2 U147 ( .A(n206), .Y(n95) );
  INVX2 U148 ( .A(n205), .Y(n96) );
  INVX2 U149 ( .A(n204), .Y(n97) );
  INVX2 U150 ( .A(n203), .Y(n98) );
  INVX2 U151 ( .A(n202), .Y(n99) );
  INVX2 U152 ( .A(n201), .Y(n100) );
  INVX2 U153 ( .A(n200), .Y(n101) );
  INVX2 U154 ( .A(n199), .Y(n102) );
  INVX2 U155 ( .A(n198), .Y(n103) );
  INVX2 U156 ( .A(n197), .Y(n104) );
  INVX2 U157 ( .A(n196), .Y(n105) );
  INVX2 U158 ( .A(n195), .Y(n106) );
  INVX2 U159 ( .A(n194), .Y(n107) );
  INVX2 U160 ( .A(n193), .Y(n108) );
  INVX2 U161 ( .A(n192), .Y(\u_div/u_add_PartRem_3_10/A[0] ) );
  INVX2 U162 ( .A(n191), .Y(\u_div/u_add_PartRem_3_10/A[1] ) );
  INVX2 U163 ( .A(n190), .Y(\u_div/u_add_PartRem_3_10/A[2] ) );
  INVX2 U164 ( .A(n189), .Y(\u_div/u_add_PartRem_3_10/A[3] ) );
  INVX2 U165 ( .A(n188), .Y(\u_div/u_add_PartRem_3_10/A[4] ) );
  INVX2 U166 ( .A(n143), .Y(n109) );
  INVX2 U167 ( .A(n139), .Y(n110) );
  INVX2 U168 ( .A(n187), .Y(n111) );
  INVX2 U169 ( .A(n138), .Y(n112) );
  INVX2 U170 ( .A(n144), .Y(n113) );
  INVX2 U171 ( .A(n186), .Y(n114) );
  INVX2 U172 ( .A(n146), .Y(n115) );
  INVX2 U173 ( .A(n185), .Y(n116) );
  INVX2 U174 ( .A(n150), .Y(n117) );
  INVX2 U175 ( .A(n184), .Y(n118) );
  INVX2 U176 ( .A(n156), .Y(n119) );
  INVX2 U177 ( .A(n157), .Y(n120) );
  INVX2 U178 ( .A(n183), .Y(n121) );
  INVX2 U179 ( .A(n155), .Y(n122) );
  INVX2 U180 ( .A(n160), .Y(n123) );
  INVX2 U181 ( .A(n162), .Y(n124) );
  INVX2 U182 ( .A(n182), .Y(n125) );
  INVX2 U183 ( .A(n164), .Y(n126) );
  INVX2 U184 ( .A(n181), .Y(n127) );
  INVX2 U185 ( .A(n169), .Y(n128) );
  INVX2 U186 ( .A(n180), .Y(n129) );
  INVX2 U187 ( .A(n171), .Y(n130) );
  INVX2 U188 ( .A(n179), .Y(n131) );
  INVX2 U189 ( .A(\u_div/CryTmp[14][1] ), .Y(n132) );
  INVX2 U190 ( .A(n175), .Y(n133) );
  INVX2 U191 ( .A(n178), .Y(n134) );
  INVX2 U192 ( .A(n299), .Y(n135) );
  NOR2X1 U193 ( .A(n118), .B(\u_div/BInv [4]), .Y(n151) );
  NOR2X1 U194 ( .A(n116), .B(\u_div/BInv [3]), .Y(n147) );
  NAND2X1 U195 ( .A(\u_div/BInv [2]), .B(n114), .Y(n144) );
  NAND2X1 U196 ( .A(\u_div/BInv [3]), .B(n116), .Y(n146) );
  OAI21X1 U197 ( .A(n147), .B(n144), .C(n146), .Y(n138) );
  NOR2X1 U198 ( .A(n111), .B(\u_div/BInv [1]), .Y(n139) );
  NAND2X1 U199 ( .A(\u_div/BInv [1]), .B(n111), .Y(n140) );
  OAI21X1 U200 ( .A(n139), .B(n1), .C(n140), .Y(n143) );
  NOR2X1 U201 ( .A(n114), .B(\u_div/BInv [2]), .Y(n145) );
  OAI21X1 U202 ( .A(n147), .B(n145), .C(n112), .Y(n137) );
  OAI21X1 U203 ( .A(n138), .B(n143), .C(n137), .Y(n153) );
  NAND2X1 U204 ( .A(\u_div/BInv [4]), .B(n118), .Y(n150) );
  OAI21X1 U205 ( .A(n151), .B(n153), .C(n150), .Y(\u_div/CryTmp[11][5] ) );
  NAND2X1 U206 ( .A(n140), .B(n110), .Y(n141) );
  XOR2X1 U207 ( .A(n1), .B(n141), .Y(\u_div/SumTmp[11][1] ) );
  NOR2X1 U208 ( .A(n145), .B(n113), .Y(n142) );
  XOR2X1 U209 ( .A(n143), .B(n142), .Y(\u_div/SumTmp[11][2] ) );
  OAI21X1 U210 ( .A(n145), .B(n109), .C(n144), .Y(n149) );
  NOR2X1 U211 ( .A(n147), .B(n115), .Y(n148) );
  XOR2X1 U212 ( .A(n149), .B(n148), .Y(\u_div/SumTmp[11][3] ) );
  NOR2X1 U213 ( .A(n151), .B(n117), .Y(n152) );
  XNOR2X1 U214 ( .A(n153), .B(n152), .Y(\u_div/SumTmp[11][4] ) );
  NOR2X1 U215 ( .A(n121), .B(\u_div/BInv [1]), .Y(n157) );
  NAND2X1 U216 ( .A(\u_div/BInv [1]), .B(n121), .Y(n158) );
  OAI21X1 U217 ( .A(n157), .B(n2), .C(n158), .Y(n163) );
  NOR2X1 U218 ( .A(n127), .B(\u_div/BInv [3]), .Y(n164) );
  NAND2X1 U219 ( .A(\u_div/BInv [2]), .B(n125), .Y(n160) );
  NAND2X1 U220 ( .A(\u_div/BInv [3]), .B(n127), .Y(n165) );
  OAI21X1 U221 ( .A(n164), .B(n160), .C(n165), .Y(n155) );
  NOR2X1 U222 ( .A(n125), .B(\u_div/BInv [2]), .Y(n162) );
  OAI21X1 U223 ( .A(n164), .B(n162), .C(n122), .Y(n154) );
  OAI21X1 U224 ( .A(n163), .B(n155), .C(n154), .Y(n156) );
  NAND2X1 U225 ( .A(n158), .B(n120), .Y(n159) );
  XOR2X1 U226 ( .A(n2), .B(n159), .Y(\u_div/SumTmp[12][1] ) );
  NOR2X1 U227 ( .A(n162), .B(n123), .Y(n161) );
  XOR2X1 U228 ( .A(n163), .B(n161), .Y(\u_div/SumTmp[12][2] ) );
  OAI21X1 U229 ( .A(n123), .B(n163), .C(n124), .Y(n167) );
  NAND2X1 U230 ( .A(n165), .B(n126), .Y(n166) );
  XOR2X1 U231 ( .A(n167), .B(n166), .Y(\u_div/SumTmp[12][3] ) );
  OR2X1 U232 ( .A(n129), .B(\u_div/BInv [1]), .Y(n168) );
  NAND2X1 U233 ( .A(\u_div/BInv [1]), .B(n129), .Y(n169) );
  AOI21X1 U234 ( .A(n168), .B(\u_div/CryTmp[13][1] ), .C(n128), .Y(n174) );
  NAND2X1 U235 ( .A(\u_div/BInv [2]), .B(n131), .Y(n171) );
  NOR2X1 U236 ( .A(n131), .B(\u_div/BInv [2]), .Y(n172) );
  AOI21X1 U237 ( .A(n174), .B(n171), .C(n172), .Y(\u_div/CryTmp[13][3] ) );
  NAND2X1 U238 ( .A(n169), .B(n168), .Y(n170) );
  XNOR2X1 U239 ( .A(\u_div/CryTmp[13][1] ), .B(n170), .Y(\u_div/SumTmp[13][1] ) );
  NOR2X1 U240 ( .A(n172), .B(n130), .Y(n173) );
  XNOR2X1 U241 ( .A(n174), .B(n173), .Y(\u_div/SumTmp[13][2] ) );
  NOR2X1 U242 ( .A(n134), .B(\u_div/BInv [1]), .Y(n175) );
  NAND2X1 U243 ( .A(\u_div/BInv [1]), .B(n134), .Y(n176) );
  OAI21X1 U244 ( .A(n175), .B(n132), .C(n176), .Y(\u_div/CryTmp[14][2] ) );
  NAND2X1 U245 ( .A(n176), .B(n133), .Y(n177) );
  XNOR2X1 U246 ( .A(\u_div/CryTmp[14][1] ), .B(n177), .Y(\u_div/SumTmp[14][1] ) );
  XOR2X1 U247 ( .A(\u_div/CryTmp[9][16] ), .B(n136), .Y(\u_div/QInv [9]) );
  XOR2X1 U248 ( .A(\u_div/CryTmp[8][16] ), .B(n136), .Y(\u_div/QInv [8]) );
  XOR2X1 U249 ( .A(\u_div/CryTmp[7][16] ), .B(n136), .Y(\u_div/QInv [7]) );
  XOR2X1 U250 ( .A(\u_div/CryTmp[6][16] ), .B(n136), .Y(\u_div/QInv [6]) );
  XOR2X1 U251 ( .A(\u_div/CryTmp[5][16] ), .B(n136), .Y(\u_div/QInv [5]) );
  XOR2X1 U252 ( .A(\u_div/CryTmp[4][16] ), .B(n136), .Y(\u_div/QInv [4]) );
  XOR2X1 U253 ( .A(\u_div/CryTmp[3][16] ), .B(n136), .Y(\u_div/QInv [3]) );
  XOR2X1 U254 ( .A(\u_div/CryTmp[2][16] ), .B(n136), .Y(\u_div/QInv [2]) );
  XOR2X1 U255 ( .A(\u_div/CryTmp[1][16] ), .B(n136), .Y(\u_div/QInv [1]) );
  XOR2X1 U256 ( .A(n299), .B(n300), .Y(\u_div/QInv [15]) );
  XOR2X1 U257 ( .A(\u_div/CryTmp[14][16] ), .B(n136), .Y(\u_div/QInv [14]) );
  XOR2X1 U258 ( .A(\u_div/CryTmp[13][16] ), .B(n136), .Y(\u_div/QInv [13]) );
  XOR2X1 U259 ( .A(\u_div/CryTmp[12][16] ), .B(n136), .Y(\u_div/QInv [12]) );
  XOR2X1 U260 ( .A(\u_div/CryTmp[11][16] ), .B(n136), .Y(\u_div/QInv [11]) );
  XOR2X1 U261 ( .A(\u_div/CryTmp[10][16] ), .B(n136), .Y(\u_div/QInv [10]) );
  XOR2X1 U262 ( .A(\u_div/QAbs_0 ), .B(n136), .Y(\u_div/QInv [0]) );
  AND2X1 U263 ( .A(n301), .B(n136), .Y(\u_div/QIncCI ) );
  NAND3X1 U264 ( .A(n302), .B(n301), .C(\u_div/CryTmp[15][1] ), .Y(n299) );
  AND2X1 U265 ( .A(n303), .B(\u_div/BInv [1]), .Y(n302) );
  AND2X1 U266 ( .A(\u_div/CryTmp[9][7] ), .B(n304), .Y(\u_div/CryTmp[9][16] )
         );
  AND2X1 U267 ( .A(\u_div/CryTmp[8][8] ), .B(n305), .Y(\u_div/CryTmp[8][16] )
         );
  AND2X1 U268 ( .A(\u_div/CryTmp[7][9] ), .B(n306), .Y(\u_div/CryTmp[7][16] )
         );
  AND2X1 U269 ( .A(\u_div/CryTmp[14][2] ), .B(n303), .Y(\u_div/CryTmp[14][16] ) );
  AND2X1 U270 ( .A(n311), .B(\u_div/BInv [2]), .Y(n303) );
  AND2X1 U271 ( .A(\u_div/CryTmp[13][3] ), .B(n311), .Y(\u_div/CryTmp[13][16] ) );
  AND2X1 U272 ( .A(n312), .B(\u_div/BInv [3]), .Y(n311) );
  AND2X1 U273 ( .A(n119), .B(n312), .Y(\u_div/CryTmp[12][16] ) );
  AND2X1 U274 ( .A(n313), .B(\u_div/BInv [4]), .Y(n312) );
  AND2X1 U275 ( .A(\u_div/CryTmp[11][5] ), .B(n313), .Y(\u_div/CryTmp[11][16] ) );
  AND2X1 U276 ( .A(n314), .B(\u_div/BInv [5]), .Y(n313) );
  AND2X1 U277 ( .A(\u_div/CryTmp[10][6] ), .B(n314), .Y(\u_div/CryTmp[10][16] ) );
  AND2X1 U278 ( .A(\u_div/BInv [6]), .B(n304), .Y(n314) );
  AND2X1 U279 ( .A(n305), .B(\u_div/BInv [7]), .Y(n304) );
  AND2X1 U280 ( .A(n306), .B(\u_div/BInv [8]), .Y(n305) );
  AND2X1 U281 ( .A(n307), .B(\u_div/BInv [9]), .Y(n306) );
  AND2X1 U282 ( .A(n308), .B(\u_div/BInv [10]), .Y(n307) );
  AND2X1 U283 ( .A(n309), .B(\u_div/BInv [11]), .Y(n308) );
  AND2X1 U284 ( .A(n310), .B(\u_div/BInv [12]), .Y(n309) );
  AND2X1 U285 ( .A(\u_div/BInv [14]), .B(\u_div/BInv [13]), .Y(n310) );
endmodule


module z_interpolation_DW01_add_11 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n3, n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(n3) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  BUFX2 U2 ( .A(n3), .Y(SUM[15]) );
  XOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module z_interpolation_DW01_add_12 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module z_interpolation_DW_mult_tc_3 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n443;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n358), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n21), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n51), .Y(n18) );
  XOR2X1 U21 ( .A(n23), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n53), .B(n55), .Y(n20) );
  XOR2X1 U23 ( .A(n25), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n57), .B(n27), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n59), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n29), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n33), .B(n41), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n35), .Y(n30) );
  XOR2X1 U33 ( .A(n246), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n443), .B(n270), .Y(n32) );
  XOR2X1 U35 ( .A(n261), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n280), .B(n291), .Y(n34) );
  XOR2X1 U37 ( .A(n235), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n231), .B(n228), .Y(n36) );
  XOR2X1 U39 ( .A(n240), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n303), .B(n226), .Y(n38) );
  XOR2X1 U41 ( .A(n253), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n225), .B(n316), .Y(n40) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n345), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n346), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n347), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n348), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n349), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n350), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n351), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n352), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n353), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n354), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n355), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n356), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n357), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n373), .B(n374), .Y(n225) );
  NOR2X1 U136 ( .A(n375), .B(n372), .Y(n226) );
  NOR2X1 U137 ( .A(n375), .B(n373), .Y(n227) );
  NOR2X1 U138 ( .A(n376), .B(n371), .Y(n228) );
  NOR2X1 U139 ( .A(n376), .B(n372), .Y(n229) );
  NOR2X1 U140 ( .A(n376), .B(n373), .Y(n230) );
  NOR2X1 U141 ( .A(n377), .B(n370), .Y(n231) );
  NOR2X1 U142 ( .A(n377), .B(n371), .Y(n232) );
  NOR2X1 U143 ( .A(n377), .B(n372), .Y(n233) );
  NOR2X1 U144 ( .A(n377), .B(n373), .Y(n234) );
  NOR2X1 U145 ( .A(n378), .B(n369), .Y(n235) );
  NOR2X1 U146 ( .A(n378), .B(n370), .Y(n236) );
  NOR2X1 U147 ( .A(n378), .B(n371), .Y(n237) );
  NOR2X1 U148 ( .A(n378), .B(n372), .Y(n238) );
  NOR2X1 U149 ( .A(n378), .B(n373), .Y(n239) );
  NOR2X1 U150 ( .A(n379), .B(n368), .Y(n240) );
  NOR2X1 U151 ( .A(n379), .B(n369), .Y(n241) );
  NOR2X1 U152 ( .A(n379), .B(n370), .Y(n242) );
  NOR2X1 U153 ( .A(n379), .B(n371), .Y(n243) );
  NOR2X1 U154 ( .A(n379), .B(n372), .Y(n244) );
  NOR2X1 U155 ( .A(n379), .B(n373), .Y(n245) );
  NOR2X1 U156 ( .A(n380), .B(n367), .Y(n246) );
  NOR2X1 U157 ( .A(n380), .B(n368), .Y(n247) );
  NOR2X1 U158 ( .A(n380), .B(n369), .Y(n248) );
  NOR2X1 U159 ( .A(n380), .B(n370), .Y(n249) );
  NOR2X1 U160 ( .A(n380), .B(n371), .Y(n250) );
  NOR2X1 U161 ( .A(n380), .B(n372), .Y(n251) );
  NOR2X1 U162 ( .A(n380), .B(n373), .Y(n252) );
  NOR2X1 U163 ( .A(n381), .B(n366), .Y(n253) );
  NOR2X1 U164 ( .A(n381), .B(n367), .Y(n254) );
  NOR2X1 U165 ( .A(n381), .B(n368), .Y(n255) );
  NOR2X1 U166 ( .A(n381), .B(n369), .Y(n256) );
  NOR2X1 U167 ( .A(n381), .B(n370), .Y(n257) );
  NOR2X1 U168 ( .A(n381), .B(n371), .Y(n258) );
  NOR2X1 U169 ( .A(n381), .B(n372), .Y(n259) );
  NOR2X1 U170 ( .A(n381), .B(n373), .Y(n260) );
  NOR2X1 U171 ( .A(n382), .B(n365), .Y(n261) );
  NOR2X1 U172 ( .A(n382), .B(n366), .Y(n262) );
  NOR2X1 U173 ( .A(n382), .B(n367), .Y(n263) );
  NOR2X1 U174 ( .A(n382), .B(n368), .Y(n264) );
  NOR2X1 U175 ( .A(n382), .B(n369), .Y(n265) );
  NOR2X1 U176 ( .A(n382), .B(n370), .Y(n266) );
  NOR2X1 U177 ( .A(n382), .B(n371), .Y(n267) );
  NOR2X1 U178 ( .A(n382), .B(n372), .Y(n268) );
  NOR2X1 U179 ( .A(n382), .B(n373), .Y(n269) );
  NOR2X1 U180 ( .A(n383), .B(n364), .Y(n270) );
  NOR2X1 U181 ( .A(n383), .B(n365), .Y(n271) );
  NOR2X1 U182 ( .A(n383), .B(n366), .Y(n272) );
  NOR2X1 U183 ( .A(n383), .B(n367), .Y(n273) );
  NOR2X1 U184 ( .A(n383), .B(n368), .Y(n274) );
  NOR2X1 U185 ( .A(n383), .B(n369), .Y(n275) );
  NOR2X1 U186 ( .A(n383), .B(n370), .Y(n276) );
  NOR2X1 U187 ( .A(n383), .B(n371), .Y(n277) );
  NOR2X1 U188 ( .A(n383), .B(n372), .Y(n278) );
  NOR2X1 U189 ( .A(n383), .B(n373), .Y(n279) );
  NOR2X1 U190 ( .A(n384), .B(n363), .Y(n280) );
  NOR2X1 U191 ( .A(n384), .B(n364), .Y(n281) );
  NOR2X1 U192 ( .A(n384), .B(n365), .Y(n282) );
  NOR2X1 U193 ( .A(n384), .B(n366), .Y(n283) );
  NOR2X1 U194 ( .A(n384), .B(n367), .Y(n284) );
  NOR2X1 U195 ( .A(n384), .B(n368), .Y(n285) );
  NOR2X1 U196 ( .A(n384), .B(n369), .Y(n286) );
  NOR2X1 U197 ( .A(n384), .B(n370), .Y(n287) );
  NOR2X1 U198 ( .A(n384), .B(n371), .Y(n288) );
  NOR2X1 U199 ( .A(n384), .B(n372), .Y(n289) );
  NOR2X1 U200 ( .A(n384), .B(n373), .Y(n290) );
  NOR2X1 U201 ( .A(n385), .B(n362), .Y(n291) );
  NOR2X1 U202 ( .A(n385), .B(n363), .Y(n292) );
  NOR2X1 U203 ( .A(n385), .B(n364), .Y(n293) );
  NOR2X1 U204 ( .A(n385), .B(n365), .Y(n294) );
  NOR2X1 U205 ( .A(n385), .B(n366), .Y(n295) );
  NOR2X1 U206 ( .A(n385), .B(n367), .Y(n296) );
  NOR2X1 U207 ( .A(n385), .B(n368), .Y(n297) );
  NOR2X1 U208 ( .A(n385), .B(n369), .Y(n298) );
  NOR2X1 U209 ( .A(n385), .B(n370), .Y(n299) );
  NOR2X1 U210 ( .A(n385), .B(n371), .Y(n300) );
  NOR2X1 U211 ( .A(n385), .B(n372), .Y(n301) );
  NOR2X1 U212 ( .A(n385), .B(n373), .Y(n302) );
  NOR2X1 U213 ( .A(n386), .B(n361), .Y(n303) );
  NOR2X1 U214 ( .A(n386), .B(n362), .Y(n304) );
  NOR2X1 U215 ( .A(n386), .B(n363), .Y(n305) );
  NOR2X1 U216 ( .A(n386), .B(n364), .Y(n306) );
  NOR2X1 U217 ( .A(n386), .B(n365), .Y(n307) );
  NOR2X1 U218 ( .A(n386), .B(n366), .Y(n308) );
  NOR2X1 U219 ( .A(n386), .B(n367), .Y(n309) );
  NOR2X1 U220 ( .A(n386), .B(n368), .Y(n310) );
  NOR2X1 U221 ( .A(n386), .B(n369), .Y(n311) );
  NOR2X1 U222 ( .A(n386), .B(n370), .Y(n312) );
  NOR2X1 U223 ( .A(n386), .B(n371), .Y(n313) );
  NOR2X1 U224 ( .A(n386), .B(n372), .Y(n314) );
  NOR2X1 U225 ( .A(n386), .B(n373), .Y(n315) );
  NOR2X1 U226 ( .A(n387), .B(n360), .Y(n316) );
  NOR2X1 U227 ( .A(n387), .B(n361), .Y(n317) );
  NOR2X1 U228 ( .A(n387), .B(n362), .Y(n318) );
  NOR2X1 U229 ( .A(n387), .B(n363), .Y(n319) );
  NOR2X1 U230 ( .A(n387), .B(n364), .Y(n320) );
  NOR2X1 U231 ( .A(n387), .B(n365), .Y(n321) );
  NOR2X1 U232 ( .A(n387), .B(n366), .Y(n322) );
  NOR2X1 U233 ( .A(n387), .B(n367), .Y(n323) );
  NOR2X1 U234 ( .A(n387), .B(n368), .Y(n324) );
  NOR2X1 U235 ( .A(n387), .B(n369), .Y(n325) );
  NOR2X1 U236 ( .A(n387), .B(n370), .Y(n326) );
  NOR2X1 U237 ( .A(n387), .B(n371), .Y(n327) );
  NOR2X1 U238 ( .A(n387), .B(n372), .Y(n328) );
  NOR2X1 U239 ( .A(n387), .B(n373), .Y(n329) );
  NOR2X1 U241 ( .A(n388), .B(n360), .Y(n331) );
  NOR2X1 U242 ( .A(n388), .B(n361), .Y(n332) );
  NOR2X1 U243 ( .A(n388), .B(n362), .Y(n333) );
  NOR2X1 U244 ( .A(n388), .B(n363), .Y(n334) );
  NOR2X1 U245 ( .A(n388), .B(n364), .Y(n335) );
  NOR2X1 U246 ( .A(n388), .B(n365), .Y(n336) );
  NOR2X1 U247 ( .A(n388), .B(n366), .Y(n337) );
  NOR2X1 U248 ( .A(n388), .B(n367), .Y(n338) );
  NOR2X1 U249 ( .A(n388), .B(n368), .Y(n339) );
  NOR2X1 U250 ( .A(n388), .B(n369), .Y(n340) );
  NOR2X1 U251 ( .A(n388), .B(n370), .Y(n341) );
  NOR2X1 U252 ( .A(n388), .B(n371), .Y(n342) );
  NOR2X1 U253 ( .A(n388), .B(n372), .Y(n343) );
  NOR2X1 U254 ( .A(n388), .B(n373), .Y(n344) );
  NOR2X1 U255 ( .A(n389), .B(n359), .Y(n345) );
  NOR2X1 U256 ( .A(n389), .B(n360), .Y(n346) );
  NOR2X1 U257 ( .A(n389), .B(n361), .Y(n347) );
  NOR2X1 U258 ( .A(n389), .B(n362), .Y(n348) );
  NOR2X1 U259 ( .A(n389), .B(n363), .Y(n349) );
  NOR2X1 U260 ( .A(n389), .B(n364), .Y(n350) );
  NOR2X1 U261 ( .A(n389), .B(n365), .Y(n351) );
  NOR2X1 U262 ( .A(n389), .B(n366), .Y(n352) );
  NOR2X1 U263 ( .A(n389), .B(n367), .Y(n353) );
  NOR2X1 U264 ( .A(n389), .B(n368), .Y(n354) );
  NOR2X1 U265 ( .A(n389), .B(n369), .Y(n355) );
  NOR2X1 U266 ( .A(n389), .B(n370), .Y(n356) );
  NOR2X1 U267 ( .A(n389), .B(n371), .Y(n357) );
  NOR2X1 U268 ( .A(n389), .B(n372), .Y(n358) );
  NOR2X1 U269 ( .A(n389), .B(n373), .Y(product[0]) );
  INVX2 U304 ( .A(b[14]), .Y(n359) );
  OR2X2 U305 ( .A(n388), .B(n359), .Y(n443) );
  INVX2 U306 ( .A(b[3]), .Y(n370) );
  INVX2 U307 ( .A(b[5]), .Y(n368) );
  INVX2 U308 ( .A(b[7]), .Y(n366) );
  INVX2 U309 ( .A(b[9]), .Y(n364) );
  INVX2 U310 ( .A(b[11]), .Y(n362) );
  INVX2 U311 ( .A(b[13]), .Y(n360) );
  INVX2 U312 ( .A(b[2]), .Y(n371) );
  INVX2 U313 ( .A(b[4]), .Y(n369) );
  INVX2 U314 ( .A(b[6]), .Y(n367) );
  INVX2 U315 ( .A(b[8]), .Y(n365) );
  INVX2 U316 ( .A(b[10]), .Y(n363) );
  INVX2 U317 ( .A(b[12]), .Y(n361) );
  INVX2 U318 ( .A(b[0]), .Y(n373) );
  INVX2 U319 ( .A(b[1]), .Y(n372) );
  INVX2 U320 ( .A(a[1]), .Y(n388) );
  INVX2 U321 ( .A(a[0]), .Y(n389) );
  INVX2 U322 ( .A(a[2]), .Y(n387) );
  INVX2 U323 ( .A(a[3]), .Y(n386) );
  INVX2 U324 ( .A(a[4]), .Y(n385) );
  INVX2 U325 ( .A(a[5]), .Y(n384) );
  INVX2 U326 ( .A(a[6]), .Y(n383) );
  INVX2 U327 ( .A(a[7]), .Y(n382) );
  INVX2 U328 ( .A(a[8]), .Y(n381) );
  INVX2 U329 ( .A(a[9]), .Y(n380) );
  INVX2 U330 ( .A(a[10]), .Y(n379) );
  INVX2 U331 ( .A(a[11]), .Y(n378) );
  INVX2 U332 ( .A(a[12]), .Y(n377) );
  INVX2 U333 ( .A(a[13]), .Y(n376) );
  INVX2 U334 ( .A(a[14]), .Y(n375) );
  INVX2 U335 ( .A(a[15]), .Y(n374) );
endmodule


module z_interpolation_DW_mult_tc_4 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n443;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n358), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n21), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n51), .Y(n18) );
  XOR2X1 U21 ( .A(n23), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n53), .B(n55), .Y(n20) );
  XOR2X1 U23 ( .A(n25), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n57), .B(n27), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n59), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n29), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n33), .B(n41), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n35), .Y(n30) );
  XOR2X1 U33 ( .A(n246), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n443), .B(n270), .Y(n32) );
  XOR2X1 U35 ( .A(n261), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n280), .B(n291), .Y(n34) );
  XOR2X1 U37 ( .A(n235), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n231), .B(n228), .Y(n36) );
  XOR2X1 U39 ( .A(n240), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n303), .B(n226), .Y(n38) );
  XOR2X1 U41 ( .A(n253), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n225), .B(n316), .Y(n40) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n345), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n346), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n347), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n348), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n349), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n350), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n351), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n352), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n353), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n354), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n355), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n356), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n357), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n373), .B(n374), .Y(n225) );
  NOR2X1 U136 ( .A(n375), .B(n372), .Y(n226) );
  NOR2X1 U137 ( .A(n375), .B(n373), .Y(n227) );
  NOR2X1 U138 ( .A(n376), .B(n371), .Y(n228) );
  NOR2X1 U139 ( .A(n376), .B(n372), .Y(n229) );
  NOR2X1 U140 ( .A(n376), .B(n373), .Y(n230) );
  NOR2X1 U141 ( .A(n377), .B(n370), .Y(n231) );
  NOR2X1 U142 ( .A(n377), .B(n371), .Y(n232) );
  NOR2X1 U143 ( .A(n377), .B(n372), .Y(n233) );
  NOR2X1 U144 ( .A(n377), .B(n373), .Y(n234) );
  NOR2X1 U145 ( .A(n378), .B(n369), .Y(n235) );
  NOR2X1 U146 ( .A(n378), .B(n370), .Y(n236) );
  NOR2X1 U147 ( .A(n378), .B(n371), .Y(n237) );
  NOR2X1 U148 ( .A(n378), .B(n372), .Y(n238) );
  NOR2X1 U149 ( .A(n378), .B(n373), .Y(n239) );
  NOR2X1 U150 ( .A(n379), .B(n368), .Y(n240) );
  NOR2X1 U151 ( .A(n379), .B(n369), .Y(n241) );
  NOR2X1 U152 ( .A(n379), .B(n370), .Y(n242) );
  NOR2X1 U153 ( .A(n379), .B(n371), .Y(n243) );
  NOR2X1 U154 ( .A(n379), .B(n372), .Y(n244) );
  NOR2X1 U155 ( .A(n379), .B(n373), .Y(n245) );
  NOR2X1 U156 ( .A(n380), .B(n367), .Y(n246) );
  NOR2X1 U157 ( .A(n380), .B(n368), .Y(n247) );
  NOR2X1 U158 ( .A(n380), .B(n369), .Y(n248) );
  NOR2X1 U159 ( .A(n380), .B(n370), .Y(n249) );
  NOR2X1 U160 ( .A(n380), .B(n371), .Y(n250) );
  NOR2X1 U161 ( .A(n380), .B(n372), .Y(n251) );
  NOR2X1 U162 ( .A(n380), .B(n373), .Y(n252) );
  NOR2X1 U163 ( .A(n381), .B(n366), .Y(n253) );
  NOR2X1 U164 ( .A(n381), .B(n367), .Y(n254) );
  NOR2X1 U165 ( .A(n381), .B(n368), .Y(n255) );
  NOR2X1 U166 ( .A(n381), .B(n369), .Y(n256) );
  NOR2X1 U167 ( .A(n381), .B(n370), .Y(n257) );
  NOR2X1 U168 ( .A(n381), .B(n371), .Y(n258) );
  NOR2X1 U169 ( .A(n381), .B(n372), .Y(n259) );
  NOR2X1 U170 ( .A(n381), .B(n373), .Y(n260) );
  NOR2X1 U171 ( .A(n382), .B(n365), .Y(n261) );
  NOR2X1 U172 ( .A(n382), .B(n366), .Y(n262) );
  NOR2X1 U173 ( .A(n382), .B(n367), .Y(n263) );
  NOR2X1 U174 ( .A(n382), .B(n368), .Y(n264) );
  NOR2X1 U175 ( .A(n382), .B(n369), .Y(n265) );
  NOR2X1 U176 ( .A(n382), .B(n370), .Y(n266) );
  NOR2X1 U177 ( .A(n382), .B(n371), .Y(n267) );
  NOR2X1 U178 ( .A(n382), .B(n372), .Y(n268) );
  NOR2X1 U179 ( .A(n382), .B(n373), .Y(n269) );
  NOR2X1 U180 ( .A(n383), .B(n364), .Y(n270) );
  NOR2X1 U181 ( .A(n383), .B(n365), .Y(n271) );
  NOR2X1 U182 ( .A(n383), .B(n366), .Y(n272) );
  NOR2X1 U183 ( .A(n383), .B(n367), .Y(n273) );
  NOR2X1 U184 ( .A(n383), .B(n368), .Y(n274) );
  NOR2X1 U185 ( .A(n383), .B(n369), .Y(n275) );
  NOR2X1 U186 ( .A(n383), .B(n370), .Y(n276) );
  NOR2X1 U187 ( .A(n383), .B(n371), .Y(n277) );
  NOR2X1 U188 ( .A(n383), .B(n372), .Y(n278) );
  NOR2X1 U189 ( .A(n383), .B(n373), .Y(n279) );
  NOR2X1 U190 ( .A(n384), .B(n363), .Y(n280) );
  NOR2X1 U191 ( .A(n384), .B(n364), .Y(n281) );
  NOR2X1 U192 ( .A(n384), .B(n365), .Y(n282) );
  NOR2X1 U193 ( .A(n384), .B(n366), .Y(n283) );
  NOR2X1 U194 ( .A(n384), .B(n367), .Y(n284) );
  NOR2X1 U195 ( .A(n384), .B(n368), .Y(n285) );
  NOR2X1 U196 ( .A(n384), .B(n369), .Y(n286) );
  NOR2X1 U197 ( .A(n384), .B(n370), .Y(n287) );
  NOR2X1 U198 ( .A(n384), .B(n371), .Y(n288) );
  NOR2X1 U199 ( .A(n384), .B(n372), .Y(n289) );
  NOR2X1 U200 ( .A(n384), .B(n373), .Y(n290) );
  NOR2X1 U201 ( .A(n385), .B(n362), .Y(n291) );
  NOR2X1 U202 ( .A(n385), .B(n363), .Y(n292) );
  NOR2X1 U203 ( .A(n385), .B(n364), .Y(n293) );
  NOR2X1 U204 ( .A(n385), .B(n365), .Y(n294) );
  NOR2X1 U205 ( .A(n385), .B(n366), .Y(n295) );
  NOR2X1 U206 ( .A(n385), .B(n367), .Y(n296) );
  NOR2X1 U207 ( .A(n385), .B(n368), .Y(n297) );
  NOR2X1 U208 ( .A(n385), .B(n369), .Y(n298) );
  NOR2X1 U209 ( .A(n385), .B(n370), .Y(n299) );
  NOR2X1 U210 ( .A(n385), .B(n371), .Y(n300) );
  NOR2X1 U211 ( .A(n385), .B(n372), .Y(n301) );
  NOR2X1 U212 ( .A(n385), .B(n373), .Y(n302) );
  NOR2X1 U213 ( .A(n386), .B(n361), .Y(n303) );
  NOR2X1 U214 ( .A(n386), .B(n362), .Y(n304) );
  NOR2X1 U215 ( .A(n386), .B(n363), .Y(n305) );
  NOR2X1 U216 ( .A(n386), .B(n364), .Y(n306) );
  NOR2X1 U217 ( .A(n386), .B(n365), .Y(n307) );
  NOR2X1 U218 ( .A(n386), .B(n366), .Y(n308) );
  NOR2X1 U219 ( .A(n386), .B(n367), .Y(n309) );
  NOR2X1 U220 ( .A(n386), .B(n368), .Y(n310) );
  NOR2X1 U221 ( .A(n386), .B(n369), .Y(n311) );
  NOR2X1 U222 ( .A(n386), .B(n370), .Y(n312) );
  NOR2X1 U223 ( .A(n386), .B(n371), .Y(n313) );
  NOR2X1 U224 ( .A(n386), .B(n372), .Y(n314) );
  NOR2X1 U225 ( .A(n386), .B(n373), .Y(n315) );
  NOR2X1 U226 ( .A(n387), .B(n360), .Y(n316) );
  NOR2X1 U227 ( .A(n387), .B(n361), .Y(n317) );
  NOR2X1 U228 ( .A(n387), .B(n362), .Y(n318) );
  NOR2X1 U229 ( .A(n387), .B(n363), .Y(n319) );
  NOR2X1 U230 ( .A(n387), .B(n364), .Y(n320) );
  NOR2X1 U231 ( .A(n387), .B(n365), .Y(n321) );
  NOR2X1 U232 ( .A(n387), .B(n366), .Y(n322) );
  NOR2X1 U233 ( .A(n387), .B(n367), .Y(n323) );
  NOR2X1 U234 ( .A(n387), .B(n368), .Y(n324) );
  NOR2X1 U235 ( .A(n387), .B(n369), .Y(n325) );
  NOR2X1 U236 ( .A(n387), .B(n370), .Y(n326) );
  NOR2X1 U237 ( .A(n387), .B(n371), .Y(n327) );
  NOR2X1 U238 ( .A(n387), .B(n372), .Y(n328) );
  NOR2X1 U239 ( .A(n387), .B(n373), .Y(n329) );
  NOR2X1 U241 ( .A(n388), .B(n360), .Y(n331) );
  NOR2X1 U242 ( .A(n388), .B(n361), .Y(n332) );
  NOR2X1 U243 ( .A(n388), .B(n362), .Y(n333) );
  NOR2X1 U244 ( .A(n388), .B(n363), .Y(n334) );
  NOR2X1 U245 ( .A(n388), .B(n364), .Y(n335) );
  NOR2X1 U246 ( .A(n388), .B(n365), .Y(n336) );
  NOR2X1 U247 ( .A(n388), .B(n366), .Y(n337) );
  NOR2X1 U248 ( .A(n388), .B(n367), .Y(n338) );
  NOR2X1 U249 ( .A(n388), .B(n368), .Y(n339) );
  NOR2X1 U250 ( .A(n388), .B(n369), .Y(n340) );
  NOR2X1 U251 ( .A(n388), .B(n370), .Y(n341) );
  NOR2X1 U252 ( .A(n388), .B(n371), .Y(n342) );
  NOR2X1 U253 ( .A(n388), .B(n372), .Y(n343) );
  NOR2X1 U254 ( .A(n388), .B(n373), .Y(n344) );
  NOR2X1 U255 ( .A(n389), .B(n359), .Y(n345) );
  NOR2X1 U256 ( .A(n389), .B(n360), .Y(n346) );
  NOR2X1 U257 ( .A(n389), .B(n361), .Y(n347) );
  NOR2X1 U258 ( .A(n389), .B(n362), .Y(n348) );
  NOR2X1 U259 ( .A(n389), .B(n363), .Y(n349) );
  NOR2X1 U260 ( .A(n389), .B(n364), .Y(n350) );
  NOR2X1 U261 ( .A(n389), .B(n365), .Y(n351) );
  NOR2X1 U262 ( .A(n389), .B(n366), .Y(n352) );
  NOR2X1 U263 ( .A(n389), .B(n367), .Y(n353) );
  NOR2X1 U264 ( .A(n389), .B(n368), .Y(n354) );
  NOR2X1 U265 ( .A(n389), .B(n369), .Y(n355) );
  NOR2X1 U266 ( .A(n389), .B(n370), .Y(n356) );
  NOR2X1 U267 ( .A(n389), .B(n371), .Y(n357) );
  NOR2X1 U268 ( .A(n389), .B(n372), .Y(n358) );
  NOR2X1 U269 ( .A(n389), .B(n373), .Y(product[0]) );
  INVX2 U304 ( .A(b[14]), .Y(n359) );
  OR2X2 U305 ( .A(n388), .B(n359), .Y(n443) );
  INVX2 U306 ( .A(b[3]), .Y(n370) );
  INVX2 U307 ( .A(b[5]), .Y(n368) );
  INVX2 U308 ( .A(b[7]), .Y(n366) );
  INVX2 U309 ( .A(b[9]), .Y(n364) );
  INVX2 U310 ( .A(b[11]), .Y(n362) );
  INVX2 U311 ( .A(b[13]), .Y(n360) );
  INVX2 U312 ( .A(b[2]), .Y(n371) );
  INVX2 U313 ( .A(b[4]), .Y(n369) );
  INVX2 U314 ( .A(b[6]), .Y(n367) );
  INVX2 U315 ( .A(b[8]), .Y(n365) );
  INVX2 U316 ( .A(b[10]), .Y(n363) );
  INVX2 U317 ( .A(b[12]), .Y(n361) );
  INVX2 U318 ( .A(b[0]), .Y(n373) );
  INVX2 U319 ( .A(b[1]), .Y(n372) );
  INVX2 U320 ( .A(a[1]), .Y(n388) );
  INVX2 U321 ( .A(a[0]), .Y(n389) );
  INVX2 U322 ( .A(a[2]), .Y(n387) );
  INVX2 U323 ( .A(a[3]), .Y(n386) );
  INVX2 U324 ( .A(a[4]), .Y(n385) );
  INVX2 U325 ( .A(a[5]), .Y(n384) );
  INVX2 U326 ( .A(a[6]), .Y(n383) );
  INVX2 U327 ( .A(a[7]), .Y(n382) );
  INVX2 U328 ( .A(a[8]), .Y(n381) );
  INVX2 U329 ( .A(a[9]), .Y(n380) );
  INVX2 U330 ( .A(a[10]), .Y(n379) );
  INVX2 U331 ( .A(a[11]), .Y(n378) );
  INVX2 U332 ( .A(a[12]), .Y(n377) );
  INVX2 U333 ( .A(a[13]), .Y(n376) );
  INVX2 U334 ( .A(a[14]), .Y(n375) );
  INVX2 U335 ( .A(a[15]), .Y(n374) );
endmodule


module z_interpolation_DW_mult_tc_5 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n443;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[15]) );
  XOR2X1 U2 ( .A(n43), .B(n17), .Y(n1) );
  FAX1 U3 ( .A(n69), .B(n44), .C(n3), .YC(n2), .YS(product[14]) );
  FAX1 U4 ( .A(n93), .B(n70), .C(n4), .YC(n3), .YS(product[13]) );
  FAX1 U5 ( .A(n115), .B(n94), .C(n5), .YC(n4), .YS(product[12]) );
  FAX1 U6 ( .A(n135), .B(n116), .C(n6), .YC(n5), .YS(product[11]) );
  FAX1 U7 ( .A(n153), .B(n136), .C(n7), .YC(n6), .YS(product[10]) );
  FAX1 U8 ( .A(n169), .B(n154), .C(n8), .YC(n7), .YS(product[9]) );
  FAX1 U9 ( .A(n183), .B(n170), .C(n9), .YC(n8), .YS(product[8]) );
  FAX1 U10 ( .A(n195), .B(n184), .C(n10), .YC(n9), .YS(product[7]) );
  FAX1 U11 ( .A(n205), .B(n196), .C(n11), .YC(n10), .YS(product[6]) );
  FAX1 U12 ( .A(n213), .B(n206), .C(n12), .YC(n11), .YS(product[5]) );
  FAX1 U13 ( .A(n219), .B(n214), .C(n13), .YC(n12), .YS(product[4]) );
  FAX1 U14 ( .A(n222), .B(n220), .C(n14), .YC(n13), .YS(product[3]) );
  FAX1 U15 ( .A(n329), .B(n15), .C(n224), .YC(n14), .YS(product[2]) );
  HAX1 U16 ( .A(n344), .B(n358), .YC(n15), .YS(product[1]) );
  XOR2X1 U17 ( .A(n19), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n45), .B(n47), .Y(n16) );
  XOR2X1 U19 ( .A(n21), .B(n18), .Y(n19) );
  XOR2X1 U20 ( .A(n49), .B(n51), .Y(n18) );
  XOR2X1 U21 ( .A(n23), .B(n20), .Y(n21) );
  XOR2X1 U22 ( .A(n53), .B(n55), .Y(n20) );
  XOR2X1 U23 ( .A(n25), .B(n22), .Y(n23) );
  XOR2X1 U24 ( .A(n57), .B(n27), .Y(n22) );
  XOR2X1 U25 ( .A(n65), .B(n24), .Y(n25) );
  XOR2X1 U26 ( .A(n59), .B(n63), .Y(n24) );
  XOR2X1 U27 ( .A(n31), .B(n26), .Y(n27) );
  XOR2X1 U28 ( .A(n29), .B(n61), .Y(n26) );
  XOR2X1 U29 ( .A(n39), .B(n28), .Y(n29) );
  XOR2X1 U30 ( .A(n33), .B(n41), .Y(n28) );
  XOR2X1 U31 ( .A(n37), .B(n30), .Y(n31) );
  XOR2X1 U32 ( .A(n67), .B(n35), .Y(n30) );
  XOR2X1 U33 ( .A(n246), .B(n32), .Y(n33) );
  XOR2X1 U34 ( .A(n443), .B(n270), .Y(n32) );
  XOR2X1 U35 ( .A(n261), .B(n34), .Y(n35) );
  XOR2X1 U36 ( .A(n280), .B(n291), .Y(n34) );
  XOR2X1 U37 ( .A(n235), .B(n36), .Y(n37) );
  XOR2X1 U38 ( .A(n231), .B(n228), .Y(n36) );
  XOR2X1 U39 ( .A(n240), .B(n38), .Y(n39) );
  XOR2X1 U40 ( .A(n303), .B(n226), .Y(n38) );
  XOR2X1 U41 ( .A(n253), .B(n40), .Y(n41) );
  XOR2X1 U42 ( .A(n225), .B(n316), .Y(n40) );
  FAX1 U44 ( .A(n48), .B(n71), .C(n46), .YC(n43), .YS(n44) );
  FAX1 U45 ( .A(n75), .B(n50), .C(n73), .YC(n45), .YS(n46) );
  FAX1 U46 ( .A(n54), .B(n56), .C(n52), .YC(n47), .YS(n48) );
  FAX1 U47 ( .A(n81), .B(n79), .C(n77), .YC(n49), .YS(n50) );
  FAX1 U48 ( .A(n64), .B(n62), .C(n58), .YC(n51), .YS(n52) );
  FAX1 U49 ( .A(n89), .B(n87), .C(n66), .YC(n53), .YS(n54) );
  FAX1 U50 ( .A(n85), .B(n83), .C(n60), .YC(n55), .YS(n56) );
  FAX1 U51 ( .A(n292), .B(n91), .C(n68), .YC(n57), .YS(n58) );
  FAX1 U52 ( .A(n304), .B(n254), .C(n281), .YC(n59), .YS(n60) );
  FAX1 U53 ( .A(n262), .B(n317), .C(n247), .YC(n61), .YS(n62) );
  FAX1 U54 ( .A(n271), .B(n241), .C(n331), .YC(n63), .YS(n64) );
  FAX1 U55 ( .A(n345), .B(n232), .C(n236), .YC(n65), .YS(n66) );
  HAX1 U56 ( .A(n229), .B(n227), .YC(n67), .YS(n68) );
  FAX1 U57 ( .A(n74), .B(n95), .C(n72), .YC(n69), .YS(n70) );
  FAX1 U58 ( .A(n99), .B(n76), .C(n97), .YC(n71), .YS(n72) );
  FAX1 U59 ( .A(n101), .B(n80), .C(n78), .YC(n73), .YS(n74) );
  FAX1 U60 ( .A(n105), .B(n82), .C(n103), .YC(n75), .YS(n76) );
  FAX1 U61 ( .A(n84), .B(n88), .C(n86), .YC(n77), .YS(n78) );
  FAX1 U62 ( .A(n109), .B(n107), .C(n90), .YC(n79), .YS(n80) );
  FAX1 U63 ( .A(n113), .B(n92), .C(n111), .YC(n81), .YS(n82) );
  FAX1 U64 ( .A(n305), .B(n282), .C(n293), .YC(n83), .YS(n84) );
  FAX1 U65 ( .A(n318), .B(n255), .C(n272), .YC(n85), .YS(n86) );
  FAX1 U66 ( .A(n263), .B(n242), .C(n248), .YC(n87), .YS(n88) );
  FAX1 U67 ( .A(n346), .B(n237), .C(n332), .YC(n89), .YS(n90) );
  HAX1 U68 ( .A(n233), .B(n230), .YC(n91), .YS(n92) );
  FAX1 U69 ( .A(n98), .B(n117), .C(n96), .YC(n93), .YS(n94) );
  FAX1 U70 ( .A(n102), .B(n100), .C(n119), .YC(n95), .YS(n96) );
  FAX1 U71 ( .A(n123), .B(n104), .C(n121), .YC(n97), .YS(n98) );
  FAX1 U72 ( .A(n110), .B(n106), .C(n125), .YC(n99), .YS(n100) );
  FAX1 U73 ( .A(n127), .B(n108), .C(n112), .YC(n101), .YS(n102) );
  FAX1 U74 ( .A(n114), .B(n131), .C(n129), .YC(n103), .YS(n104) );
  FAX1 U75 ( .A(n294), .B(n283), .C(n133), .YC(n105), .YS(n106) );
  FAX1 U76 ( .A(n306), .B(n256), .C(n264), .YC(n107), .YS(n108) );
  FAX1 U77 ( .A(n273), .B(n333), .C(n319), .YC(n109), .YS(n110) );
  FAX1 U78 ( .A(n347), .B(n243), .C(n249), .YC(n111), .YS(n112) );
  HAX1 U79 ( .A(n238), .B(n234), .YC(n113), .YS(n114) );
  FAX1 U80 ( .A(n120), .B(n137), .C(n118), .YC(n115), .YS(n116) );
  FAX1 U81 ( .A(n124), .B(n122), .C(n139), .YC(n117), .YS(n118) );
  FAX1 U82 ( .A(n126), .B(n143), .C(n141), .YC(n119), .YS(n120) );
  FAX1 U83 ( .A(n147), .B(n128), .C(n132), .YC(n121), .YS(n122) );
  FAX1 U84 ( .A(n149), .B(n145), .C(n130), .YC(n123), .YS(n124) );
  FAX1 U85 ( .A(n307), .B(n151), .C(n134), .YC(n125), .YS(n126) );
  FAX1 U86 ( .A(n320), .B(n284), .C(n295), .YC(n127), .YS(n128) );
  FAX1 U87 ( .A(n274), .B(n257), .C(n265), .YC(n129), .YS(n130) );
  FAX1 U88 ( .A(n348), .B(n250), .C(n334), .YC(n131), .YS(n132) );
  HAX1 U89 ( .A(n244), .B(n239), .YC(n133), .YS(n134) );
  FAX1 U90 ( .A(n140), .B(n155), .C(n138), .YC(n135), .YS(n136) );
  FAX1 U91 ( .A(n159), .B(n142), .C(n157), .YC(n137), .YS(n138) );
  FAX1 U92 ( .A(n148), .B(n161), .C(n144), .YC(n139), .YS(n140) );
  FAX1 U93 ( .A(n163), .B(n146), .C(n150), .YC(n141), .YS(n142) );
  FAX1 U94 ( .A(n167), .B(n152), .C(n165), .YC(n143), .YS(n144) );
  FAX1 U95 ( .A(n321), .B(n285), .C(n308), .YC(n145), .YS(n146) );
  FAX1 U96 ( .A(n296), .B(n335), .C(n275), .YC(n147), .YS(n148) );
  FAX1 U97 ( .A(n349), .B(n258), .C(n266), .YC(n149), .YS(n150) );
  HAX1 U98 ( .A(n251), .B(n245), .YC(n151), .YS(n152) );
  FAX1 U99 ( .A(n158), .B(n171), .C(n156), .YC(n153), .YS(n154) );
  FAX1 U100 ( .A(n175), .B(n173), .C(n160), .YC(n155), .YS(n156) );
  FAX1 U101 ( .A(n164), .B(n166), .C(n162), .YC(n157), .YS(n158) );
  FAX1 U102 ( .A(n168), .B(n179), .C(n177), .YC(n159), .YS(n160) );
  FAX1 U103 ( .A(n322), .B(n309), .C(n181), .YC(n161), .YS(n162) );
  FAX1 U104 ( .A(n286), .B(n276), .C(n297), .YC(n163), .YS(n164) );
  FAX1 U105 ( .A(n350), .B(n267), .C(n336), .YC(n165), .YS(n166) );
  HAX1 U106 ( .A(n259), .B(n252), .YC(n167), .YS(n168) );
  FAX1 U107 ( .A(n174), .B(n185), .C(n172), .YC(n169), .YS(n170) );
  FAX1 U108 ( .A(n178), .B(n176), .C(n187), .YC(n171), .YS(n172) );
  FAX1 U109 ( .A(n191), .B(n189), .C(n180), .YC(n173), .YS(n174) );
  FAX1 U110 ( .A(n310), .B(n193), .C(n182), .YC(n175), .YS(n176) );
  FAX1 U111 ( .A(n298), .B(n323), .C(n287), .YC(n177), .YS(n178) );
  FAX1 U112 ( .A(n351), .B(n277), .C(n337), .YC(n179), .YS(n180) );
  HAX1 U113 ( .A(n268), .B(n260), .YC(n181), .YS(n182) );
  FAX1 U114 ( .A(n188), .B(n197), .C(n186), .YC(n183), .YS(n184) );
  FAX1 U115 ( .A(n190), .B(n192), .C(n199), .YC(n185), .YS(n186) );
  FAX1 U116 ( .A(n203), .B(n194), .C(n201), .YC(n187), .YS(n188) );
  FAX1 U117 ( .A(n324), .B(n299), .C(n311), .YC(n189), .YS(n190) );
  FAX1 U118 ( .A(n352), .B(n288), .C(n338), .YC(n191), .YS(n192) );
  HAX1 U119 ( .A(n278), .B(n269), .YC(n193), .YS(n194) );
  FAX1 U120 ( .A(n200), .B(n207), .C(n198), .YC(n195), .YS(n196) );
  FAX1 U121 ( .A(n204), .B(n209), .C(n202), .YC(n197), .YS(n198) );
  FAX1 U122 ( .A(n325), .B(n312), .C(n211), .YC(n199), .YS(n200) );
  FAX1 U123 ( .A(n353), .B(n300), .C(n339), .YC(n201), .YS(n202) );
  HAX1 U124 ( .A(n289), .B(n279), .YC(n203), .YS(n204) );
  FAX1 U125 ( .A(n215), .B(n210), .C(n208), .YC(n205), .YS(n206) );
  FAX1 U126 ( .A(n340), .B(n217), .C(n212), .YC(n207), .YS(n208) );
  FAX1 U127 ( .A(n354), .B(n313), .C(n326), .YC(n209), .YS(n210) );
  HAX1 U128 ( .A(n301), .B(n290), .YC(n211), .YS(n212) );
  FAX1 U129 ( .A(n221), .B(n218), .C(n216), .YC(n213), .YS(n214) );
  FAX1 U130 ( .A(n355), .B(n327), .C(n341), .YC(n215), .YS(n216) );
  HAX1 U131 ( .A(n314), .B(n302), .YC(n217), .YS(n218) );
  FAX1 U132 ( .A(n356), .B(n342), .C(n223), .YC(n219), .YS(n220) );
  HAX1 U133 ( .A(n328), .B(n315), .YC(n221), .YS(n222) );
  HAX1 U134 ( .A(n357), .B(n343), .YC(n223), .YS(n224) );
  OR2X2 U135 ( .A(n373), .B(n374), .Y(n225) );
  NOR2X1 U136 ( .A(n375), .B(n372), .Y(n226) );
  NOR2X1 U137 ( .A(n375), .B(n373), .Y(n227) );
  NOR2X1 U138 ( .A(n376), .B(n371), .Y(n228) );
  NOR2X1 U139 ( .A(n376), .B(n372), .Y(n229) );
  NOR2X1 U140 ( .A(n376), .B(n373), .Y(n230) );
  NOR2X1 U141 ( .A(n377), .B(n370), .Y(n231) );
  NOR2X1 U142 ( .A(n377), .B(n371), .Y(n232) );
  NOR2X1 U143 ( .A(n377), .B(n372), .Y(n233) );
  NOR2X1 U144 ( .A(n377), .B(n373), .Y(n234) );
  NOR2X1 U145 ( .A(n378), .B(n369), .Y(n235) );
  NOR2X1 U146 ( .A(n378), .B(n370), .Y(n236) );
  NOR2X1 U147 ( .A(n378), .B(n371), .Y(n237) );
  NOR2X1 U148 ( .A(n378), .B(n372), .Y(n238) );
  NOR2X1 U149 ( .A(n378), .B(n373), .Y(n239) );
  NOR2X1 U150 ( .A(n379), .B(n368), .Y(n240) );
  NOR2X1 U151 ( .A(n379), .B(n369), .Y(n241) );
  NOR2X1 U152 ( .A(n379), .B(n370), .Y(n242) );
  NOR2X1 U153 ( .A(n379), .B(n371), .Y(n243) );
  NOR2X1 U154 ( .A(n379), .B(n372), .Y(n244) );
  NOR2X1 U155 ( .A(n379), .B(n373), .Y(n245) );
  NOR2X1 U156 ( .A(n380), .B(n367), .Y(n246) );
  NOR2X1 U157 ( .A(n380), .B(n368), .Y(n247) );
  NOR2X1 U158 ( .A(n380), .B(n369), .Y(n248) );
  NOR2X1 U159 ( .A(n380), .B(n370), .Y(n249) );
  NOR2X1 U160 ( .A(n380), .B(n371), .Y(n250) );
  NOR2X1 U161 ( .A(n380), .B(n372), .Y(n251) );
  NOR2X1 U162 ( .A(n380), .B(n373), .Y(n252) );
  NOR2X1 U163 ( .A(n381), .B(n366), .Y(n253) );
  NOR2X1 U164 ( .A(n381), .B(n367), .Y(n254) );
  NOR2X1 U165 ( .A(n381), .B(n368), .Y(n255) );
  NOR2X1 U166 ( .A(n381), .B(n369), .Y(n256) );
  NOR2X1 U167 ( .A(n381), .B(n370), .Y(n257) );
  NOR2X1 U168 ( .A(n381), .B(n371), .Y(n258) );
  NOR2X1 U169 ( .A(n381), .B(n372), .Y(n259) );
  NOR2X1 U170 ( .A(n381), .B(n373), .Y(n260) );
  NOR2X1 U171 ( .A(n382), .B(n365), .Y(n261) );
  NOR2X1 U172 ( .A(n382), .B(n366), .Y(n262) );
  NOR2X1 U173 ( .A(n382), .B(n367), .Y(n263) );
  NOR2X1 U174 ( .A(n382), .B(n368), .Y(n264) );
  NOR2X1 U175 ( .A(n382), .B(n369), .Y(n265) );
  NOR2X1 U176 ( .A(n382), .B(n370), .Y(n266) );
  NOR2X1 U177 ( .A(n382), .B(n371), .Y(n267) );
  NOR2X1 U178 ( .A(n382), .B(n372), .Y(n268) );
  NOR2X1 U179 ( .A(n382), .B(n373), .Y(n269) );
  NOR2X1 U180 ( .A(n383), .B(n364), .Y(n270) );
  NOR2X1 U181 ( .A(n383), .B(n365), .Y(n271) );
  NOR2X1 U182 ( .A(n383), .B(n366), .Y(n272) );
  NOR2X1 U183 ( .A(n383), .B(n367), .Y(n273) );
  NOR2X1 U184 ( .A(n383), .B(n368), .Y(n274) );
  NOR2X1 U185 ( .A(n383), .B(n369), .Y(n275) );
  NOR2X1 U186 ( .A(n383), .B(n370), .Y(n276) );
  NOR2X1 U187 ( .A(n383), .B(n371), .Y(n277) );
  NOR2X1 U188 ( .A(n383), .B(n372), .Y(n278) );
  NOR2X1 U189 ( .A(n383), .B(n373), .Y(n279) );
  NOR2X1 U190 ( .A(n384), .B(n363), .Y(n280) );
  NOR2X1 U191 ( .A(n384), .B(n364), .Y(n281) );
  NOR2X1 U192 ( .A(n384), .B(n365), .Y(n282) );
  NOR2X1 U193 ( .A(n384), .B(n366), .Y(n283) );
  NOR2X1 U194 ( .A(n384), .B(n367), .Y(n284) );
  NOR2X1 U195 ( .A(n384), .B(n368), .Y(n285) );
  NOR2X1 U196 ( .A(n384), .B(n369), .Y(n286) );
  NOR2X1 U197 ( .A(n384), .B(n370), .Y(n287) );
  NOR2X1 U198 ( .A(n384), .B(n371), .Y(n288) );
  NOR2X1 U199 ( .A(n384), .B(n372), .Y(n289) );
  NOR2X1 U200 ( .A(n384), .B(n373), .Y(n290) );
  NOR2X1 U201 ( .A(n385), .B(n362), .Y(n291) );
  NOR2X1 U202 ( .A(n385), .B(n363), .Y(n292) );
  NOR2X1 U203 ( .A(n385), .B(n364), .Y(n293) );
  NOR2X1 U204 ( .A(n385), .B(n365), .Y(n294) );
  NOR2X1 U205 ( .A(n385), .B(n366), .Y(n295) );
  NOR2X1 U206 ( .A(n385), .B(n367), .Y(n296) );
  NOR2X1 U207 ( .A(n385), .B(n368), .Y(n297) );
  NOR2X1 U208 ( .A(n385), .B(n369), .Y(n298) );
  NOR2X1 U209 ( .A(n385), .B(n370), .Y(n299) );
  NOR2X1 U210 ( .A(n385), .B(n371), .Y(n300) );
  NOR2X1 U211 ( .A(n385), .B(n372), .Y(n301) );
  NOR2X1 U212 ( .A(n385), .B(n373), .Y(n302) );
  NOR2X1 U213 ( .A(n386), .B(n361), .Y(n303) );
  NOR2X1 U214 ( .A(n386), .B(n362), .Y(n304) );
  NOR2X1 U215 ( .A(n386), .B(n363), .Y(n305) );
  NOR2X1 U216 ( .A(n386), .B(n364), .Y(n306) );
  NOR2X1 U217 ( .A(n386), .B(n365), .Y(n307) );
  NOR2X1 U218 ( .A(n386), .B(n366), .Y(n308) );
  NOR2X1 U219 ( .A(n386), .B(n367), .Y(n309) );
  NOR2X1 U220 ( .A(n386), .B(n368), .Y(n310) );
  NOR2X1 U221 ( .A(n386), .B(n369), .Y(n311) );
  NOR2X1 U222 ( .A(n386), .B(n370), .Y(n312) );
  NOR2X1 U223 ( .A(n386), .B(n371), .Y(n313) );
  NOR2X1 U224 ( .A(n386), .B(n372), .Y(n314) );
  NOR2X1 U225 ( .A(n386), .B(n373), .Y(n315) );
  NOR2X1 U226 ( .A(n387), .B(n360), .Y(n316) );
  NOR2X1 U227 ( .A(n387), .B(n361), .Y(n317) );
  NOR2X1 U228 ( .A(n387), .B(n362), .Y(n318) );
  NOR2X1 U229 ( .A(n387), .B(n363), .Y(n319) );
  NOR2X1 U230 ( .A(n387), .B(n364), .Y(n320) );
  NOR2X1 U231 ( .A(n387), .B(n365), .Y(n321) );
  NOR2X1 U232 ( .A(n387), .B(n366), .Y(n322) );
  NOR2X1 U233 ( .A(n387), .B(n367), .Y(n323) );
  NOR2X1 U234 ( .A(n387), .B(n368), .Y(n324) );
  NOR2X1 U235 ( .A(n387), .B(n369), .Y(n325) );
  NOR2X1 U236 ( .A(n387), .B(n370), .Y(n326) );
  NOR2X1 U237 ( .A(n387), .B(n371), .Y(n327) );
  NOR2X1 U238 ( .A(n387), .B(n372), .Y(n328) );
  NOR2X1 U239 ( .A(n387), .B(n373), .Y(n329) );
  NOR2X1 U241 ( .A(n388), .B(n360), .Y(n331) );
  NOR2X1 U242 ( .A(n388), .B(n361), .Y(n332) );
  NOR2X1 U243 ( .A(n388), .B(n362), .Y(n333) );
  NOR2X1 U244 ( .A(n388), .B(n363), .Y(n334) );
  NOR2X1 U245 ( .A(n388), .B(n364), .Y(n335) );
  NOR2X1 U246 ( .A(n388), .B(n365), .Y(n336) );
  NOR2X1 U247 ( .A(n388), .B(n366), .Y(n337) );
  NOR2X1 U248 ( .A(n388), .B(n367), .Y(n338) );
  NOR2X1 U249 ( .A(n388), .B(n368), .Y(n339) );
  NOR2X1 U250 ( .A(n388), .B(n369), .Y(n340) );
  NOR2X1 U251 ( .A(n388), .B(n370), .Y(n341) );
  NOR2X1 U252 ( .A(n388), .B(n371), .Y(n342) );
  NOR2X1 U253 ( .A(n388), .B(n372), .Y(n343) );
  NOR2X1 U254 ( .A(n388), .B(n373), .Y(n344) );
  NOR2X1 U255 ( .A(n389), .B(n359), .Y(n345) );
  NOR2X1 U256 ( .A(n389), .B(n360), .Y(n346) );
  NOR2X1 U257 ( .A(n389), .B(n361), .Y(n347) );
  NOR2X1 U258 ( .A(n389), .B(n362), .Y(n348) );
  NOR2X1 U259 ( .A(n389), .B(n363), .Y(n349) );
  NOR2X1 U260 ( .A(n389), .B(n364), .Y(n350) );
  NOR2X1 U261 ( .A(n389), .B(n365), .Y(n351) );
  NOR2X1 U262 ( .A(n389), .B(n366), .Y(n352) );
  NOR2X1 U263 ( .A(n389), .B(n367), .Y(n353) );
  NOR2X1 U264 ( .A(n389), .B(n368), .Y(n354) );
  NOR2X1 U265 ( .A(n389), .B(n369), .Y(n355) );
  NOR2X1 U266 ( .A(n389), .B(n370), .Y(n356) );
  NOR2X1 U267 ( .A(n389), .B(n371), .Y(n357) );
  NOR2X1 U268 ( .A(n389), .B(n372), .Y(n358) );
  NOR2X1 U269 ( .A(n389), .B(n373), .Y(product[0]) );
  INVX2 U304 ( .A(b[14]), .Y(n359) );
  OR2X2 U305 ( .A(n388), .B(n359), .Y(n443) );
  INVX2 U306 ( .A(b[3]), .Y(n370) );
  INVX2 U307 ( .A(b[5]), .Y(n368) );
  INVX2 U308 ( .A(b[7]), .Y(n366) );
  INVX2 U309 ( .A(b[9]), .Y(n364) );
  INVX2 U310 ( .A(b[11]), .Y(n362) );
  INVX2 U311 ( .A(b[13]), .Y(n360) );
  INVX2 U312 ( .A(b[2]), .Y(n371) );
  INVX2 U313 ( .A(b[4]), .Y(n369) );
  INVX2 U314 ( .A(b[6]), .Y(n367) );
  INVX2 U315 ( .A(b[8]), .Y(n365) );
  INVX2 U316 ( .A(b[10]), .Y(n363) );
  INVX2 U317 ( .A(b[12]), .Y(n361) );
  INVX2 U318 ( .A(b[0]), .Y(n373) );
  INVX2 U319 ( .A(b[1]), .Y(n372) );
  INVX2 U320 ( .A(a[1]), .Y(n388) );
  INVX2 U321 ( .A(a[0]), .Y(n389) );
  INVX2 U322 ( .A(a[2]), .Y(n387) );
  INVX2 U323 ( .A(a[3]), .Y(n386) );
  INVX2 U324 ( .A(a[4]), .Y(n385) );
  INVX2 U325 ( .A(a[5]), .Y(n384) );
  INVX2 U326 ( .A(a[6]), .Y(n383) );
  INVX2 U327 ( .A(a[7]), .Y(n382) );
  INVX2 U328 ( .A(a[8]), .Y(n381) );
  INVX2 U329 ( .A(a[9]), .Y(n380) );
  INVX2 U330 ( .A(a[10]), .Y(n379) );
  INVX2 U331 ( .A(a[11]), .Y(n378) );
  INVX2 U332 ( .A(a[12]), .Y(n377) );
  INVX2 U333 ( .A(a[13]), .Y(n376) );
  INVX2 U334 ( .A(a[14]), .Y(n375) );
  INVX2 U335 ( .A(a[15]), .Y(n374) );
endmodule


module z_interpolation ( .triangle({\triangle[p][x][15] , \triangle[p][x][14] , 
        \triangle[p][x][13] , \triangle[p][x][12] , \triangle[p][x][11] , 
        \triangle[p][x][10] , \triangle[p][x][9] , \triangle[p][x][8] , 
        \triangle[p][x][7] , \triangle[p][x][6] , \triangle[p][x][5] , 
        \triangle[p][x][4] , \triangle[p][x][3] , \triangle[p][x][2] , 
        \triangle[p][x][1] , \triangle[p][x][0] , \triangle[p][y][15] , 
        \triangle[p][y][14] , \triangle[p][y][13] , \triangle[p][y][12] , 
        \triangle[p][y][11] , \triangle[p][y][10] , \triangle[p][y][9] , 
        \triangle[p][y][8] , \triangle[p][y][7] , \triangle[p][y][6] , 
        \triangle[p][y][5] , \triangle[p][y][4] , \triangle[p][y][3] , 
        \triangle[p][y][2] , \triangle[p][y][1] , \triangle[p][y][0] , 
        \triangle[p][z][15] , \triangle[p][z][14] , \triangle[p][z][13] , 
        \triangle[p][z][12] , \triangle[p][z][11] , \triangle[p][z][10] , 
        \triangle[p][z][9] , \triangle[p][z][8] , \triangle[p][z][7] , 
        \triangle[p][z][6] , \triangle[p][z][5] , \triangle[p][z][4] , 
        \triangle[p][z][3] , \triangle[p][z][2] , \triangle[p][z][1] , 
        \triangle[p][z][0] , \triangle[q][x][15] , \triangle[q][x][14] , 
        \triangle[q][x][13] , \triangle[q][x][12] , \triangle[q][x][11] , 
        \triangle[q][x][10] , \triangle[q][x][9] , \triangle[q][x][8] , 
        \triangle[q][x][7] , \triangle[q][x][6] , \triangle[q][x][5] , 
        \triangle[q][x][4] , \triangle[q][x][3] , \triangle[q][x][2] , 
        \triangle[q][x][1] , \triangle[q][x][0] , \triangle[q][y][15] , 
        \triangle[q][y][14] , \triangle[q][y][13] , \triangle[q][y][12] , 
        \triangle[q][y][11] , \triangle[q][y][10] , \triangle[q][y][9] , 
        \triangle[q][y][8] , \triangle[q][y][7] , \triangle[q][y][6] , 
        \triangle[q][y][5] , \triangle[q][y][4] , \triangle[q][y][3] , 
        \triangle[q][y][2] , \triangle[q][y][1] , \triangle[q][y][0] , 
        \triangle[q][z][15] , \triangle[q][z][14] , \triangle[q][z][13] , 
        \triangle[q][z][12] , \triangle[q][z][11] , \triangle[q][z][10] , 
        \triangle[q][z][9] , \triangle[q][z][8] , \triangle[q][z][7] , 
        \triangle[q][z][6] , \triangle[q][z][5] , \triangle[q][z][4] , 
        \triangle[q][z][3] , \triangle[q][z][2] , \triangle[q][z][1] , 
        \triangle[q][z][0] , \triangle[r][x][15] , \triangle[r][x][14] , 
        \triangle[r][x][13] , \triangle[r][x][12] , \triangle[r][x][11] , 
        \triangle[r][x][10] , \triangle[r][x][9] , \triangle[r][x][8] , 
        \triangle[r][x][7] , \triangle[r][x][6] , \triangle[r][x][5] , 
        \triangle[r][x][4] , \triangle[r][x][3] , \triangle[r][x][2] , 
        \triangle[r][x][1] , \triangle[r][x][0] , \triangle[r][y][15] , 
        \triangle[r][y][14] , \triangle[r][y][13] , \triangle[r][y][12] , 
        \triangle[r][y][11] , \triangle[r][y][10] , \triangle[r][y][9] , 
        \triangle[r][y][8] , \triangle[r][y][7] , \triangle[r][y][6] , 
        \triangle[r][y][5] , \triangle[r][y][4] , \triangle[r][y][3] , 
        \triangle[r][y][2] , \triangle[r][y][1] , \triangle[r][y][0] , 
        \triangle[r][z][15] , \triangle[r][z][14] , \triangle[r][z][13] , 
        \triangle[r][z][12] , \triangle[r][z][11] , \triangle[r][z][10] , 
        \triangle[r][z][9] , \triangle[r][z][8] , \triangle[r][z][7] , 
        \triangle[r][z][6] , \triangle[r][z][5] , \triangle[r][z][4] , 
        \triangle[r][z][3] , \triangle[r][z][2] , \triangle[r][z][1] , 
        \triangle[r][z][0] }), .point({\point[x][15] , \point[x][14] , 
        \point[x][13] , \point[x][12] , \point[x][11] , \point[x][10] , 
        \point[x][9] , \point[x][8] , \point[x][7] , \point[x][6] , 
        \point[x][5] , \point[x][4] , \point[x][3] , \point[x][2] , 
        \point[x][1] , \point[x][0] , \point[y][15] , \point[y][14] , 
        \point[y][13] , \point[y][12] , \point[y][11] , \point[y][10] , 
        \point[y][9] , \point[y][8] , \point[y][7] , \point[y][6] , 
        \point[y][5] , \point[y][4] , \point[y][3] , \point[y][2] , 
        \point[y][1] , \point[y][0] }), z );
  output [7:0] z;
  input \triangle[p][x][15] , \triangle[p][x][14] , \triangle[p][x][13] ,
         \triangle[p][x][12] , \triangle[p][x][11] , \triangle[p][x][10] ,
         \triangle[p][x][9] , \triangle[p][x][8] , \triangle[p][x][7] ,
         \triangle[p][x][6] , \triangle[p][x][5] , \triangle[p][x][4] ,
         \triangle[p][x][3] , \triangle[p][x][2] , \triangle[p][x][1] ,
         \triangle[p][x][0] , \triangle[p][y][15] , \triangle[p][y][14] ,
         \triangle[p][y][13] , \triangle[p][y][12] , \triangle[p][y][11] ,
         \triangle[p][y][10] , \triangle[p][y][9] , \triangle[p][y][8] ,
         \triangle[p][y][7] , \triangle[p][y][6] , \triangle[p][y][5] ,
         \triangle[p][y][4] , \triangle[p][y][3] , \triangle[p][y][2] ,
         \triangle[p][y][1] , \triangle[p][y][0] , \triangle[p][z][15] ,
         \triangle[p][z][14] , \triangle[p][z][13] , \triangle[p][z][12] ,
         \triangle[p][z][11] , \triangle[p][z][10] , \triangle[p][z][9] ,
         \triangle[p][z][8] , \triangle[p][z][7] , \triangle[p][z][6] ,
         \triangle[p][z][5] , \triangle[p][z][4] , \triangle[p][z][3] ,
         \triangle[p][z][2] , \triangle[p][z][1] , \triangle[p][z][0] ,
         \triangle[q][x][15] , \triangle[q][x][14] , \triangle[q][x][13] ,
         \triangle[q][x][12] , \triangle[q][x][11] , \triangle[q][x][10] ,
         \triangle[q][x][9] , \triangle[q][x][8] , \triangle[q][x][7] ,
         \triangle[q][x][6] , \triangle[q][x][5] , \triangle[q][x][4] ,
         \triangle[q][x][3] , \triangle[q][x][2] , \triangle[q][x][1] ,
         \triangle[q][x][0] , \triangle[q][y][15] , \triangle[q][y][14] ,
         \triangle[q][y][13] , \triangle[q][y][12] , \triangle[q][y][11] ,
         \triangle[q][y][10] , \triangle[q][y][9] , \triangle[q][y][8] ,
         \triangle[q][y][7] , \triangle[q][y][6] , \triangle[q][y][5] ,
         \triangle[q][y][4] , \triangle[q][y][3] , \triangle[q][y][2] ,
         \triangle[q][y][1] , \triangle[q][y][0] , \triangle[q][z][15] ,
         \triangle[q][z][14] , \triangle[q][z][13] , \triangle[q][z][12] ,
         \triangle[q][z][11] , \triangle[q][z][10] , \triangle[q][z][9] ,
         \triangle[q][z][8] , \triangle[q][z][7] , \triangle[q][z][6] ,
         \triangle[q][z][5] , \triangle[q][z][4] , \triangle[q][z][3] ,
         \triangle[q][z][2] , \triangle[q][z][1] , \triangle[q][z][0] ,
         \triangle[r][x][15] , \triangle[r][x][14] , \triangle[r][x][13] ,
         \triangle[r][x][12] , \triangle[r][x][11] , \triangle[r][x][10] ,
         \triangle[r][x][9] , \triangle[r][x][8] , \triangle[r][x][7] ,
         \triangle[r][x][6] , \triangle[r][x][5] , \triangle[r][x][4] ,
         \triangle[r][x][3] , \triangle[r][x][2] , \triangle[r][x][1] ,
         \triangle[r][x][0] , \triangle[r][y][15] , \triangle[r][y][14] ,
         \triangle[r][y][13] , \triangle[r][y][12] , \triangle[r][y][11] ,
         \triangle[r][y][10] , \triangle[r][y][9] , \triangle[r][y][8] ,
         \triangle[r][y][7] , \triangle[r][y][6] , \triangle[r][y][5] ,
         \triangle[r][y][4] , \triangle[r][y][3] , \triangle[r][y][2] ,
         \triangle[r][y][1] , \triangle[r][y][0] , \triangle[r][z][15] ,
         \triangle[r][z][14] , \triangle[r][z][13] , \triangle[r][z][12] ,
         \triangle[r][z][11] , \triangle[r][z][10] , \triangle[r][z][9] ,
         \triangle[r][z][8] , \triangle[r][z][7] , \triangle[r][z][6] ,
         \triangle[r][z][5] , \triangle[r][z][4] , \triangle[r][z][3] ,
         \triangle[r][z][2] , \triangle[r][z][1] , \triangle[r][z][0] ,
         \point[x][15] , \point[x][14] , \point[x][13] , \point[x][12] ,
         \point[x][11] , \point[x][10] , \point[x][9] , \point[x][8] ,
         \point[x][7] , \point[x][6] , \point[x][5] , \point[x][4] ,
         \point[x][3] , \point[x][2] , \point[x][1] , \point[x][0] ,
         \point[y][15] , \point[y][14] , \point[y][13] , \point[y][12] ,
         \point[y][11] , \point[y][10] , \point[y][9] , \point[y][8] ,
         \point[y][7] , \point[y][6] , \point[y][5] , \point[y][4] ,
         \point[y][3] , \point[y][2] , \point[y][1] , \point[y][0] ;
  wire   N9, N8, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N7, N69,
         N68, N67, N66, N65, N64, N63, N62, N61, N60, N6, N59, N58, N57, N56,
         N55, N54, N53, N52, N51, N50, N5, N49, N48, N47, N46, N45, N44, N43,
         N42, N41, N40, N4, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30,
         N3, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N2, N19, N18,
         N17, N16, N15, N14, N13, N12, N11, N10, N1, N0;
  wire   [15:0] a;
  wire   [15:0] a1;
  wire   [15:0] a2;
  wire   [15:0] a3;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59;

  triangle_area_3 AREA ( .p({\triangle[p][x][15] , \triangle[p][x][14] , 
        \triangle[p][x][13] , \triangle[p][x][12] , \triangle[p][x][11] , 
        \triangle[p][x][10] , \triangle[p][x][9] , \triangle[p][x][8] , 
        \triangle[p][x][7] , \triangle[p][x][6] , \triangle[p][x][5] , 
        \triangle[p][x][4] , \triangle[p][x][3] , \triangle[p][x][2] , 
        \triangle[p][x][1] , \triangle[p][x][0] , \triangle[p][y][15] , 
        \triangle[p][y][14] , \triangle[p][y][13] , \triangle[p][y][12] , 
        \triangle[p][y][11] , \triangle[p][y][10] , \triangle[p][y][9] , 
        \triangle[p][y][8] , \triangle[p][y][7] , \triangle[p][y][6] , 
        \triangle[p][y][5] , \triangle[p][y][4] , \triangle[p][y][3] , 
        \triangle[p][y][2] , \triangle[p][y][1] , \triangle[p][y][0] }), .q({
        \triangle[q][x][15] , \triangle[q][x][14] , \triangle[q][x][13] , 
        \triangle[q][x][12] , \triangle[q][x][11] , \triangle[q][x][10] , 
        \triangle[q][x][9] , \triangle[q][x][8] , \triangle[q][x][7] , 
        \triangle[q][x][6] , \triangle[q][x][5] , \triangle[q][x][4] , 
        \triangle[q][x][3] , \triangle[q][x][2] , \triangle[q][x][1] , 
        \triangle[q][x][0] , \triangle[q][y][15] , \triangle[q][y][14] , 
        \triangle[q][y][13] , \triangle[q][y][12] , \triangle[q][y][11] , 
        \triangle[q][y][10] , \triangle[q][y][9] , \triangle[q][y][8] , 
        \triangle[q][y][7] , \triangle[q][y][6] , \triangle[q][y][5] , 
        \triangle[q][y][4] , \triangle[q][y][3] , \triangle[q][y][2] , 
        \triangle[q][y][1] , \triangle[q][y][0] }), .r({\triangle[r][x][15] , 
        \triangle[r][x][14] , \triangle[r][x][13] , \triangle[r][x][12] , 
        \triangle[r][x][11] , \triangle[r][x][10] , \triangle[r][x][9] , 
        \triangle[r][x][8] , \triangle[r][x][7] , \triangle[r][x][6] , 
        \triangle[r][x][5] , \triangle[r][x][4] , \triangle[r][x][3] , 
        \triangle[r][x][2] , \triangle[r][x][1] , \triangle[r][x][0] , 
        \triangle[r][y][15] , \triangle[r][y][14] , \triangle[r][y][13] , 
        \triangle[r][y][12] , \triangle[r][y][11] , \triangle[r][y][10] , 
        \triangle[r][y][9] , \triangle[r][y][8] , \triangle[r][y][7] , 
        \triangle[r][y][6] , \triangle[r][y][5] , \triangle[r][y][4] , 
        \triangle[r][y][3] , \triangle[r][y][2] , \triangle[r][y][1] , 
        \triangle[r][y][0] }), .area({SYNOPSYS_UNCONNECTED__0, a[14:0]}) );
  triangle_area_2 AREA1 ( .p({\point[x][15] , \point[x][14] , \point[x][13] , 
        \point[x][12] , \point[x][11] , \point[x][10] , \point[x][9] , 
        \point[x][8] , \point[x][7] , \point[x][6] , \point[x][5] , 
        \point[x][4] , \point[x][3] , \point[x][2] , \point[x][1] , 
        \point[x][0] , \point[y][15] , \point[y][14] , \point[y][13] , 
        \point[y][12] , \point[y][11] , \point[y][10] , \point[y][9] , 
        \point[y][8] , \point[y][7] , \point[y][6] , \point[y][5] , 
        \point[y][4] , \point[y][3] , \point[y][2] , \point[y][1] , 
        \point[y][0] }), .q({\triangle[q][x][15] , \triangle[q][x][14] , 
        \triangle[q][x][13] , \triangle[q][x][12] , \triangle[q][x][11] , 
        \triangle[q][x][10] , \triangle[q][x][9] , \triangle[q][x][8] , 
        \triangle[q][x][7] , \triangle[q][x][6] , \triangle[q][x][5] , 
        \triangle[q][x][4] , \triangle[q][x][3] , \triangle[q][x][2] , 
        \triangle[q][x][1] , \triangle[q][x][0] , \triangle[q][y][15] , 
        \triangle[q][y][14] , \triangle[q][y][13] , \triangle[q][y][12] , 
        \triangle[q][y][11] , \triangle[q][y][10] , \triangle[q][y][9] , 
        \triangle[q][y][8] , \triangle[q][y][7] , \triangle[q][y][6] , 
        \triangle[q][y][5] , \triangle[q][y][4] , \triangle[q][y][3] , 
        \triangle[q][y][2] , \triangle[q][y][1] , \triangle[q][y][0] }), .r({
        \triangle[r][x][15] , \triangle[r][x][14] , \triangle[r][x][13] , 
        \triangle[r][x][12] , \triangle[r][x][11] , \triangle[r][x][10] , 
        \triangle[r][x][9] , \triangle[r][x][8] , \triangle[r][x][7] , 
        \triangle[r][x][6] , \triangle[r][x][5] , \triangle[r][x][4] , 
        \triangle[r][x][3] , \triangle[r][x][2] , \triangle[r][x][1] , 
        \triangle[r][x][0] , \triangle[r][y][15] , \triangle[r][y][14] , 
        \triangle[r][y][13] , \triangle[r][y][12] , \triangle[r][y][11] , 
        \triangle[r][y][10] , \triangle[r][y][9] , \triangle[r][y][8] , 
        \triangle[r][y][7] , \triangle[r][y][6] , \triangle[r][y][5] , 
        \triangle[r][y][4] , \triangle[r][y][3] , \triangle[r][y][2] , 
        \triangle[r][y][1] , \triangle[r][y][0] }), .area({
        SYNOPSYS_UNCONNECTED__1, a1[14:0]}) );
  triangle_area_1 AREA2 ( .p({\triangle[p][x][15] , \triangle[p][x][14] , 
        \triangle[p][x][13] , \triangle[p][x][12] , \triangle[p][x][11] , 
        \triangle[p][x][10] , \triangle[p][x][9] , \triangle[p][x][8] , 
        \triangle[p][x][7] , \triangle[p][x][6] , \triangle[p][x][5] , 
        \triangle[p][x][4] , \triangle[p][x][3] , \triangle[p][x][2] , 
        \triangle[p][x][1] , \triangle[p][x][0] , \triangle[p][y][15] , 
        \triangle[p][y][14] , \triangle[p][y][13] , \triangle[p][y][12] , 
        \triangle[p][y][11] , \triangle[p][y][10] , \triangle[p][y][9] , 
        \triangle[p][y][8] , \triangle[p][y][7] , \triangle[p][y][6] , 
        \triangle[p][y][5] , \triangle[p][y][4] , \triangle[p][y][3] , 
        \triangle[p][y][2] , \triangle[p][y][1] , \triangle[p][y][0] }), .q({
        \point[x][15] , \point[x][14] , \point[x][13] , \point[x][12] , 
        \point[x][11] , \point[x][10] , \point[x][9] , \point[x][8] , 
        \point[x][7] , \point[x][6] , \point[x][5] , \point[x][4] , 
        \point[x][3] , \point[x][2] , \point[x][1] , \point[x][0] , 
        \point[y][15] , \point[y][14] , \point[y][13] , \point[y][12] , 
        \point[y][11] , \point[y][10] , \point[y][9] , \point[y][8] , 
        \point[y][7] , \point[y][6] , \point[y][5] , \point[y][4] , 
        \point[y][3] , \point[y][2] , \point[y][1] , \point[y][0] }), .r({
        \triangle[r][x][15] , \triangle[r][x][14] , \triangle[r][x][13] , 
        \triangle[r][x][12] , \triangle[r][x][11] , \triangle[r][x][10] , 
        \triangle[r][x][9] , \triangle[r][x][8] , \triangle[r][x][7] , 
        \triangle[r][x][6] , \triangle[r][x][5] , \triangle[r][x][4] , 
        \triangle[r][x][3] , \triangle[r][x][2] , \triangle[r][x][1] , 
        \triangle[r][x][0] , \triangle[r][y][15] , \triangle[r][y][14] , 
        \triangle[r][y][13] , \triangle[r][y][12] , \triangle[r][y][11] , 
        \triangle[r][y][10] , \triangle[r][y][9] , \triangle[r][y][8] , 
        \triangle[r][y][7] , \triangle[r][y][6] , \triangle[r][y][5] , 
        \triangle[r][y][4] , \triangle[r][y][3] , \triangle[r][y][2] , 
        \triangle[r][y][1] , \triangle[r][y][0] }), .area({
        SYNOPSYS_UNCONNECTED__2, a2[14:0]}) );
  triangle_area_0 AREA3 ( .p({\triangle[p][x][15] , \triangle[p][x][14] , 
        \triangle[p][x][13] , \triangle[p][x][12] , \triangle[p][x][11] , 
        \triangle[p][x][10] , \triangle[p][x][9] , \triangle[p][x][8] , 
        \triangle[p][x][7] , \triangle[p][x][6] , \triangle[p][x][5] , 
        \triangle[p][x][4] , \triangle[p][x][3] , \triangle[p][x][2] , 
        \triangle[p][x][1] , \triangle[p][x][0] , \triangle[p][y][15] , 
        \triangle[p][y][14] , \triangle[p][y][13] , \triangle[p][y][12] , 
        \triangle[p][y][11] , \triangle[p][y][10] , \triangle[p][y][9] , 
        \triangle[p][y][8] , \triangle[p][y][7] , \triangle[p][y][6] , 
        \triangle[p][y][5] , \triangle[p][y][4] , \triangle[p][y][3] , 
        \triangle[p][y][2] , \triangle[p][y][1] , \triangle[p][y][0] }), .q({
        \triangle[q][x][15] , \triangle[q][x][14] , \triangle[q][x][13] , 
        \triangle[q][x][12] , \triangle[q][x][11] , \triangle[q][x][10] , 
        \triangle[q][x][9] , \triangle[q][x][8] , \triangle[q][x][7] , 
        \triangle[q][x][6] , \triangle[q][x][5] , \triangle[q][x][4] , 
        \triangle[q][x][3] , \triangle[q][x][2] , \triangle[q][x][1] , 
        \triangle[q][x][0] , \triangle[q][y][15] , \triangle[q][y][14] , 
        \triangle[q][y][13] , \triangle[q][y][12] , \triangle[q][y][11] , 
        \triangle[q][y][10] , \triangle[q][y][9] , \triangle[q][y][8] , 
        \triangle[q][y][7] , \triangle[q][y][6] , \triangle[q][y][5] , 
        \triangle[q][y][4] , \triangle[q][y][3] , \triangle[q][y][2] , 
        \triangle[q][y][1] , \triangle[q][y][0] }), .r({\point[x][15] , 
        \point[x][14] , \point[x][13] , \point[x][12] , \point[x][11] , 
        \point[x][10] , \point[x][9] , \point[x][8] , \point[x][7] , 
        \point[x][6] , \point[x][5] , \point[x][4] , \point[x][3] , 
        \point[x][2] , \point[x][1] , \point[x][0] , \point[y][15] , 
        \point[y][14] , \point[y][13] , \point[y][12] , \point[y][11] , 
        \point[y][10] , \point[y][9] , \point[y][8] , \point[y][7] , 
        \point[y][6] , \point[y][5] , \point[y][4] , \point[y][3] , 
        \point[y][2] , \point[y][1] , \point[y][0] }), .area({
        SYNOPSYS_UNCONNECTED__3, a3[14:0]}) );
  z_interpolation_DW_div_tc_0 div_80 ( .a({N79, N78, N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64}), .b({1'b0, a[14:0]}), 
        .quotient({SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, z}) );
  z_interpolation_DW01_add_11 add_0_root_add_80_2 ( .A({N63, N62, N61, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48}), .B({N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, 
        N32}), .CI(1'b0), .SUM({N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64}) );
  z_interpolation_DW01_add_12 add_1_root_add_80_2 ( .A({N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16}), 
        .CI(1'b0), .SUM({N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, 
        N36, N35, N34, N33, N32}) );
  z_interpolation_DW_mult_tc_3 mult_80 ( .a({\triangle[p][z][15] , 
        \triangle[p][z][14] , \triangle[p][z][13] , \triangle[p][z][12] , 
        \triangle[p][z][11] , \triangle[p][z][10] , \triangle[p][z][9] , 
        \triangle[p][z][8] , \triangle[p][z][7] , \triangle[p][z][6] , 
        \triangle[p][z][5] , \triangle[p][z][4] , \triangle[p][z][3] , 
        \triangle[p][z][2] , \triangle[p][z][1] , \triangle[p][z][0] }), .b({
        1'b0, a1[14:0]}), .product({SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4, N3, N2, N1, N0}) );
  z_interpolation_DW_mult_tc_4 mult_80_2 ( .a({\triangle[q][z][15] , 
        \triangle[q][z][14] , \triangle[q][z][13] , \triangle[q][z][12] , 
        \triangle[q][z][11] , \triangle[q][z][10] , \triangle[q][z][9] , 
        \triangle[q][z][8] , \triangle[q][z][7] , \triangle[q][z][6] , 
        \triangle[q][z][5] , \triangle[q][z][4] , \triangle[q][z][3] , 
        \triangle[q][z][2] , \triangle[q][z][1] , \triangle[q][z][0] }), .b({
        1'b0, a2[14:0]}), .product({SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, N31, N30, N29, N28, N27, N26, N25, N24, N23, 
        N22, N21, N20, N19, N18, N17, N16}) );
  z_interpolation_DW_mult_tc_5 mult_80_3 ( .a({\triangle[r][z][15] , 
        \triangle[r][z][14] , \triangle[r][z][13] , \triangle[r][z][12] , 
        \triangle[r][z][11] , \triangle[r][z][10] , \triangle[r][z][9] , 
        \triangle[r][z][8] , \triangle[r][z][7] , \triangle[r][z][6] , 
        \triangle[r][z][5] , \triangle[r][z][4] , \triangle[r][z][3] , 
        \triangle[r][z][2] , \triangle[r][z][1] , \triangle[r][z][0] }), .b({
        1'b0, a3[14:0]}), .product({SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, N63, N62, N61, N60, N59, N58, N57, N56, N55, 
        N54, N53, N52, N51, N50, N49, N48}) );
endmodule


module colorfill_DW01_add_2 ( A, B, CI, SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  FAX1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .YS(SUM[18]) );
  FAX1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .YC(carry[18]), .YS(
        SUM[17]) );
  FAX1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .YC(carry[17]), .YS(
        SUM[16]) );
  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YC(carry[16]), .YS(
        SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module colorfill_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module colorfill ( zbuf_val, sram_val, clk, n_rst, height, .rgb_val({
        \rgb_val[r][7] , \rgb_val[r][6] , \rgb_val[r][5] , \rgb_val[r][4] , 
        \rgb_val[r][3] , \rgb_val[r][2] , \rgb_val[r][1] , \rgb_val[r][0] , 
        \rgb_val[g][7] , \rgb_val[g][6] , \rgb_val[g][5] , \rgb_val[g][4] , 
        \rgb_val[g][3] , \rgb_val[g][2] , \rgb_val[g][1] , \rgb_val[g][0] , 
        \rgb_val[b][7] , \rgb_val[b][6] , \rgb_val[b][5] , \rgb_val[b][4] , 
        \rgb_val[b][3] , \rgb_val[b][2] , \rgb_val[b][1] , \rgb_val[b][0] }), 
    .ver({\ver[p][x][15] , \ver[p][x][14] , \ver[p][x][13] , \ver[p][x][12] , 
        \ver[p][x][11] , \ver[p][x][10] , \ver[p][x][9] , \ver[p][x][8] , 
        \ver[p][x][7] , \ver[p][x][6] , \ver[p][x][5] , \ver[p][x][4] , 
        \ver[p][x][3] , \ver[p][x][2] , \ver[p][x][1] , \ver[p][x][0] , 
        \ver[p][y][15] , \ver[p][y][14] , \ver[p][y][13] , \ver[p][y][12] , 
        \ver[p][y][11] , \ver[p][y][10] , \ver[p][y][9] , \ver[p][y][8] , 
        \ver[p][y][7] , \ver[p][y][6] , \ver[p][y][5] , \ver[p][y][4] , 
        \ver[p][y][3] , \ver[p][y][2] , \ver[p][y][1] , \ver[p][y][0] , 
        \ver[p][z][15] , \ver[p][z][14] , \ver[p][z][13] , \ver[p][z][12] , 
        \ver[p][z][11] , \ver[p][z][10] , \ver[p][z][9] , \ver[p][z][8] , 
        \ver[p][z][7] , \ver[p][z][6] , \ver[p][z][5] , \ver[p][z][4] , 
        \ver[p][z][3] , \ver[p][z][2] , \ver[p][z][1] , \ver[p][z][0] , 
        \ver[q][x][15] , \ver[q][x][14] , \ver[q][x][13] , \ver[q][x][12] , 
        \ver[q][x][11] , \ver[q][x][10] , \ver[q][x][9] , \ver[q][x][8] , 
        \ver[q][x][7] , \ver[q][x][6] , \ver[q][x][5] , \ver[q][x][4] , 
        \ver[q][x][3] , \ver[q][x][2] , \ver[q][x][1] , \ver[q][x][0] , 
        \ver[q][y][15] , \ver[q][y][14] , \ver[q][y][13] , \ver[q][y][12] , 
        \ver[q][y][11] , \ver[q][y][10] , \ver[q][y][9] , \ver[q][y][8] , 
        \ver[q][y][7] , \ver[q][y][6] , \ver[q][y][5] , \ver[q][y][4] , 
        \ver[q][y][3] , \ver[q][y][2] , \ver[q][y][1] , \ver[q][y][0] , 
        \ver[q][z][15] , \ver[q][z][14] , \ver[q][z][13] , \ver[q][z][12] , 
        \ver[q][z][11] , \ver[q][z][10] , \ver[q][z][9] , \ver[q][z][8] , 
        \ver[q][z][7] , \ver[q][z][6] , \ver[q][z][5] , \ver[q][z][4] , 
        \ver[q][z][3] , \ver[q][z][2] , \ver[q][z][1] , \ver[q][z][0] , 
        \ver[r][x][15] , \ver[r][x][14] , \ver[r][x][13] , \ver[r][x][12] , 
        \ver[r][x][11] , \ver[r][x][10] , \ver[r][x][9] , \ver[r][x][8] , 
        \ver[r][x][7] , \ver[r][x][6] , \ver[r][x][5] , \ver[r][x][4] , 
        \ver[r][x][3] , \ver[r][x][2] , \ver[r][x][1] , \ver[r][x][0] , 
        \ver[r][y][15] , \ver[r][y][14] , \ver[r][y][13] , \ver[r][y][12] , 
        \ver[r][y][11] , \ver[r][y][10] , \ver[r][y][9] , \ver[r][y][8] , 
        \ver[r][y][7] , \ver[r][y][6] , \ver[r][y][5] , \ver[r][y][4] , 
        \ver[r][y][3] , \ver[r][y][2] , \ver[r][y][1] , \ver[r][y][0] , 
        \ver[r][z][15] , \ver[r][z][14] , \ver[r][z][13] , \ver[r][z][12] , 
        \ver[r][z][11] , \ver[r][z][10] , \ver[r][z][9] , \ver[r][z][8] , 
        \ver[r][z][7] , \ver[r][z][6] , \ver[r][z][5] , \ver[r][z][4] , 
        \ver[r][z][3] , \ver[r][z][2] , \ver[r][z][1] , \ver[r][z][0] }), 
        color_en, data_ready, sram_addr, zbuf_addr, fb_addr, write_en, 
        data_out, .data_out_color({\data_out_color[r][7] , 
        \data_out_color[r][6] , \data_out_color[r][5] , \data_out_color[r][4] , 
        \data_out_color[r][3] , \data_out_color[r][2] , \data_out_color[r][1] , 
        \data_out_color[r][0] , \data_out_color[g][7] , \data_out_color[g][6] , 
        \data_out_color[g][5] , \data_out_color[g][4] , \data_out_color[g][3] , 
        \data_out_color[g][2] , \data_out_color[g][1] , \data_out_color[g][0] , 
        \data_out_color[b][7] , \data_out_color[b][6] , \data_out_color[b][5] , 
        \data_out_color[b][4] , \data_out_color[b][3] , \data_out_color[b][2] , 
        \data_out_color[b][1] , \data_out_color[b][0] }) );
  input [7:0] zbuf_val;
  input [15:0] height;
  output [18:0] sram_addr;
  output [18:0] zbuf_addr;
  output [18:0] fb_addr;
  output [7:0] data_out;
  input sram_val, clk, n_rst, \rgb_val[r][7] , \rgb_val[r][6] ,
         \rgb_val[r][5] , \rgb_val[r][4] , \rgb_val[r][3] , \rgb_val[r][2] ,
         \rgb_val[r][1] , \rgb_val[r][0] , \rgb_val[g][7] , \rgb_val[g][6] ,
         \rgb_val[g][5] , \rgb_val[g][4] , \rgb_val[g][3] , \rgb_val[g][2] ,
         \rgb_val[g][1] , \rgb_val[g][0] , \rgb_val[b][7] , \rgb_val[b][6] ,
         \rgb_val[b][5] , \rgb_val[b][4] , \rgb_val[b][3] , \rgb_val[b][2] ,
         \rgb_val[b][1] , \rgb_val[b][0] , \ver[p][x][15] , \ver[p][x][14] ,
         \ver[p][x][13] , \ver[p][x][12] , \ver[p][x][11] , \ver[p][x][10] ,
         \ver[p][x][9] , \ver[p][x][8] , \ver[p][x][7] , \ver[p][x][6] ,
         \ver[p][x][5] , \ver[p][x][4] , \ver[p][x][3] , \ver[p][x][2] ,
         \ver[p][x][1] , \ver[p][x][0] , \ver[p][y][15] , \ver[p][y][14] ,
         \ver[p][y][13] , \ver[p][y][12] , \ver[p][y][11] , \ver[p][y][10] ,
         \ver[p][y][9] , \ver[p][y][8] , \ver[p][y][7] , \ver[p][y][6] ,
         \ver[p][y][5] , \ver[p][y][4] , \ver[p][y][3] , \ver[p][y][2] ,
         \ver[p][y][1] , \ver[p][y][0] , \ver[p][z][15] , \ver[p][z][14] ,
         \ver[p][z][13] , \ver[p][z][12] , \ver[p][z][11] , \ver[p][z][10] ,
         \ver[p][z][9] , \ver[p][z][8] , \ver[p][z][7] , \ver[p][z][6] ,
         \ver[p][z][5] , \ver[p][z][4] , \ver[p][z][3] , \ver[p][z][2] ,
         \ver[p][z][1] , \ver[p][z][0] , \ver[q][x][15] , \ver[q][x][14] ,
         \ver[q][x][13] , \ver[q][x][12] , \ver[q][x][11] , \ver[q][x][10] ,
         \ver[q][x][9] , \ver[q][x][8] , \ver[q][x][7] , \ver[q][x][6] ,
         \ver[q][x][5] , \ver[q][x][4] , \ver[q][x][3] , \ver[q][x][2] ,
         \ver[q][x][1] , \ver[q][x][0] , \ver[q][y][15] , \ver[q][y][14] ,
         \ver[q][y][13] , \ver[q][y][12] , \ver[q][y][11] , \ver[q][y][10] ,
         \ver[q][y][9] , \ver[q][y][8] , \ver[q][y][7] , \ver[q][y][6] ,
         \ver[q][y][5] , \ver[q][y][4] , \ver[q][y][3] , \ver[q][y][2] ,
         \ver[q][y][1] , \ver[q][y][0] , \ver[q][z][15] , \ver[q][z][14] ,
         \ver[q][z][13] , \ver[q][z][12] , \ver[q][z][11] , \ver[q][z][10] ,
         \ver[q][z][9] , \ver[q][z][8] , \ver[q][z][7] , \ver[q][z][6] ,
         \ver[q][z][5] , \ver[q][z][4] , \ver[q][z][3] , \ver[q][z][2] ,
         \ver[q][z][1] , \ver[q][z][0] , \ver[r][x][15] , \ver[r][x][14] ,
         \ver[r][x][13] , \ver[r][x][12] , \ver[r][x][11] , \ver[r][x][10] ,
         \ver[r][x][9] , \ver[r][x][8] , \ver[r][x][7] , \ver[r][x][6] ,
         \ver[r][x][5] , \ver[r][x][4] , \ver[r][x][3] , \ver[r][x][2] ,
         \ver[r][x][1] , \ver[r][x][0] , \ver[r][y][15] , \ver[r][y][14] ,
         \ver[r][y][13] , \ver[r][y][12] , \ver[r][y][11] , \ver[r][y][10] ,
         \ver[r][y][9] , \ver[r][y][8] , \ver[r][y][7] , \ver[r][y][6] ,
         \ver[r][y][5] , \ver[r][y][4] , \ver[r][y][3] , \ver[r][y][2] ,
         \ver[r][y][1] , \ver[r][y][0] , \ver[r][z][15] , \ver[r][z][14] ,
         \ver[r][z][13] , \ver[r][z][12] , \ver[r][z][11] , \ver[r][z][10] ,
         \ver[r][z][9] , \ver[r][z][8] , \ver[r][z][7] , \ver[r][z][6] ,
         \ver[r][z][5] , \ver[r][z][4] , \ver[r][z][3] , \ver[r][z][2] ,
         \ver[r][z][1] , \ver[r][z][0] , color_en;
  output data_ready, write_en, \data_out_color[r][7] , \data_out_color[r][6] ,
         \data_out_color[r][5] , \data_out_color[r][4] ,
         \data_out_color[r][3] , \data_out_color[r][2] ,
         \data_out_color[r][1] , \data_out_color[r][0] ,
         \data_out_color[g][7] , \data_out_color[g][6] ,
         \data_out_color[g][5] , \data_out_color[g][4] ,
         \data_out_color[g][3] , \data_out_color[g][2] ,
         \data_out_color[g][1] , \data_out_color[g][0] ,
         \data_out_color[b][7] , \data_out_color[b][6] ,
         \data_out_color[b][5] , \data_out_color[b][4] ,
         \data_out_color[b][3] , \data_out_color[b][2] ,
         \data_out_color[b][1] , \data_out_color[b][0] ;
  wire   \rgb_val[r][7] , \rgb_val[r][6] , \rgb_val[r][5] , \rgb_val[r][4] ,
         \rgb_val[r][3] , \rgb_val[r][2] , \rgb_val[r][1] , \rgb_val[r][0] ,
         \rgb_val[g][7] , \rgb_val[g][6] , \rgb_val[g][5] , \rgb_val[g][4] ,
         \rgb_val[g][3] , \rgb_val[g][2] , \rgb_val[g][1] , \rgb_val[g][0] ,
         \rgb_val[b][7] , \rgb_val[b][6] , \rgb_val[b][5] , \rgb_val[b][4] ,
         \rgb_val[b][3] , \rgb_val[b][2] , \rgb_val[b][1] , \rgb_val[b][0] ,
         N55, N56, N57, N58, N59, N60, N61, N77, N78, N79, N80, N81, N82, N83,
         N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221,
         N222, N223, N224, N225, N226, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n300, n1,
         n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n78, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n299, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585;
  wire   [2:0] curr;
  wire   [15:0] left;
  wire   [15:0] right;
  wire   [2:0] next;
  wire   [18:0] srambaseaddr;
  assign fb_addr[18] = zbuf_addr[18];
  assign fb_addr[17] = zbuf_addr[17];
  assign fb_addr[16] = zbuf_addr[16];
  assign fb_addr[15] = zbuf_addr[15];
  assign fb_addr[14] = zbuf_addr[14];
  assign fb_addr[13] = zbuf_addr[13];
  assign fb_addr[12] = zbuf_addr[12];
  assign fb_addr[11] = zbuf_addr[11];
  assign fb_addr[10] = zbuf_addr[10];
  assign fb_addr[9] = zbuf_addr[9];
  assign fb_addr[8] = zbuf_addr[8];
  assign fb_addr[7] = zbuf_addr[7];
  assign fb_addr[6] = zbuf_addr[6];
  assign fb_addr[5] = zbuf_addr[5];
  assign fb_addr[4] = zbuf_addr[4];
  assign fb_addr[3] = zbuf_addr[3];
  assign fb_addr[2] = zbuf_addr[2];
  assign fb_addr[1] = zbuf_addr[1];
  assign fb_addr[0] = zbuf_addr[0];
  assign \data_out_color[r][7]  = \rgb_val[r][7] ;
  assign \data_out_color[r][6]  = \rgb_val[r][6] ;
  assign \data_out_color[r][5]  = \rgb_val[r][5] ;
  assign \data_out_color[r][4]  = \rgb_val[r][4] ;
  assign \data_out_color[r][3]  = \rgb_val[r][3] ;
  assign \data_out_color[r][2]  = \rgb_val[r][2] ;
  assign \data_out_color[r][1]  = \rgb_val[r][1] ;
  assign \data_out_color[r][0]  = \rgb_val[r][0] ;
  assign \data_out_color[g][7]  = \rgb_val[g][7] ;
  assign \data_out_color[g][6]  = \rgb_val[g][6] ;
  assign \data_out_color[g][5]  = \rgb_val[g][5] ;
  assign \data_out_color[g][4]  = \rgb_val[g][4] ;
  assign \data_out_color[g][3]  = \rgb_val[g][3] ;
  assign \data_out_color[g][2]  = \rgb_val[g][2] ;
  assign \data_out_color[g][1]  = \rgb_val[g][1] ;
  assign \data_out_color[g][0]  = \rgb_val[g][0] ;
  assign \data_out_color[b][7]  = \rgb_val[b][7] ;
  assign \data_out_color[b][6]  = \rgb_val[b][6] ;
  assign \data_out_color[b][5]  = \rgb_val[b][5] ;
  assign \data_out_color[b][4]  = \rgb_val[b][4] ;
  assign \data_out_color[b][3]  = \rgb_val[b][3] ;
  assign \data_out_color[b][2]  = \rgb_val[b][2] ;
  assign \data_out_color[b][1]  = \rgb_val[b][1] ;
  assign \data_out_color[b][0]  = \rgb_val[b][0] ;
  assign srambaseaddr[8] = height[1];
  assign srambaseaddr[7] = height[0];

  DFFSR \right_reg[0]  ( .D(n300), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N77) );
  DFFSR \curr_reg[0]  ( .D(next[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr[0]) );
  DFFSR \left_reg[15]  ( .D(n269), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[15]) );
  DFFSR \curr_reg[1]  ( .D(next[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr[1]) );
  DFFSR \curr_reg[2]  ( .D(next[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr[2]) );
  DFFSR \left_reg[14]  ( .D(n270), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[14]) );
  DFFSR \left_reg[0]  ( .D(n284), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N55) );
  DFFSR \left_reg[1]  ( .D(n283), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N56) );
  DFFSR \left_reg[2]  ( .D(n282), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N57) );
  DFFSR \left_reg[3]  ( .D(n281), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N58) );
  DFFSR \left_reg[4]  ( .D(n280), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N59) );
  DFFSR \left_reg[5]  ( .D(n279), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N60) );
  DFFSR \left_reg[6]  ( .D(n278), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N61) );
  DFFSR \left_reg[7]  ( .D(n277), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[7])
         );
  DFFSR \left_reg[8]  ( .D(n276), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[8])
         );
  DFFSR \left_reg[9]  ( .D(n275), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[9])
         );
  DFFSR \left_reg[10]  ( .D(n274), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[10]) );
  DFFSR \left_reg[11]  ( .D(n273), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[11]) );
  DFFSR \left_reg[12]  ( .D(n272), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[12]) );
  DFFSR \left_reg[13]  ( .D(n271), .CLK(clk), .R(n_rst), .S(1'b1), .Q(left[13]) );
  DFFSR \right_reg[14]  ( .D(n298), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        right[14]) );
  DFFSR \right_reg[13]  ( .D(n297), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        right[13]) );
  DFFSR \right_reg[12]  ( .D(n296), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        right[12]) );
  DFFSR \right_reg[11]  ( .D(n295), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        right[11]) );
  DFFSR \right_reg[10]  ( .D(n294), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        right[10]) );
  DFFSR \right_reg[9]  ( .D(n293), .CLK(clk), .R(n_rst), .S(1'b1), .Q(right[9]) );
  DFFSR \right_reg[8]  ( .D(n292), .CLK(clk), .R(n_rst), .S(1'b1), .Q(right[8]) );
  DFFSR \right_reg[7]  ( .D(n291), .CLK(clk), .R(n_rst), .S(1'b1), .Q(right[7]) );
  DFFSR \right_reg[6]  ( .D(n290), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N83) );
  DFFSR \right_reg[5]  ( .D(n289), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N82) );
  DFFSR \right_reg[4]  ( .D(n288), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N81) );
  DFFSR \right_reg[3]  ( .D(n287), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N80) );
  DFFSR \right_reg[2]  ( .D(n286), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N79) );
  DFFSR \right_reg[1]  ( .D(n285), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N78) );
  DFFSR \sram_addr_reg[0]  ( .D(n268), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[0]) );
  DFFSR \sram_addr_reg[1]  ( .D(n267), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[1]) );
  DFFSR \sram_addr_reg[2]  ( .D(n266), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[2]) );
  DFFSR \sram_addr_reg[3]  ( .D(n265), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[3]) );
  DFFSR \sram_addr_reg[4]  ( .D(n264), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[4]) );
  DFFSR \sram_addr_reg[5]  ( .D(n263), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[5]) );
  DFFSR \sram_addr_reg[6]  ( .D(n262), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[6]) );
  DFFSR \sram_addr_reg[7]  ( .D(n261), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[7]) );
  DFFSR \sram_addr_reg[8]  ( .D(n260), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[8]) );
  DFFSR \sram_addr_reg[9]  ( .D(n259), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[9]) );
  DFFSR \sram_addr_reg[10]  ( .D(n258), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[10]) );
  DFFSR \sram_addr_reg[11]  ( .D(n257), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[11]) );
  DFFSR \sram_addr_reg[12]  ( .D(n256), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[12]) );
  DFFSR \sram_addr_reg[13]  ( .D(n255), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[13]) );
  DFFSR \sram_addr_reg[14]  ( .D(n254), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[14]) );
  DFFSR \sram_addr_reg[15]  ( .D(n253), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[15]) );
  DFFSR \sram_addr_reg[16]  ( .D(n252), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[16]) );
  DFFSR \sram_addr_reg[17]  ( .D(n251), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[17]) );
  DFFSR \sram_addr_reg[18]  ( .D(n250), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sram_addr[18]) );
  z_interpolation ZI ( .triangle({\ver[p][x][15] , \ver[p][x][14] , 
        \ver[p][x][13] , \ver[p][x][12] , \ver[p][x][11] , \ver[p][x][10] , 
        \ver[p][x][9] , \ver[p][x][8] , \ver[p][x][7] , \ver[p][x][6] , 
        \ver[p][x][5] , \ver[p][x][4] , \ver[p][x][3] , \ver[p][x][2] , 
        \ver[p][x][1] , \ver[p][x][0] , \ver[p][y][15] , \ver[p][y][14] , 
        \ver[p][y][13] , \ver[p][y][12] , \ver[p][y][11] , \ver[p][y][10] , 
        \ver[p][y][9] , \ver[p][y][8] , \ver[p][y][7] , \ver[p][y][6] , 
        \ver[p][y][5] , \ver[p][y][4] , \ver[p][y][3] , \ver[p][y][2] , 
        \ver[p][y][1] , \ver[p][y][0] , \ver[p][z][15] , \ver[p][z][14] , 
        \ver[p][z][13] , \ver[p][z][12] , \ver[p][z][11] , \ver[p][z][10] , 
        \ver[p][z][9] , \ver[p][z][8] , \ver[p][z][7] , \ver[p][z][6] , 
        \ver[p][z][5] , \ver[p][z][4] , \ver[p][z][3] , \ver[p][z][2] , 
        \ver[p][z][1] , \ver[p][z][0] , \ver[q][x][15] , \ver[q][x][14] , 
        \ver[q][x][13] , \ver[q][x][12] , \ver[q][x][11] , \ver[q][x][10] , 
        \ver[q][x][9] , \ver[q][x][8] , \ver[q][x][7] , \ver[q][x][6] , 
        \ver[q][x][5] , \ver[q][x][4] , \ver[q][x][3] , \ver[q][x][2] , 
        \ver[q][x][1] , \ver[q][x][0] , \ver[q][y][15] , \ver[q][y][14] , 
        \ver[q][y][13] , \ver[q][y][12] , \ver[q][y][11] , \ver[q][y][10] , 
        \ver[q][y][9] , \ver[q][y][8] , \ver[q][y][7] , \ver[q][y][6] , 
        \ver[q][y][5] , \ver[q][y][4] , \ver[q][y][3] , \ver[q][y][2] , 
        \ver[q][y][1] , \ver[q][y][0] , \ver[q][z][15] , \ver[q][z][14] , 
        \ver[q][z][13] , \ver[q][z][12] , \ver[q][z][11] , \ver[q][z][10] , 
        \ver[q][z][9] , \ver[q][z][8] , \ver[q][z][7] , \ver[q][z][6] , 
        \ver[q][z][5] , \ver[q][z][4] , \ver[q][z][3] , \ver[q][z][2] , 
        \ver[q][z][1] , \ver[q][z][0] , \ver[r][x][15] , \ver[r][x][14] , 
        \ver[r][x][13] , \ver[r][x][12] , \ver[r][x][11] , \ver[r][x][10] , 
        \ver[r][x][9] , \ver[r][x][8] , \ver[r][x][7] , \ver[r][x][6] , 
        \ver[r][x][5] , \ver[r][x][4] , \ver[r][x][3] , \ver[r][x][2] , 
        \ver[r][x][1] , \ver[r][x][0] , \ver[r][y][15] , \ver[r][y][14] , 
        \ver[r][y][13] , \ver[r][y][12] , \ver[r][y][11] , \ver[r][y][10] , 
        \ver[r][y][9] , \ver[r][y][8] , \ver[r][y][7] , \ver[r][y][6] , 
        \ver[r][y][5] , \ver[r][y][4] , \ver[r][y][3] , \ver[r][y][2] , 
        \ver[r][y][1] , \ver[r][y][0] , \ver[r][z][15] , \ver[r][z][14] , 
        \ver[r][z][13] , \ver[r][z][12] , \ver[r][z][11] , \ver[r][z][10] , 
        \ver[r][z][9] , \ver[r][z][8] , \ver[r][z][7] , \ver[r][z][6] , 
        \ver[r][z][5] , \ver[r][z][4] , \ver[r][z][3] , \ver[r][z][2] , 
        \ver[r][z][1] , \ver[r][z][0] }), .point({n15, n8, n5, n9, n2, n11, 
        left[9], n10, left[7], N61, N60, N59, N58, N57, N56, N55, height[15:2], 
        srambaseaddr[8:7]}), .z(data_out) );
  colorfill_DW01_add_2 r344 ( .A({srambaseaddr[18:7], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .B({n15, n15, n15, left[15:14], n5, n9, n2, n11, 
        left[9], n10, left[7], N61, N60, N59, N58, N57, N56, N55}), .CI(1'b0), 
        .SUM(zbuf_addr) );
  colorfill_DW01_inc_0 add_131 ( .A({left[15:14], n5, left[12], n2, left[10:7], 
        N61, N60, N59, N58, N57, N56, N55}), .SUM({N226, N225, N224, N223, 
        N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211}) );
  INVX2 U7 ( .A(n85), .Y(n84) );
  INVX2 U8 ( .A(n469), .Y(n466) );
  NAND2X1 U10 ( .A(n188), .B(n585), .Y(n582) );
  NOR2X1 U11 ( .A(n497), .B(n464), .Y(n495) );
  NAND2X1 U12 ( .A(n86), .B(n87), .Y(n85) );
  INVX1 U13 ( .A(left[11]), .Y(n1) );
  INVX2 U62 ( .A(n1), .Y(n2) );
  INVX1 U64 ( .A(left[13]), .Y(n4) );
  INVX2 U65 ( .A(n4), .Y(n5) );
  INVX2 U66 ( .A(n108), .Y(n6) );
  INVX2 U67 ( .A(n223), .Y(n7) );
  INVX2 U68 ( .A(n88), .Y(n8) );
  INVX2 U69 ( .A(n95), .Y(n9) );
  INVX2 U70 ( .A(n110), .Y(n10) );
  INVX2 U71 ( .A(n102), .Y(n11) );
  INVX2 U72 ( .A(n471), .Y(n362) );
  INVX2 U73 ( .A(write_en), .Y(n12) );
  INVX2 U74 ( .A(n365), .Y(n384) );
  INVX2 U75 ( .A(n236), .Y(n13) );
  AND2X2 U76 ( .A(n210), .B(n13), .Y(n158) );
  INVX2 U77 ( .A(n366), .Y(n14) );
  INVX2 U78 ( .A(n86), .Y(n15) );
  INVX2 U79 ( .A(n155), .Y(n16) );
  NAND3X1 U80 ( .A(n17), .B(n18), .C(n19), .Y(next[2]) );
  OR2X1 U81 ( .A(n20), .B(n21), .Y(next[1]) );
  OAI21X1 U82 ( .A(curr[0]), .B(n22), .C(n12), .Y(n21) );
  NAND3X1 U83 ( .A(n17), .B(n18), .C(n16), .Y(n20) );
  OR2X1 U84 ( .A(n25), .B(n78), .Y(next[0]) );
  OAI21X1 U85 ( .A(n80), .B(n24), .C(n81), .Y(n78) );
  AOI22X1 U86 ( .A(n82), .B(curr[0]), .C(n83), .D(n84), .Y(n81) );
  OAI21X1 U87 ( .A(right[14]), .B(n88), .C(n89), .Y(n87) );
  OAI21X1 U88 ( .A(left[14]), .B(n90), .C(n91), .Y(n89) );
  AOI22X1 U89 ( .A(right[13]), .B(n92), .C(n93), .D(n4), .Y(n91) );
  INVX1 U90 ( .A(n94), .Y(n93) );
  NAND2X1 U91 ( .A(n5), .B(n94), .Y(n92) );
  OAI21X1 U92 ( .A(right[12]), .B(n95), .C(n96), .Y(n94) );
  OAI21X1 U93 ( .A(left[12]), .B(n97), .C(n98), .Y(n96) );
  AOI22X1 U94 ( .A(right[11]), .B(n99), .C(n100), .D(n1), .Y(n98) );
  INVX1 U95 ( .A(n101), .Y(n100) );
  NAND2X1 U96 ( .A(n2), .B(n101), .Y(n99) );
  OAI21X1 U97 ( .A(right[10]), .B(n102), .C(n103), .Y(n101) );
  OAI21X1 U98 ( .A(left[10]), .B(n104), .C(n105), .Y(n103) );
  AOI22X1 U99 ( .A(right[9]), .B(n106), .C(n107), .D(n108), .Y(n105) );
  INVX1 U100 ( .A(n109), .Y(n107) );
  NAND2X1 U101 ( .A(left[9]), .B(n109), .Y(n106) );
  OAI21X1 U102 ( .A(right[8]), .B(n110), .C(n111), .Y(n109) );
  OAI21X1 U103 ( .A(left[8]), .B(n112), .C(n113), .Y(n111) );
  AOI22X1 U104 ( .A(right[7]), .B(n114), .C(n115), .D(n116), .Y(n113) );
  INVX1 U105 ( .A(n117), .Y(n115) );
  NAND2X1 U106 ( .A(left[7]), .B(n117), .Y(n114) );
  OAI21X1 U107 ( .A(N83), .B(n118), .C(n119), .Y(n117) );
  OAI21X1 U108 ( .A(N61), .B(n120), .C(n121), .Y(n119) );
  AOI22X1 U109 ( .A(N82), .B(n122), .C(n123), .D(n124), .Y(n121) );
  INVX1 U110 ( .A(n125), .Y(n123) );
  NAND2X1 U111 ( .A(N60), .B(n125), .Y(n122) );
  OAI21X1 U112 ( .A(N81), .B(n126), .C(n127), .Y(n125) );
  OAI21X1 U113 ( .A(N59), .B(n128), .C(n129), .Y(n127) );
  INVX1 U114 ( .A(n130), .Y(n129) );
  OAI22X1 U115 ( .A(n131), .B(n132), .C(n133), .D(N58), .Y(n130) );
  AND2X1 U116 ( .A(N58), .B(n133), .Y(n132) );
  OAI22X1 U117 ( .A(n134), .B(n135), .C(N79), .D(n136), .Y(n133) );
  INVX1 U118 ( .A(N57), .Y(n136) );
  OAI21X1 U119 ( .A(N56), .B(n137), .C(n138), .Y(n135) );
  OAI21X1 U120 ( .A(n139), .B(n140), .C(N78), .Y(n138) );
  INVX1 U121 ( .A(n140), .Y(n137) );
  NAND2X1 U122 ( .A(N55), .B(n141), .Y(n140) );
  NOR2X1 U123 ( .A(N57), .B(n142), .Y(n134) );
  INVX1 U124 ( .A(N61), .Y(n118) );
  NAND3X1 U125 ( .A(n143), .B(n17), .C(n12), .Y(n25) );
  NAND2X1 U126 ( .A(color_en), .B(n144), .Y(n17) );
  INVX1 U127 ( .A(n23), .Y(write_en) );
  NOR2X1 U128 ( .A(n145), .B(n146), .Y(data_ready) );
  NAND2X1 U129 ( .A(curr[0]), .B(n147), .Y(n146) );
  NAND2X1 U130 ( .A(n148), .B(n149), .Y(n300) );
  MUX2X1 U131 ( .B(n150), .A(n151), .S(N77), .Y(n148) );
  NOR2X1 U132 ( .A(n16), .B(n152), .Y(n150) );
  OAI21X1 U133 ( .A(n153), .B(n90), .C(n154), .Y(n298) );
  NAND3X1 U134 ( .A(n155), .B(n90), .C(n156), .Y(n154) );
  INVX1 U135 ( .A(n157), .Y(n153) );
  OAI21X1 U136 ( .A(n156), .B(n24), .C(n158), .Y(n157) );
  INVX1 U137 ( .A(n159), .Y(n156) );
  OAI21X1 U138 ( .A(n16), .B(n159), .C(n160), .Y(n297) );
  OAI21X1 U139 ( .A(n161), .B(n162), .C(right[13]), .Y(n160) );
  NOR2X1 U140 ( .A(n97), .B(n16), .Y(n161) );
  NAND3X1 U141 ( .A(n97), .B(n163), .C(n164), .Y(n159) );
  MUX2X1 U142 ( .B(n165), .A(n166), .S(right[12]), .Y(n296) );
  INVX1 U143 ( .A(n162), .Y(n166) );
  OAI21X1 U144 ( .A(n164), .B(n24), .C(n158), .Y(n162) );
  NAND2X1 U145 ( .A(n164), .B(n155), .Y(n165) );
  INVX1 U146 ( .A(n167), .Y(n164) );
  OAI21X1 U147 ( .A(n16), .B(n167), .C(n168), .Y(n295) );
  OAI21X1 U148 ( .A(n169), .B(n170), .C(right[11]), .Y(n168) );
  NOR2X1 U149 ( .A(n104), .B(n16), .Y(n169) );
  NAND3X1 U150 ( .A(n104), .B(n171), .C(n172), .Y(n167) );
  MUX2X1 U151 ( .B(n173), .A(n174), .S(right[10]), .Y(n294) );
  INVX1 U152 ( .A(n170), .Y(n174) );
  OAI21X1 U153 ( .A(n172), .B(n24), .C(n158), .Y(n170) );
  NAND2X1 U154 ( .A(n172), .B(n155), .Y(n173) );
  INVX1 U155 ( .A(n175), .Y(n172) );
  OAI21X1 U156 ( .A(n16), .B(n175), .C(n176), .Y(n293) );
  AND2X1 U157 ( .A(n177), .B(n149), .Y(n176) );
  OAI21X1 U158 ( .A(right[8]), .B(n178), .C(right[9]), .Y(n177) );
  NAND3X1 U159 ( .A(n112), .B(n179), .C(n180), .Y(n175) );
  MUX2X1 U160 ( .B(n181), .A(n182), .S(right[8]), .Y(n292) );
  INVX1 U161 ( .A(n178), .Y(n182) );
  OAI21X1 U162 ( .A(n180), .B(n24), .C(n158), .Y(n178) );
  NAND2X1 U163 ( .A(n180), .B(n155), .Y(n181) );
  INVX1 U164 ( .A(n183), .Y(n180) );
  OAI21X1 U165 ( .A(n16), .B(n183), .C(n184), .Y(n291) );
  NAND2X1 U166 ( .A(right[7]), .B(n185), .Y(n184) );
  OAI21X1 U167 ( .A(n120), .B(n24), .C(n186), .Y(n185) );
  INVX1 U168 ( .A(n187), .Y(n186) );
  NAND3X1 U169 ( .A(n120), .B(n188), .C(n189), .Y(n183) );
  INVX1 U170 ( .A(N83), .Y(n120) );
  NAND2X1 U171 ( .A(n190), .B(n149), .Y(n290) );
  MUX2X1 U172 ( .B(n191), .A(n187), .S(N83), .Y(n190) );
  OAI21X1 U173 ( .A(n189), .B(n24), .C(n158), .Y(n187) );
  INVX1 U174 ( .A(n192), .Y(n189) );
  NOR2X1 U175 ( .A(n16), .B(n192), .Y(n191) );
  OAI21X1 U176 ( .A(n24), .B(n192), .C(n193), .Y(n289) );
  AND2X1 U177 ( .A(n194), .B(n149), .Y(n193) );
  OAI21X1 U178 ( .A(N81), .B(n195), .C(N82), .Y(n194) );
  NAND3X1 U179 ( .A(n128), .B(n196), .C(n197), .Y(n192) );
  NAND2X1 U180 ( .A(n198), .B(n149), .Y(n288) );
  MUX2X1 U181 ( .B(n199), .A(n195), .S(N81), .Y(n198) );
  NAND2X1 U182 ( .A(n197), .B(n158), .Y(n195) );
  INVX1 U183 ( .A(n200), .Y(n197) );
  NOR2X1 U184 ( .A(n16), .B(n200), .Y(n199) );
  OAI21X1 U185 ( .A(n24), .B(n200), .C(n201), .Y(n287) );
  AND2X1 U186 ( .A(n202), .B(n149), .Y(n201) );
  OAI21X1 U187 ( .A(N79), .B(n203), .C(N80), .Y(n202) );
  NAND3X1 U188 ( .A(n142), .B(n131), .C(n204), .Y(n200) );
  INVX1 U189 ( .A(N80), .Y(n131) );
  INVX1 U190 ( .A(N79), .Y(n142) );
  NAND2X1 U191 ( .A(n205), .B(n149), .Y(n286) );
  MUX2X1 U192 ( .B(n206), .A(n203), .S(N79), .Y(n205) );
  NAND2X1 U193 ( .A(n204), .B(n158), .Y(n203) );
  INVX1 U194 ( .A(n207), .Y(n204) );
  NOR2X1 U195 ( .A(n16), .B(n207), .Y(n206) );
  OAI21X1 U196 ( .A(n24), .B(n207), .C(n208), .Y(n285) );
  AND2X1 U197 ( .A(n209), .B(n149), .Y(n208) );
  NAND2X1 U198 ( .A(n158), .B(n144), .Y(n149) );
  OAI21X1 U199 ( .A(N77), .B(n151), .C(N78), .Y(n209) );
  NAND2X1 U200 ( .A(n80), .B(n158), .Y(n151) );
  NAND3X1 U201 ( .A(n141), .B(n212), .C(n80), .Y(n207) );
  OAI21X1 U202 ( .A(n12), .B(n213), .C(n214), .Y(n284) );
  MUX2X1 U203 ( .B(n215), .A(n216), .S(n7), .Y(n214) );
  INVX1 U204 ( .A(N211), .Y(n213) );
  OAI21X1 U205 ( .A(n12), .B(n217), .C(n218), .Y(n283) );
  MUX2X1 U206 ( .B(n219), .A(n220), .S(N56), .Y(n218) );
  OAI21X1 U207 ( .A(N55), .B(n13), .C(n221), .Y(n220) );
  INVX1 U208 ( .A(n216), .Y(n221) );
  NAND2X1 U209 ( .A(n222), .B(n18), .Y(n216) );
  NOR2X1 U210 ( .A(n223), .B(n143), .Y(n219) );
  INVX1 U211 ( .A(N212), .Y(n217) );
  OAI21X1 U212 ( .A(n12), .B(n224), .C(n225), .Y(n282) );
  MUX2X1 U213 ( .B(n226), .A(n227), .S(N57), .Y(n225) );
  NOR2X1 U214 ( .A(n13), .B(n228), .Y(n226) );
  INVX1 U215 ( .A(N213), .Y(n224) );
  OAI21X1 U216 ( .A(n12), .B(n229), .C(n230), .Y(n281) );
  MUX2X1 U217 ( .B(n231), .A(n232), .S(N58), .Y(n230) );
  OAI21X1 U218 ( .A(N57), .B(n13), .C(n233), .Y(n232) );
  INVX1 U219 ( .A(n227), .Y(n233) );
  OAI21X1 U220 ( .A(n234), .B(n13), .C(n222), .Y(n227) );
  NOR2X1 U221 ( .A(n228), .B(n235), .Y(n231) );
  NAND2X1 U222 ( .A(n236), .B(N57), .Y(n235) );
  INVX1 U223 ( .A(N214), .Y(n229) );
  OAI21X1 U224 ( .A(n23), .B(n237), .C(n238), .Y(n280) );
  MUX2X1 U225 ( .B(n239), .A(n240), .S(N59), .Y(n238) );
  NOR2X1 U226 ( .A(n13), .B(n241), .Y(n239) );
  INVX1 U227 ( .A(N215), .Y(n237) );
  OAI21X1 U228 ( .A(n23), .B(n242), .C(n243), .Y(n279) );
  MUX2X1 U229 ( .B(n244), .A(n245), .S(N60), .Y(n243) );
  OAI21X1 U230 ( .A(N59), .B(n211), .C(n246), .Y(n245) );
  INVX1 U231 ( .A(n240), .Y(n246) );
  OAI21X1 U232 ( .A(n247), .B(n211), .C(n222), .Y(n240) );
  NOR2X1 U233 ( .A(n241), .B(n248), .Y(n244) );
  NAND2X1 U234 ( .A(n236), .B(N59), .Y(n248) );
  INVX1 U235 ( .A(N216), .Y(n242) );
  OAI21X1 U236 ( .A(n23), .B(n249), .C(n299), .Y(n278) );
  MUX2X1 U237 ( .B(n301), .A(n302), .S(N61), .Y(n299) );
  NOR2X1 U238 ( .A(n13), .B(n303), .Y(n301) );
  INVX1 U239 ( .A(N217), .Y(n249) );
  OAI21X1 U240 ( .A(n23), .B(n304), .C(n305), .Y(n277) );
  MUX2X1 U241 ( .B(n306), .A(n307), .S(left[7]), .Y(n305) );
  OAI21X1 U242 ( .A(N61), .B(n211), .C(n308), .Y(n307) );
  INVX1 U243 ( .A(n302), .Y(n308) );
  OAI21X1 U244 ( .A(n309), .B(n211), .C(n222), .Y(n302) );
  NOR2X1 U245 ( .A(n303), .B(n310), .Y(n306) );
  NAND2X1 U246 ( .A(n236), .B(N61), .Y(n310) );
  INVX1 U247 ( .A(N218), .Y(n304) );
  OAI21X1 U248 ( .A(n23), .B(n311), .C(n312), .Y(n276) );
  MUX2X1 U249 ( .B(n313), .A(n314), .S(left[8]), .Y(n312) );
  NOR2X1 U250 ( .A(n13), .B(n315), .Y(n313) );
  INVX1 U251 ( .A(N219), .Y(n311) );
  OAI21X1 U252 ( .A(n23), .B(n316), .C(n317), .Y(n275) );
  MUX2X1 U253 ( .B(n318), .A(n319), .S(left[9]), .Y(n317) );
  OAI21X1 U254 ( .A(left[8]), .B(n211), .C(n320), .Y(n319) );
  INVX1 U255 ( .A(n314), .Y(n320) );
  OAI21X1 U256 ( .A(n321), .B(n211), .C(n222), .Y(n314) );
  NOR2X1 U257 ( .A(n315), .B(n322), .Y(n318) );
  NAND2X1 U258 ( .A(left[8]), .B(n236), .Y(n322) );
  INVX1 U259 ( .A(N220), .Y(n316) );
  OAI21X1 U260 ( .A(n23), .B(n323), .C(n324), .Y(n274) );
  MUX2X1 U261 ( .B(n325), .A(n326), .S(left[10]), .Y(n324) );
  NOR2X1 U262 ( .A(n13), .B(n327), .Y(n325) );
  INVX1 U263 ( .A(N221), .Y(n323) );
  OAI21X1 U264 ( .A(n23), .B(n328), .C(n329), .Y(n273) );
  MUX2X1 U265 ( .B(n330), .A(n331), .S(n2), .Y(n329) );
  OAI21X1 U266 ( .A(left[10]), .B(n211), .C(n332), .Y(n331) );
  INVX1 U267 ( .A(n326), .Y(n332) );
  OAI21X1 U268 ( .A(n333), .B(n211), .C(n222), .Y(n326) );
  NOR2X1 U269 ( .A(n327), .B(n334), .Y(n330) );
  NAND2X1 U270 ( .A(left[10]), .B(n236), .Y(n334) );
  INVX1 U271 ( .A(N222), .Y(n328) );
  OAI21X1 U272 ( .A(n23), .B(n335), .C(n336), .Y(n272) );
  MUX2X1 U273 ( .B(n337), .A(n338), .S(left[12]), .Y(n336) );
  NOR2X1 U274 ( .A(n13), .B(n339), .Y(n337) );
  INVX1 U275 ( .A(N223), .Y(n335) );
  OAI21X1 U276 ( .A(n23), .B(n340), .C(n341), .Y(n271) );
  MUX2X1 U277 ( .B(n342), .A(n343), .S(n5), .Y(n341) );
  OAI21X1 U278 ( .A(left[12]), .B(n211), .C(n344), .Y(n343) );
  INVX1 U279 ( .A(n338), .Y(n344) );
  OAI21X1 U280 ( .A(n345), .B(n211), .C(n222), .Y(n338) );
  NOR2X1 U281 ( .A(n339), .B(n346), .Y(n342) );
  NAND2X1 U282 ( .A(left[12]), .B(n236), .Y(n346) );
  INVX1 U283 ( .A(N224), .Y(n340) );
  OAI21X1 U284 ( .A(n23), .B(n347), .C(n348), .Y(n270) );
  MUX2X1 U285 ( .B(n349), .A(n350), .S(left[14]), .Y(n348) );
  NOR2X1 U286 ( .A(n13), .B(n351), .Y(n349) );
  INVX1 U287 ( .A(N225), .Y(n347) );
  OAI21X1 U288 ( .A(n23), .B(n352), .C(n353), .Y(n269) );
  MUX2X1 U289 ( .B(n354), .A(n355), .S(left[15]), .Y(n353) );
  OAI21X1 U290 ( .A(left[14]), .B(n211), .C(n356), .Y(n355) );
  INVX1 U291 ( .A(n350), .Y(n356) );
  OAI21X1 U292 ( .A(n357), .B(n211), .C(n222), .Y(n350) );
  NOR2X1 U293 ( .A(n358), .B(n155), .Y(n222) );
  INVX1 U294 ( .A(n24), .Y(n155) );
  INVX1 U295 ( .A(n351), .Y(n357) );
  NOR2X1 U296 ( .A(n351), .B(n359), .Y(n354) );
  NAND2X1 U297 ( .A(left[14]), .B(n236), .Y(n359) );
  NAND3X1 U298 ( .A(n5), .B(left[12]), .C(n345), .Y(n351) );
  INVX1 U299 ( .A(n339), .Y(n345) );
  NAND3X1 U300 ( .A(n2), .B(left[10]), .C(n333), .Y(n339) );
  INVX1 U301 ( .A(n327), .Y(n333) );
  NAND3X1 U302 ( .A(left[8]), .B(left[9]), .C(n321), .Y(n327) );
  INVX1 U303 ( .A(n315), .Y(n321) );
  NAND3X1 U304 ( .A(left[7]), .B(N61), .C(n309), .Y(n315) );
  INVX1 U305 ( .A(n303), .Y(n309) );
  NAND3X1 U306 ( .A(N60), .B(N59), .C(n247), .Y(n303) );
  INVX1 U307 ( .A(n241), .Y(n247) );
  NAND3X1 U308 ( .A(N58), .B(N57), .C(n234), .Y(n241) );
  INVX1 U309 ( .A(n228), .Y(n234) );
  NAND3X1 U310 ( .A(N56), .B(N55), .C(n360), .Y(n228) );
  INVX1 U311 ( .A(N226), .Y(n352) );
  NAND3X1 U312 ( .A(n361), .B(n147), .C(curr[2]), .Y(n23) );
  OAI21X1 U313 ( .A(n362), .B(n363), .C(n364), .Y(n268) );
  AOI22X1 U314 ( .A(N77), .B(n365), .C(n366), .D(N55), .Y(n364) );
  INVX1 U315 ( .A(sram_addr[0]), .Y(n363) );
  OAI21X1 U316 ( .A(n362), .B(n367), .C(n368), .Y(n267) );
  AOI22X1 U317 ( .A(N78), .B(n365), .C(n366), .D(N56), .Y(n368) );
  INVX1 U318 ( .A(sram_addr[1]), .Y(n367) );
  OAI21X1 U319 ( .A(n362), .B(n369), .C(n370), .Y(n266) );
  AOI22X1 U320 ( .A(N79), .B(n365), .C(n366), .D(N57), .Y(n370) );
  INVX1 U321 ( .A(sram_addr[2]), .Y(n369) );
  OAI21X1 U322 ( .A(n362), .B(n371), .C(n372), .Y(n265) );
  AOI22X1 U323 ( .A(N80), .B(n365), .C(n366), .D(N58), .Y(n372) );
  INVX1 U324 ( .A(sram_addr[3]), .Y(n371) );
  OAI21X1 U325 ( .A(n362), .B(n373), .C(n374), .Y(n264) );
  AOI22X1 U326 ( .A(N81), .B(n365), .C(n366), .D(N59), .Y(n374) );
  INVX1 U327 ( .A(sram_addr[4]), .Y(n373) );
  OAI21X1 U328 ( .A(n362), .B(n375), .C(n376), .Y(n263) );
  AOI22X1 U329 ( .A(N82), .B(n365), .C(n366), .D(N60), .Y(n376) );
  INVX1 U330 ( .A(sram_addr[5]), .Y(n375) );
  OAI21X1 U331 ( .A(n362), .B(n377), .C(n378), .Y(n262) );
  AOI22X1 U332 ( .A(N83), .B(n365), .C(n366), .D(N61), .Y(n378) );
  INVX1 U333 ( .A(sram_addr[6]), .Y(n377) );
  OAI21X1 U334 ( .A(n362), .B(n379), .C(n380), .Y(n261) );
  MUX2X1 U335 ( .B(n381), .A(n382), .S(srambaseaddr[7]), .Y(n380) );
  OAI22X1 U336 ( .A(left[7]), .B(n383), .C(right[7]), .D(n384), .Y(n382) );
  OAI22X1 U337 ( .A(n116), .B(n383), .C(n384), .D(n188), .Y(n381) );
  INVX1 U338 ( .A(left[7]), .Y(n116) );
  INVX1 U339 ( .A(sram_addr[7]), .Y(n379) );
  OAI21X1 U340 ( .A(n362), .B(n385), .C(n386), .Y(n260) );
  MUX2X1 U341 ( .B(n387), .A(n388), .S(srambaseaddr[8]), .Y(n386) );
  OAI22X1 U342 ( .A(n14), .B(n389), .C(n384), .D(n390), .Y(n388) );
  XOR2X1 U343 ( .A(n112), .B(n391), .Y(n390) );
  XOR2X1 U344 ( .A(n110), .B(n392), .Y(n389) );
  OAI22X1 U345 ( .A(n393), .B(n383), .C(n384), .D(n394), .Y(n387) );
  XOR2X1 U346 ( .A(n391), .B(right[8]), .Y(n394) );
  XOR2X1 U347 ( .A(n392), .B(left[8]), .Y(n393) );
  INVX1 U348 ( .A(sram_addr[8]), .Y(n385) );
  OAI21X1 U349 ( .A(n362), .B(n395), .C(n396), .Y(n259) );
  MUX2X1 U350 ( .B(n397), .A(n398), .S(srambaseaddr[9]), .Y(n396) );
  OAI22X1 U351 ( .A(n399), .B(n383), .C(n384), .D(n400), .Y(n398) );
  XOR2X1 U352 ( .A(n179), .B(n401), .Y(n400) );
  INVX1 U353 ( .A(right[9]), .Y(n179) );
  XOR2X1 U354 ( .A(n108), .B(n402), .Y(n399) );
  INVX1 U355 ( .A(left[9]), .Y(n108) );
  OAI22X1 U356 ( .A(n14), .B(n403), .C(n384), .D(n404), .Y(n397) );
  XOR2X1 U357 ( .A(right[9]), .B(n401), .Y(n404) );
  XOR2X1 U358 ( .A(n6), .B(n402), .Y(n403) );
  INVX1 U359 ( .A(sram_addr[9]), .Y(n395) );
  OAI21X1 U360 ( .A(n362), .B(n405), .C(n406), .Y(n258) );
  MUX2X1 U361 ( .B(n407), .A(n408), .S(srambaseaddr[10]), .Y(n406) );
  OAI22X1 U362 ( .A(n409), .B(n383), .C(n384), .D(n410), .Y(n408) );
  XOR2X1 U363 ( .A(n411), .B(right[10]), .Y(n410) );
  XOR2X1 U364 ( .A(n412), .B(left[10]), .Y(n409) );
  OAI22X1 U365 ( .A(n14), .B(n413), .C(n384), .D(n414), .Y(n407) );
  XOR2X1 U366 ( .A(n104), .B(n411), .Y(n414) );
  INVX1 U367 ( .A(right[10]), .Y(n104) );
  XOR2X1 U368 ( .A(left[10]), .B(n415), .Y(n413) );
  INVX1 U369 ( .A(sram_addr[10]), .Y(n405) );
  OAI21X1 U370 ( .A(n362), .B(n416), .C(n417), .Y(n257) );
  MUX2X1 U371 ( .B(n418), .A(n419), .S(n420), .Y(n417) );
  OAI22X1 U372 ( .A(n14), .B(n421), .C(n384), .D(n422), .Y(n419) );
  XOR2X1 U373 ( .A(n171), .B(n423), .Y(n422) );
  XOR2X1 U374 ( .A(n1), .B(n424), .Y(n421) );
  OAI22X1 U375 ( .A(n425), .B(n383), .C(n384), .D(n426), .Y(n418) );
  XOR2X1 U376 ( .A(n423), .B(right[11]), .Y(n426) );
  XOR2X1 U377 ( .A(n424), .B(n2), .Y(n425) );
  INVX1 U378 ( .A(sram_addr[11]), .Y(n416) );
  OAI21X1 U379 ( .A(n362), .B(n427), .C(n428), .Y(n256) );
  MUX2X1 U380 ( .B(n429), .A(n430), .S(n431), .Y(n428) );
  OAI22X1 U381 ( .A(n14), .B(n432), .C(n384), .D(n433), .Y(n430) );
  XOR2X1 U382 ( .A(n97), .B(n434), .Y(n433) );
  XOR2X1 U383 ( .A(n95), .B(n435), .Y(n432) );
  INVX1 U384 ( .A(left[12]), .Y(n95) );
  OAI22X1 U385 ( .A(n436), .B(n383), .C(n384), .D(n437), .Y(n429) );
  XOR2X1 U386 ( .A(n434), .B(right[12]), .Y(n437) );
  XOR2X1 U387 ( .A(n435), .B(left[12]), .Y(n436) );
  INVX1 U388 ( .A(sram_addr[12]), .Y(n427) );
  OAI21X1 U389 ( .A(n362), .B(n438), .C(n439), .Y(n255) );
  MUX2X1 U390 ( .B(n440), .A(n441), .S(n442), .Y(n439) );
  OAI22X1 U391 ( .A(n14), .B(n443), .C(n384), .D(n444), .Y(n441) );
  XOR2X1 U392 ( .A(n163), .B(n445), .Y(n444) );
  INVX1 U393 ( .A(right[13]), .Y(n163) );
  XOR2X1 U394 ( .A(n4), .B(n446), .Y(n443) );
  OAI22X1 U395 ( .A(n447), .B(n383), .C(n384), .D(n448), .Y(n440) );
  XOR2X1 U396 ( .A(n445), .B(right[13]), .Y(n448) );
  XOR2X1 U397 ( .A(n446), .B(n5), .Y(n447) );
  INVX1 U398 ( .A(sram_addr[13]), .Y(n438) );
  OAI21X1 U399 ( .A(n362), .B(n449), .C(n450), .Y(n254) );
  MUX2X1 U400 ( .B(n451), .A(n452), .S(n453), .Y(n450) );
  OAI22X1 U401 ( .A(n14), .B(n454), .C(n384), .D(n455), .Y(n452) );
  XOR2X1 U402 ( .A(n90), .B(n456), .Y(n455) );
  INVX1 U403 ( .A(right[14]), .Y(n90) );
  XOR2X1 U404 ( .A(n88), .B(n457), .Y(n454) );
  OAI22X1 U405 ( .A(n458), .B(n383), .C(n384), .D(n459), .Y(n451) );
  XOR2X1 U406 ( .A(n456), .B(right[14]), .Y(n459) );
  XOR2X1 U407 ( .A(n457), .B(left[14]), .Y(n458) );
  INVX1 U408 ( .A(sram_addr[14]), .Y(n449) );
  OAI21X1 U409 ( .A(n362), .B(n460), .C(n461), .Y(n253) );
  MUX2X1 U410 ( .B(n462), .A(n463), .S(n464), .Y(n461) );
  OAI22X1 U411 ( .A(n383), .B(n465), .C(n384), .D(n466), .Y(n463) );
  XOR2X1 U412 ( .A(n86), .B(n467), .Y(n465) );
  OAI22X1 U413 ( .A(n468), .B(n383), .C(n384), .D(n469), .Y(n462) );
  XOR2X1 U414 ( .A(n467), .B(left[15]), .Y(n468) );
  INVX1 U415 ( .A(sram_addr[15]), .Y(n460) );
  INVX1 U416 ( .A(n470), .Y(n252) );
  AOI21X1 U417 ( .A(n471), .B(sram_addr[16]), .C(n472), .Y(n470) );
  MUX2X1 U418 ( .B(n473), .A(n474), .S(n475), .Y(n472) );
  OAI21X1 U419 ( .A(n362), .B(n476), .C(n477), .Y(n251) );
  MUX2X1 U420 ( .B(n478), .A(n479), .S(n480), .Y(n477) );
  NOR2X1 U421 ( .A(n474), .B(n475), .Y(n479) );
  INVX1 U422 ( .A(sram_addr[17]), .Y(n476) );
  OAI21X1 U423 ( .A(n362), .B(n481), .C(n482), .Y(n250) );
  MUX2X1 U424 ( .B(n483), .A(n484), .S(srambaseaddr[18]), .Y(n482) );
  XOR2X1 U425 ( .A(n485), .B(n486), .Y(srambaseaddr[18]) );
  XOR2X1 U426 ( .A(height[9]), .B(height[11]), .Y(n486) );
  OAI21X1 U427 ( .A(n487), .B(n488), .C(n489), .Y(n485) );
  OAI21X1 U428 ( .A(height[10]), .B(n490), .C(height[8]), .Y(n489) );
  INVX1 U429 ( .A(height[10]), .Y(n488) );
  INVX1 U430 ( .A(n490), .Y(n487) );
  OAI21X1 U431 ( .A(n491), .B(srambaseaddr[17]), .C(n492), .Y(n484) );
  INVX1 U432 ( .A(n478), .Y(n492) );
  OAI21X1 U433 ( .A(n491), .B(srambaseaddr[16]), .C(n473), .Y(n478) );
  INVX1 U434 ( .A(n493), .Y(n473) );
  OAI22X1 U435 ( .A(n383), .B(n494), .C(n384), .D(n495), .Y(n493) );
  NOR2X1 U436 ( .A(n365), .B(n366), .Y(n491) );
  NOR2X1 U437 ( .A(n475), .B(n496), .Y(n483) );
  OR2X1 U438 ( .A(n480), .B(n474), .Y(n496) );
  AOI22X1 U439 ( .A(n494), .B(n366), .C(n365), .D(n495), .Y(n474) );
  INVX1 U440 ( .A(n469), .Y(n497) );
  OAI21X1 U441 ( .A(n498), .B(n453), .C(n499), .Y(n469) );
  OAI21X1 U442 ( .A(srambaseaddr[14]), .B(n456), .C(right[14]), .Y(n499) );
  INVX1 U443 ( .A(n456), .Y(n498) );
  OAI21X1 U444 ( .A(n500), .B(n442), .C(n501), .Y(n456) );
  OAI21X1 U445 ( .A(srambaseaddr[13]), .B(n445), .C(right[13]), .Y(n501) );
  INVX1 U446 ( .A(n445), .Y(n500) );
  OAI21X1 U447 ( .A(n502), .B(n431), .C(n503), .Y(n445) );
  OAI21X1 U448 ( .A(srambaseaddr[12]), .B(n434), .C(right[12]), .Y(n503) );
  INVX1 U449 ( .A(n434), .Y(n502) );
  OAI21X1 U450 ( .A(n504), .B(n420), .C(n505), .Y(n434) );
  OAI21X1 U451 ( .A(srambaseaddr[11]), .B(n423), .C(right[11]), .Y(n505) );
  INVX1 U452 ( .A(n423), .Y(n504) );
  OAI21X1 U453 ( .A(n506), .B(n507), .C(n508), .Y(n423) );
  OAI21X1 U454 ( .A(srambaseaddr[10]), .B(n411), .C(right[10]), .Y(n508) );
  INVX1 U455 ( .A(n411), .Y(n506) );
  OAI21X1 U456 ( .A(n401), .B(n509), .C(n510), .Y(n411) );
  OAI21X1 U457 ( .A(srambaseaddr[9]), .B(n511), .C(right[9]), .Y(n510) );
  INVX1 U458 ( .A(n511), .Y(n401) );
  OAI21X1 U459 ( .A(n112), .B(n391), .C(n512), .Y(n511) );
  OAI21X1 U460 ( .A(n513), .B(right[8]), .C(srambaseaddr[8]), .Y(n512) );
  INVX1 U461 ( .A(n391), .Y(n513) );
  NAND2X1 U462 ( .A(right[7]), .B(srambaseaddr[7]), .Y(n391) );
  INVX1 U463 ( .A(right[8]), .Y(n112) );
  OAI21X1 U464 ( .A(n24), .B(n152), .C(n18), .Y(n365) );
  NAND2X1 U465 ( .A(n236), .B(n514), .Y(n18) );
  INVX1 U466 ( .A(n383), .Y(n366) );
  OAI21X1 U467 ( .A(n144), .B(n215), .C(n210), .Y(n383) );
  INVX1 U468 ( .A(n143), .Y(n215) );
  NAND2X1 U469 ( .A(n360), .B(n236), .Y(n143) );
  INVX1 U470 ( .A(n211), .Y(n236) );
  NAND3X1 U471 ( .A(n147), .B(n145), .C(curr[0]), .Y(n211) );
  INVX1 U472 ( .A(n514), .Y(n360) );
  OAI21X1 U473 ( .A(n515), .B(n516), .C(n517), .Y(n514) );
  OR2X1 U474 ( .A(n518), .B(n519), .Y(n516) );
  NAND3X1 U475 ( .A(left[9]), .B(N61), .C(n520), .Y(n519) );
  NOR2X1 U476 ( .A(n126), .B(n124), .Y(n520) );
  INVX1 U477 ( .A(N60), .Y(n124) );
  INVX1 U478 ( .A(N59), .Y(n126) );
  NAND3X1 U479 ( .A(N58), .B(N57), .C(n521), .Y(n518) );
  NOR2X1 U480 ( .A(n223), .B(n139), .Y(n521) );
  INVX1 U481 ( .A(N56), .Y(n139) );
  INVX1 U482 ( .A(N55), .Y(n223) );
  OR2X1 U483 ( .A(n522), .B(n523), .Y(n515) );
  NAND3X1 U484 ( .A(n102), .B(n1), .C(n524), .Y(n523) );
  NOR2X1 U485 ( .A(n5), .B(left[12]), .Y(n524) );
  INVX1 U486 ( .A(left[10]), .Y(n102) );
  NAND3X1 U487 ( .A(n88), .B(n86), .C(n525), .Y(n522) );
  NOR2X1 U488 ( .A(left[8]), .B(left[7]), .Y(n525) );
  INVX1 U489 ( .A(left[15]), .Y(n86) );
  INVX1 U490 ( .A(left[14]), .Y(n88) );
  INVX1 U491 ( .A(n526), .Y(n144) );
  OAI21X1 U492 ( .A(n527), .B(n464), .C(n528), .Y(n494) );
  OAI21X1 U493 ( .A(srambaseaddr[15]), .B(n467), .C(left[15]), .Y(n528) );
  INVX1 U494 ( .A(srambaseaddr[15]), .Y(n464) );
  XOR2X1 U495 ( .A(n529), .B(n530), .Y(srambaseaddr[15]) );
  XOR2X1 U496 ( .A(height[8]), .B(height[6]), .Y(n530) );
  INVX1 U497 ( .A(n467), .Y(n527) );
  OAI21X1 U498 ( .A(n531), .B(n453), .C(n532), .Y(n467) );
  OAI21X1 U499 ( .A(srambaseaddr[14]), .B(n457), .C(left[14]), .Y(n532) );
  INVX1 U500 ( .A(srambaseaddr[14]), .Y(n453) );
  XOR2X1 U501 ( .A(n533), .B(n534), .Y(srambaseaddr[14]) );
  XOR2X1 U502 ( .A(height[7]), .B(height[5]), .Y(n534) );
  INVX1 U503 ( .A(n457), .Y(n531) );
  OAI21X1 U504 ( .A(n535), .B(n442), .C(n536), .Y(n457) );
  OAI21X1 U505 ( .A(srambaseaddr[13]), .B(n446), .C(n5), .Y(n536) );
  INVX1 U506 ( .A(srambaseaddr[13]), .Y(n442) );
  XOR2X1 U507 ( .A(n537), .B(n538), .Y(srambaseaddr[13]) );
  XOR2X1 U508 ( .A(height[6]), .B(height[4]), .Y(n538) );
  INVX1 U509 ( .A(n446), .Y(n535) );
  OAI21X1 U510 ( .A(n539), .B(n431), .C(n540), .Y(n446) );
  OAI21X1 U511 ( .A(srambaseaddr[12]), .B(n435), .C(left[12]), .Y(n540) );
  INVX1 U512 ( .A(srambaseaddr[12]), .Y(n431) );
  XOR2X1 U513 ( .A(n541), .B(n542), .Y(srambaseaddr[12]) );
  XOR2X1 U514 ( .A(height[5]), .B(height[3]), .Y(n542) );
  INVX1 U515 ( .A(n435), .Y(n539) );
  OAI21X1 U516 ( .A(n543), .B(n420), .C(n544), .Y(n435) );
  OAI21X1 U517 ( .A(srambaseaddr[11]), .B(n424), .C(n2), .Y(n544) );
  INVX1 U518 ( .A(srambaseaddr[11]), .Y(n420) );
  XOR2X1 U519 ( .A(n545), .B(n546), .Y(srambaseaddr[11]) );
  XOR2X1 U520 ( .A(n547), .B(height[4]), .Y(n545) );
  INVX1 U521 ( .A(n424), .Y(n543) );
  OAI21X1 U522 ( .A(n415), .B(n507), .C(n548), .Y(n424) );
  OAI21X1 U523 ( .A(srambaseaddr[10]), .B(n412), .C(left[10]), .Y(n548) );
  INVX1 U524 ( .A(n507), .Y(srambaseaddr[10]) );
  XOR2X1 U525 ( .A(n549), .B(n550), .Y(n507) );
  XOR2X1 U526 ( .A(srambaseaddr[8]), .B(height[3]), .Y(n550) );
  INVX1 U527 ( .A(n412), .Y(n415) );
  OAI21X1 U528 ( .A(n402), .B(n509), .C(n551), .Y(n412) );
  OAI21X1 U529 ( .A(srambaseaddr[9]), .B(n552), .C(left[9]), .Y(n551) );
  INVX1 U530 ( .A(n509), .Y(srambaseaddr[9]) );
  XOR2X1 U531 ( .A(n547), .B(srambaseaddr[7]), .Y(n509) );
  INVX1 U532 ( .A(n552), .Y(n402) );
  OAI21X1 U533 ( .A(n110), .B(n392), .C(n553), .Y(n552) );
  OAI21X1 U534 ( .A(n554), .B(left[8]), .C(srambaseaddr[8]), .Y(n553) );
  INVX1 U535 ( .A(n392), .Y(n554) );
  NAND2X1 U536 ( .A(left[7]), .B(srambaseaddr[7]), .Y(n392) );
  INVX1 U537 ( .A(left[8]), .Y(n110) );
  INVX1 U538 ( .A(srambaseaddr[17]), .Y(n480) );
  XOR2X1 U539 ( .A(n490), .B(n555), .Y(srambaseaddr[17]) );
  XOR2X1 U540 ( .A(height[8]), .B(height[10]), .Y(n555) );
  OAI21X1 U541 ( .A(n556), .B(n557), .C(n558), .Y(n490) );
  OAI21X1 U542 ( .A(height[7]), .B(n559), .C(height[9]), .Y(n558) );
  INVX1 U543 ( .A(height[7]), .Y(n557) );
  INVX1 U544 ( .A(srambaseaddr[16]), .Y(n475) );
  XOR2X1 U545 ( .A(n559), .B(n560), .Y(srambaseaddr[16]) );
  XOR2X1 U546 ( .A(height[9]), .B(height[7]), .Y(n560) );
  INVX1 U547 ( .A(n556), .Y(n559) );
  AOI21X1 U548 ( .A(n529), .B(height[6]), .C(n561), .Y(n556) );
  INVX1 U549 ( .A(n562), .Y(n561) );
  OAI21X1 U550 ( .A(height[6]), .B(n529), .C(height[8]), .Y(n562) );
  OAI21X1 U551 ( .A(n563), .B(n564), .C(n565), .Y(n529) );
  OAI21X1 U552 ( .A(height[5]), .B(n533), .C(height[7]), .Y(n565) );
  INVX1 U553 ( .A(n563), .Y(n533) );
  INVX1 U554 ( .A(height[5]), .Y(n564) );
  AOI21X1 U555 ( .A(n537), .B(height[4]), .C(n566), .Y(n563) );
  INVX1 U556 ( .A(n567), .Y(n566) );
  OAI21X1 U557 ( .A(height[4]), .B(n537), .C(height[6]), .Y(n567) );
  OAI21X1 U558 ( .A(n568), .B(n569), .C(n570), .Y(n537) );
  OAI21X1 U559 ( .A(height[3]), .B(n541), .C(height[5]), .Y(n570) );
  INVX1 U560 ( .A(n541), .Y(n568) );
  OAI21X1 U561 ( .A(n546), .B(n547), .C(n571), .Y(n541) );
  OAI21X1 U562 ( .A(height[2]), .B(n572), .C(height[4]), .Y(n571) );
  INVX1 U563 ( .A(height[2]), .Y(n547) );
  INVX1 U564 ( .A(n572), .Y(n546) );
  OAI21X1 U565 ( .A(n549), .B(n569), .C(n573), .Y(n572) );
  OAI21X1 U566 ( .A(n574), .B(height[3]), .C(srambaseaddr[8]), .Y(n573) );
  INVX1 U567 ( .A(n549), .Y(n574) );
  INVX1 U568 ( .A(height[3]), .Y(n569) );
  NAND2X1 U569 ( .A(height[2]), .B(srambaseaddr[7]), .Y(n549) );
  INVX1 U570 ( .A(sram_addr[18]), .Y(n481) );
  OAI21X1 U571 ( .A(n80), .B(n24), .C(n210), .Y(n471) );
  NOR2X1 U572 ( .A(n358), .B(curr[2]), .Y(n210) );
  OAI21X1 U573 ( .A(color_en), .B(n526), .C(n575), .Y(n358) );
  NOR2X1 U574 ( .A(n82), .B(n83), .Y(n575) );
  INVX1 U575 ( .A(n19), .Y(n83) );
  NAND3X1 U576 ( .A(curr[0]), .B(n145), .C(curr[1]), .Y(n19) );
  INVX1 U577 ( .A(n22), .Y(n82) );
  NAND2X1 U578 ( .A(curr[2]), .B(curr[1]), .Y(n22) );
  NAND3X1 U579 ( .A(n147), .B(n145), .C(n361), .Y(n526) );
  INVX1 U580 ( .A(curr[1]), .Y(n147) );
  NAND3X1 U581 ( .A(n361), .B(n145), .C(curr[1]), .Y(n24) );
  INVX1 U582 ( .A(curr[2]), .Y(n145) );
  INVX1 U583 ( .A(curr[0]), .Y(n361) );
  INVX1 U584 ( .A(n152), .Y(n80) );
  OAI21X1 U585 ( .A(n576), .B(n577), .C(n517), .Y(n152) );
  INVX1 U586 ( .A(sram_val), .Y(n517) );
  OR2X1 U587 ( .A(n578), .B(n579), .Y(n577) );
  NAND3X1 U588 ( .A(n141), .B(n212), .C(n580), .Y(n579) );
  NOR2X1 U589 ( .A(N80), .B(N79), .Y(n580) );
  INVX1 U590 ( .A(N78), .Y(n212) );
  INVX1 U591 ( .A(N77), .Y(n141) );
  NAND3X1 U592 ( .A(n128), .B(n196), .C(n581), .Y(n578) );
  NOR2X1 U593 ( .A(right[10]), .B(N83), .Y(n581) );
  INVX1 U594 ( .A(N82), .Y(n196) );
  INVX1 U595 ( .A(N81), .Y(n128) );
  OR2X1 U596 ( .A(n582), .B(n583), .Y(n576) );
  NAND3X1 U597 ( .A(n171), .B(n97), .C(n584), .Y(n583) );
  NOR2X1 U598 ( .A(right[14]), .B(right[13]), .Y(n584) );
  INVX1 U599 ( .A(right[12]), .Y(n97) );
  INVX1 U600 ( .A(right[11]), .Y(n171) );
  NOR2X1 U601 ( .A(right[9]), .B(right[8]), .Y(n585) );
  INVX1 U602 ( .A(right[7]), .Y(n188) );
endmodule


module colorloop ( zbuf_val, sram_val, clk, n_rst, height, .rgb_val({
        \rgb_val[r][7] , \rgb_val[r][6] , \rgb_val[r][5] , \rgb_val[r][4] , 
        \rgb_val[r][3] , \rgb_val[r][2] , \rgb_val[r][1] , \rgb_val[r][0] , 
        \rgb_val[g][7] , \rgb_val[g][6] , \rgb_val[g][5] , \rgb_val[g][4] , 
        \rgb_val[g][3] , \rgb_val[g][2] , \rgb_val[g][1] , \rgb_val[g][0] , 
        \rgb_val[b][7] , \rgb_val[b][6] , \rgb_val[b][5] , \rgb_val[b][4] , 
        \rgb_val[b][3] , \rgb_val[b][2] , \rgb_val[b][1] , \rgb_val[b][0] }), 
    .ver({\ver[p][x][15] , \ver[p][x][14] , \ver[p][x][13] , \ver[p][x][12] , 
        \ver[p][x][11] , \ver[p][x][10] , \ver[p][x][9] , \ver[p][x][8] , 
        \ver[p][x][7] , \ver[p][x][6] , \ver[p][x][5] , \ver[p][x][4] , 
        \ver[p][x][3] , \ver[p][x][2] , \ver[p][x][1] , \ver[p][x][0] , 
        \ver[p][y][15] , \ver[p][y][14] , \ver[p][y][13] , \ver[p][y][12] , 
        \ver[p][y][11] , \ver[p][y][10] , \ver[p][y][9] , \ver[p][y][8] , 
        \ver[p][y][7] , \ver[p][y][6] , \ver[p][y][5] , \ver[p][y][4] , 
        \ver[p][y][3] , \ver[p][y][2] , \ver[p][y][1] , \ver[p][y][0] , 
        \ver[p][z][15] , \ver[p][z][14] , \ver[p][z][13] , \ver[p][z][12] , 
        \ver[p][z][11] , \ver[p][z][10] , \ver[p][z][9] , \ver[p][z][8] , 
        \ver[p][z][7] , \ver[p][z][6] , \ver[p][z][5] , \ver[p][z][4] , 
        \ver[p][z][3] , \ver[p][z][2] , \ver[p][z][1] , \ver[p][z][0] , 
        \ver[q][x][15] , \ver[q][x][14] , \ver[q][x][13] , \ver[q][x][12] , 
        \ver[q][x][11] , \ver[q][x][10] , \ver[q][x][9] , \ver[q][x][8] , 
        \ver[q][x][7] , \ver[q][x][6] , \ver[q][x][5] , \ver[q][x][4] , 
        \ver[q][x][3] , \ver[q][x][2] , \ver[q][x][1] , \ver[q][x][0] , 
        \ver[q][y][15] , \ver[q][y][14] , \ver[q][y][13] , \ver[q][y][12] , 
        \ver[q][y][11] , \ver[q][y][10] , \ver[q][y][9] , \ver[q][y][8] , 
        \ver[q][y][7] , \ver[q][y][6] , \ver[q][y][5] , \ver[q][y][4] , 
        \ver[q][y][3] , \ver[q][y][2] , \ver[q][y][1] , \ver[q][y][0] , 
        \ver[q][z][15] , \ver[q][z][14] , \ver[q][z][13] , \ver[q][z][12] , 
        \ver[q][z][11] , \ver[q][z][10] , \ver[q][z][9] , \ver[q][z][8] , 
        \ver[q][z][7] , \ver[q][z][6] , \ver[q][z][5] , \ver[q][z][4] , 
        \ver[q][z][3] , \ver[q][z][2] , \ver[q][z][1] , \ver[q][z][0] , 
        \ver[r][x][15] , \ver[r][x][14] , \ver[r][x][13] , \ver[r][x][12] , 
        \ver[r][x][11] , \ver[r][x][10] , \ver[r][x][9] , \ver[r][x][8] , 
        \ver[r][x][7] , \ver[r][x][6] , \ver[r][x][5] , \ver[r][x][4] , 
        \ver[r][x][3] , \ver[r][x][2] , \ver[r][x][1] , \ver[r][x][0] , 
        \ver[r][y][15] , \ver[r][y][14] , \ver[r][y][13] , \ver[r][y][12] , 
        \ver[r][y][11] , \ver[r][y][10] , \ver[r][y][9] , \ver[r][y][8] , 
        \ver[r][y][7] , \ver[r][y][6] , \ver[r][y][5] , \ver[r][y][4] , 
        \ver[r][y][3] , \ver[r][y][2] , \ver[r][y][1] , \ver[r][y][0] , 
        \ver[r][z][15] , \ver[r][z][14] , \ver[r][z][13] , \ver[r][z][12] , 
        \ver[r][z][11] , \ver[r][z][10] , \ver[r][z][9] , \ver[r][z][8] , 
        \ver[r][z][7] , \ver[r][z][6] , \ver[r][z][5] , \ver[r][z][4] , 
        \ver[r][z][3] , \ver[r][z][2] , \ver[r][z][1] , \ver[r][z][0] }), 
        color_en, done, sram_addr, zbuf_addr, fb_addr, write_en, data_out, 
    .data_out_color({\data_out_color[r][7] , \data_out_color[r][6] , 
        \data_out_color[r][5] , \data_out_color[r][4] , \data_out_color[r][3] , 
        \data_out_color[r][2] , \data_out_color[r][1] , \data_out_color[r][0] , 
        \data_out_color[g][7] , \data_out_color[g][6] , \data_out_color[g][5] , 
        \data_out_color[g][4] , \data_out_color[g][3] , \data_out_color[g][2] , 
        \data_out_color[g][1] , \data_out_color[g][0] , \data_out_color[b][7] , 
        \data_out_color[b][6] , \data_out_color[b][5] , \data_out_color[b][4] , 
        \data_out_color[b][3] , \data_out_color[b][2] , \data_out_color[b][1] , 
        \data_out_color[b][0] }) );
  input [7:0] zbuf_val;
  input [15:0] height;
  output [18:0] sram_addr;
  output [18:0] zbuf_addr;
  output [18:0] fb_addr;
  output [7:0] data_out;
  input sram_val, clk, n_rst, \rgb_val[r][7] , \rgb_val[r][6] ,
         \rgb_val[r][5] , \rgb_val[r][4] , \rgb_val[r][3] , \rgb_val[r][2] ,
         \rgb_val[r][1] , \rgb_val[r][0] , \rgb_val[g][7] , \rgb_val[g][6] ,
         \rgb_val[g][5] , \rgb_val[g][4] , \rgb_val[g][3] , \rgb_val[g][2] ,
         \rgb_val[g][1] , \rgb_val[g][0] , \rgb_val[b][7] , \rgb_val[b][6] ,
         \rgb_val[b][5] , \rgb_val[b][4] , \rgb_val[b][3] , \rgb_val[b][2] ,
         \rgb_val[b][1] , \rgb_val[b][0] , \ver[p][x][15] , \ver[p][x][14] ,
         \ver[p][x][13] , \ver[p][x][12] , \ver[p][x][11] , \ver[p][x][10] ,
         \ver[p][x][9] , \ver[p][x][8] , \ver[p][x][7] , \ver[p][x][6] ,
         \ver[p][x][5] , \ver[p][x][4] , \ver[p][x][3] , \ver[p][x][2] ,
         \ver[p][x][1] , \ver[p][x][0] , \ver[p][y][15] , \ver[p][y][14] ,
         \ver[p][y][13] , \ver[p][y][12] , \ver[p][y][11] , \ver[p][y][10] ,
         \ver[p][y][9] , \ver[p][y][8] , \ver[p][y][7] , \ver[p][y][6] ,
         \ver[p][y][5] , \ver[p][y][4] , \ver[p][y][3] , \ver[p][y][2] ,
         \ver[p][y][1] , \ver[p][y][0] , \ver[p][z][15] , \ver[p][z][14] ,
         \ver[p][z][13] , \ver[p][z][12] , \ver[p][z][11] , \ver[p][z][10] ,
         \ver[p][z][9] , \ver[p][z][8] , \ver[p][z][7] , \ver[p][z][6] ,
         \ver[p][z][5] , \ver[p][z][4] , \ver[p][z][3] , \ver[p][z][2] ,
         \ver[p][z][1] , \ver[p][z][0] , \ver[q][x][15] , \ver[q][x][14] ,
         \ver[q][x][13] , \ver[q][x][12] , \ver[q][x][11] , \ver[q][x][10] ,
         \ver[q][x][9] , \ver[q][x][8] , \ver[q][x][7] , \ver[q][x][6] ,
         \ver[q][x][5] , \ver[q][x][4] , \ver[q][x][3] , \ver[q][x][2] ,
         \ver[q][x][1] , \ver[q][x][0] , \ver[q][y][15] , \ver[q][y][14] ,
         \ver[q][y][13] , \ver[q][y][12] , \ver[q][y][11] , \ver[q][y][10] ,
         \ver[q][y][9] , \ver[q][y][8] , \ver[q][y][7] , \ver[q][y][6] ,
         \ver[q][y][5] , \ver[q][y][4] , \ver[q][y][3] , \ver[q][y][2] ,
         \ver[q][y][1] , \ver[q][y][0] , \ver[q][z][15] , \ver[q][z][14] ,
         \ver[q][z][13] , \ver[q][z][12] , \ver[q][z][11] , \ver[q][z][10] ,
         \ver[q][z][9] , \ver[q][z][8] , \ver[q][z][7] , \ver[q][z][6] ,
         \ver[q][z][5] , \ver[q][z][4] , \ver[q][z][3] , \ver[q][z][2] ,
         \ver[q][z][1] , \ver[q][z][0] , \ver[r][x][15] , \ver[r][x][14] ,
         \ver[r][x][13] , \ver[r][x][12] , \ver[r][x][11] , \ver[r][x][10] ,
         \ver[r][x][9] , \ver[r][x][8] , \ver[r][x][7] , \ver[r][x][6] ,
         \ver[r][x][5] , \ver[r][x][4] , \ver[r][x][3] , \ver[r][x][2] ,
         \ver[r][x][1] , \ver[r][x][0] , \ver[r][y][15] , \ver[r][y][14] ,
         \ver[r][y][13] , \ver[r][y][12] , \ver[r][y][11] , \ver[r][y][10] ,
         \ver[r][y][9] , \ver[r][y][8] , \ver[r][y][7] , \ver[r][y][6] ,
         \ver[r][y][5] , \ver[r][y][4] , \ver[r][y][3] , \ver[r][y][2] ,
         \ver[r][y][1] , \ver[r][y][0] , \ver[r][z][15] , \ver[r][z][14] ,
         \ver[r][z][13] , \ver[r][z][12] , \ver[r][z][11] , \ver[r][z][10] ,
         \ver[r][z][9] , \ver[r][z][8] , \ver[r][z][7] , \ver[r][z][6] ,
         \ver[r][z][5] , \ver[r][z][4] , \ver[r][z][3] , \ver[r][z][2] ,
         \ver[r][z][1] , \ver[r][z][0] , color_en;
  output done, write_en, \data_out_color[r][7] , \data_out_color[r][6] ,
         \data_out_color[r][5] , \data_out_color[r][4] ,
         \data_out_color[r][3] , \data_out_color[r][2] ,
         \data_out_color[r][1] , \data_out_color[r][0] ,
         \data_out_color[g][7] , \data_out_color[g][6] ,
         \data_out_color[g][5] , \data_out_color[g][4] ,
         \data_out_color[g][3] , \data_out_color[g][2] ,
         \data_out_color[g][1] , \data_out_color[g][0] ,
         \data_out_color[b][7] , \data_out_color[b][6] ,
         \data_out_color[b][5] , \data_out_color[b][4] ,
         \data_out_color[b][3] , \data_out_color[b][2] ,
         \data_out_color[b][1] , \data_out_color[b][0] ;
  wire   data_ready, N36, n90, n93, n96, n99, n102, n105, n108, n111, n114,
         n117, n120, n123, n126, n129, n132, n135, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224;
  wire   [1:0] curr;
  wire   [15:0] height_count;
  wire   [1:0] next;
  assign done = N36;

  DFFSR \curr_reg[0]  ( .D(next[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr[0]) );
  DFFSR \curr_reg[1]  ( .D(next[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr[1]) );
  DFFSR \height_count_reg[14]  ( .D(n135), .CLK(clk), .R(n224), .S(n208), .Q(
        height_count[14]) );
  DFFSR \height_count_reg[0]  ( .D(n132), .CLK(clk), .R(n223), .S(n207), .Q(
        height_count[0]) );
  DFFSR \height_count_reg[1]  ( .D(n129), .CLK(clk), .R(n222), .S(n206), .Q(
        height_count[1]) );
  DFFSR \height_count_reg[2]  ( .D(n126), .CLK(clk), .R(n221), .S(n205), .Q(
        height_count[2]) );
  DFFSR \height_count_reg[3]  ( .D(n123), .CLK(clk), .R(n220), .S(n204), .Q(
        height_count[3]) );
  DFFSR \height_count_reg[4]  ( .D(n120), .CLK(clk), .R(n219), .S(n203), .Q(
        height_count[4]) );
  DFFSR \height_count_reg[5]  ( .D(n117), .CLK(clk), .R(n218), .S(n202), .Q(
        height_count[5]) );
  DFFSR \height_count_reg[6]  ( .D(n114), .CLK(clk), .R(n217), .S(n201), .Q(
        height_count[6]) );
  DFFSR \height_count_reg[7]  ( .D(n111), .CLK(clk), .R(n216), .S(n200), .Q(
        height_count[7]) );
  DFFSR \height_count_reg[8]  ( .D(n108), .CLK(clk), .R(n215), .S(n199), .Q(
        height_count[8]) );
  DFFSR \height_count_reg[9]  ( .D(n105), .CLK(clk), .R(n214), .S(n198), .Q(
        height_count[9]) );
  DFFSR \height_count_reg[10]  ( .D(n102), .CLK(clk), .R(n213), .S(n197), .Q(
        height_count[10]) );
  DFFSR \height_count_reg[11]  ( .D(n99), .CLK(clk), .R(n212), .S(n196), .Q(
        height_count[11]) );
  DFFSR \height_count_reg[12]  ( .D(n96), .CLK(clk), .R(n211), .S(n195), .Q(
        height_count[12]) );
  DFFSR \height_count_reg[13]  ( .D(n93), .CLK(clk), .R(n210), .S(n194), .Q(
        height_count[13]) );
  DFFSR \height_count_reg[15]  ( .D(n90), .CLK(clk), .R(n209), .S(n193), .Q(
        height_count[15]) );
  colorfill CF ( .zbuf_val(zbuf_val), .sram_val(sram_val), .clk(clk), .n_rst(
        n_rst), .height({height_count[15:7], n140, height_count[5], n141, 
        height_count[3:2], n138, n139}), .rgb_val({\rgb_val[r][7] , 
        \rgb_val[r][6] , \rgb_val[r][5] , \rgb_val[r][4] , \rgb_val[r][3] , 
        \rgb_val[r][2] , \rgb_val[r][1] , \rgb_val[r][0] , \rgb_val[g][7] , 
        \rgb_val[g][6] , \rgb_val[g][5] , \rgb_val[g][4] , \rgb_val[g][3] , 
        \rgb_val[g][2] , \rgb_val[g][1] , \rgb_val[g][0] , \rgb_val[b][7] , 
        \rgb_val[b][6] , \rgb_val[b][5] , \rgb_val[b][4] , \rgb_val[b][3] , 
        \rgb_val[b][2] , \rgb_val[b][1] , \rgb_val[b][0] }), .ver({
        \ver[p][x][15] , \ver[p][x][14] , \ver[p][x][13] , \ver[p][x][12] , 
        \ver[p][x][11] , \ver[p][x][10] , \ver[p][x][9] , \ver[p][x][8] , 
        \ver[p][x][7] , \ver[p][x][6] , \ver[p][x][5] , \ver[p][x][4] , 
        \ver[p][x][3] , \ver[p][x][2] , \ver[p][x][1] , \ver[p][x][0] , 
        \ver[p][y][15] , \ver[p][y][14] , \ver[p][y][13] , \ver[p][y][12] , 
        \ver[p][y][11] , \ver[p][y][10] , \ver[p][y][9] , \ver[p][y][8] , 
        \ver[p][y][7] , \ver[p][y][6] , \ver[p][y][5] , \ver[p][y][4] , 
        \ver[p][y][3] , \ver[p][y][2] , \ver[p][y][1] , \ver[p][y][0] , 
        \ver[p][z][15] , \ver[p][z][14] , \ver[p][z][13] , \ver[p][z][12] , 
        \ver[p][z][11] , \ver[p][z][10] , \ver[p][z][9] , \ver[p][z][8] , 
        \ver[p][z][7] , \ver[p][z][6] , \ver[p][z][5] , \ver[p][z][4] , 
        \ver[p][z][3] , \ver[p][z][2] , \ver[p][z][1] , \ver[p][z][0] , 
        \ver[q][x][15] , \ver[q][x][14] , \ver[q][x][13] , \ver[q][x][12] , 
        \ver[q][x][11] , \ver[q][x][10] , \ver[q][x][9] , \ver[q][x][8] , 
        \ver[q][x][7] , \ver[q][x][6] , \ver[q][x][5] , \ver[q][x][4] , 
        \ver[q][x][3] , \ver[q][x][2] , \ver[q][x][1] , \ver[q][x][0] , 
        \ver[q][y][15] , \ver[q][y][14] , \ver[q][y][13] , \ver[q][y][12] , 
        \ver[q][y][11] , \ver[q][y][10] , \ver[q][y][9] , \ver[q][y][8] , 
        \ver[q][y][7] , \ver[q][y][6] , \ver[q][y][5] , \ver[q][y][4] , 
        \ver[q][y][3] , \ver[q][y][2] , \ver[q][y][1] , \ver[q][y][0] , 
        \ver[q][z][15] , \ver[q][z][14] , \ver[q][z][13] , \ver[q][z][12] , 
        \ver[q][z][11] , \ver[q][z][10] , \ver[q][z][9] , \ver[q][z][8] , 
        \ver[q][z][7] , \ver[q][z][6] , \ver[q][z][5] , \ver[q][z][4] , 
        \ver[q][z][3] , \ver[q][z][2] , \ver[q][z][1] , \ver[q][z][0] , 
        \ver[r][x][15] , \ver[r][x][14] , \ver[r][x][13] , \ver[r][x][12] , 
        \ver[r][x][11] , \ver[r][x][10] , \ver[r][x][9] , \ver[r][x][8] , 
        \ver[r][x][7] , \ver[r][x][6] , \ver[r][x][5] , \ver[r][x][4] , 
        \ver[r][x][3] , \ver[r][x][2] , \ver[r][x][1] , \ver[r][x][0] , 
        \ver[r][y][15] , \ver[r][y][14] , \ver[r][y][13] , \ver[r][y][12] , 
        \ver[r][y][11] , \ver[r][y][10] , \ver[r][y][9] , \ver[r][y][8] , 
        \ver[r][y][7] , \ver[r][y][6] , \ver[r][y][5] , \ver[r][y][4] , 
        \ver[r][y][3] , \ver[r][y][2] , \ver[r][y][1] , \ver[r][y][0] , 
        \ver[r][z][15] , \ver[r][z][14] , \ver[r][z][13] , \ver[r][z][12] , 
        \ver[r][z][11] , \ver[r][z][10] , \ver[r][z][9] , \ver[r][z][8] , 
        \ver[r][z][7] , \ver[r][z][6] , \ver[r][z][5] , \ver[r][z][4] , 
        \ver[r][z][3] , \ver[r][z][2] , \ver[r][z][1] , \ver[r][z][0] }), 
        .color_en(color_en), .data_ready(data_ready), .sram_addr(sram_addr), 
        .zbuf_addr(zbuf_addr), .fb_addr(fb_addr), .write_en(write_en), 
        .data_out(data_out), .data_out_color({\data_out_color[r][7] , 
        \data_out_color[r][6] , \data_out_color[r][5] , \data_out_color[r][4] , 
        \data_out_color[r][3] , \data_out_color[r][2] , \data_out_color[r][1] , 
        \data_out_color[r][0] , \data_out_color[g][7] , \data_out_color[g][6] , 
        \data_out_color[g][5] , \data_out_color[g][4] , \data_out_color[g][3] , 
        \data_out_color[g][2] , \data_out_color[g][1] , \data_out_color[g][0] , 
        \data_out_color[b][7] , \data_out_color[b][6] , \data_out_color[b][5] , 
        \data_out_color[b][4] , \data_out_color[b][3] , \data_out_color[b][2] , 
        \data_out_color[b][1] , \data_out_color[b][0] }) );
  BUFX2 U142 ( .A(height_count[1]), .Y(n138) );
  INVX2 U143 ( .A(n173), .Y(n139) );
  BUFX2 U144 ( .A(height_count[6]), .Y(n140) );
  AND2X2 U145 ( .A(height_count[5]), .B(n140), .Y(n159) );
  BUFX2 U146 ( .A(height_count[4]), .Y(n141) );
  OAI22X1 U147 ( .A(curr[1]), .B(n142), .C(data_ready), .D(n143), .Y(next[1])
         );
  OAI21X1 U148 ( .A(curr[1]), .B(n144), .C(n145), .Y(next[0]) );
  MUX2X1 U149 ( .B(color_en), .A(n146), .S(curr[0]), .Y(n144) );
  AND2X1 U150 ( .A(n147), .B(n148), .Y(n146) );
  NOR2X1 U151 ( .A(n149), .B(n150), .Y(n148) );
  NAND3X1 U152 ( .A(n151), .B(n152), .C(n153), .Y(n150) );
  NOR2X1 U153 ( .A(n138), .B(height_count[15]), .Y(n153) );
  NAND3X1 U154 ( .A(n154), .B(n155), .C(n156), .Y(n149) );
  NOR2X1 U155 ( .A(height_count[9]), .B(n141), .Y(n156) );
  INVX1 U156 ( .A(height_count[3]), .Y(n155) );
  NOR2X1 U157 ( .A(n157), .B(n158), .Y(n147) );
  NAND3X1 U158 ( .A(height_count[8]), .B(height_count[7]), .C(n159), .Y(n158)
         );
  NAND3X1 U159 ( .A(n160), .B(n161), .C(n162), .Y(n157) );
  NOR2X1 U160 ( .A(height_count[10]), .B(height_count[0]), .Y(n162) );
  INVX1 U161 ( .A(height_count[12]), .Y(n161) );
  NAND2X1 U162 ( .A(height[15]), .B(n163), .Y(n193) );
  NAND2X1 U163 ( .A(height[13]), .B(n163), .Y(n194) );
  NAND2X1 U164 ( .A(height[12]), .B(n163), .Y(n195) );
  NAND2X1 U165 ( .A(height[11]), .B(n163), .Y(n196) );
  NAND2X1 U166 ( .A(height[10]), .B(n163), .Y(n197) );
  NAND2X1 U167 ( .A(height[9]), .B(n163), .Y(n198) );
  NAND2X1 U168 ( .A(height[8]), .B(n163), .Y(n199) );
  NAND2X1 U169 ( .A(height[7]), .B(n163), .Y(n200) );
  NAND2X1 U170 ( .A(height[6]), .B(n163), .Y(n201) );
  NAND2X1 U171 ( .A(height[5]), .B(n163), .Y(n202) );
  NAND2X1 U172 ( .A(height[4]), .B(n163), .Y(n203) );
  NAND2X1 U173 ( .A(height[3]), .B(n163), .Y(n204) );
  NAND2X1 U174 ( .A(height[2]), .B(n163), .Y(n205) );
  NAND2X1 U175 ( .A(height[1]), .B(n163), .Y(n206) );
  NAND2X1 U176 ( .A(height[0]), .B(n163), .Y(n207) );
  NAND2X1 U177 ( .A(height[14]), .B(n163), .Y(n208) );
  INVX1 U178 ( .A(n_rst), .Y(n163) );
  OR2X1 U179 ( .A(n_rst), .B(height[15]), .Y(n209) );
  OR2X1 U180 ( .A(n_rst), .B(height[13]), .Y(n210) );
  OR2X1 U181 ( .A(n_rst), .B(height[12]), .Y(n211) );
  OR2X1 U182 ( .A(n_rst), .B(height[11]), .Y(n212) );
  OR2X1 U183 ( .A(n_rst), .B(height[10]), .Y(n213) );
  OR2X1 U184 ( .A(n_rst), .B(height[9]), .Y(n214) );
  OR2X1 U185 ( .A(n_rst), .B(height[8]), .Y(n215) );
  OR2X1 U186 ( .A(n_rst), .B(height[7]), .Y(n216) );
  OR2X1 U187 ( .A(n_rst), .B(height[6]), .Y(n217) );
  OR2X1 U188 ( .A(n_rst), .B(height[5]), .Y(n218) );
  OR2X1 U189 ( .A(n_rst), .B(height[4]), .Y(n219) );
  OR2X1 U190 ( .A(n_rst), .B(height[3]), .Y(n220) );
  OR2X1 U191 ( .A(n_rst), .B(height[2]), .Y(n221) );
  OR2X1 U192 ( .A(n_rst), .B(height[1]), .Y(n222) );
  OR2X1 U193 ( .A(n_rst), .B(height[0]), .Y(n223) );
  OR2X1 U194 ( .A(n_rst), .B(height[14]), .Y(n224) );
  XOR2X1 U195 ( .A(n160), .B(n164), .Y(n99) );
  NAND2X1 U196 ( .A(height_count[10]), .B(n165), .Y(n164) );
  INVX1 U197 ( .A(height_count[11]), .Y(n160) );
  XOR2X1 U198 ( .A(height_count[12]), .B(n166), .Y(n96) );
  XOR2X1 U199 ( .A(n151), .B(n167), .Y(n93) );
  NAND2X1 U200 ( .A(n166), .B(height_count[12]), .Y(n167) );
  INVX1 U201 ( .A(height_count[13]), .Y(n151) );
  XOR2X1 U202 ( .A(height_count[15]), .B(n168), .Y(n90) );
  NOR2X1 U203 ( .A(n169), .B(n152), .Y(n168) );
  XOR2X1 U204 ( .A(n152), .B(n169), .Y(n135) );
  NAND3X1 U205 ( .A(height_count[13]), .B(height_count[12]), .C(n166), .Y(n169) );
  NOR2X1 U206 ( .A(n143), .B(n170), .Y(n166) );
  NAND3X1 U207 ( .A(height_count[10]), .B(n171), .C(height_count[11]), .Y(n170) );
  INVX1 U208 ( .A(n172), .Y(n171) );
  INVX1 U209 ( .A(height_count[14]), .Y(n152) );
  XOR2X1 U210 ( .A(n173), .B(n145), .Y(n132) );
  XOR2X1 U211 ( .A(n138), .B(n174), .Y(n129) );
  NOR2X1 U212 ( .A(n173), .B(n145), .Y(n174) );
  NAND2X1 U213 ( .A(data_ready), .B(n175), .Y(n145) );
  INVX1 U214 ( .A(height_count[0]), .Y(n173) );
  XOR2X1 U215 ( .A(n154), .B(n176), .Y(n126) );
  XOR2X1 U216 ( .A(height_count[3]), .B(n177), .Y(n123) );
  NOR2X1 U217 ( .A(n154), .B(n176), .Y(n177) );
  NAND2X1 U218 ( .A(n178), .B(n175), .Y(n176) );
  INVX1 U219 ( .A(height_count[2]), .Y(n154) );
  XOR2X1 U220 ( .A(n141), .B(n179), .Y(n120) );
  XNOR2X1 U221 ( .A(height_count[5]), .B(n180), .Y(n117) );
  NAND2X1 U222 ( .A(n179), .B(n141), .Y(n180) );
  NOR2X1 U223 ( .A(n181), .B(n143), .Y(n179) );
  XOR2X1 U224 ( .A(n140), .B(n182), .Y(n114) );
  XNOR2X1 U225 ( .A(height_count[7]), .B(n183), .Y(n111) );
  NAND2X1 U226 ( .A(n182), .B(n140), .Y(n183) );
  NOR2X1 U227 ( .A(n184), .B(n143), .Y(n182) );
  XOR2X1 U228 ( .A(n185), .B(n186), .Y(n108) );
  XOR2X1 U229 ( .A(height_count[9]), .B(n187), .Y(n105) );
  NOR2X1 U230 ( .A(n185), .B(n186), .Y(n187) );
  NAND2X1 U231 ( .A(n188), .B(n175), .Y(n186) );
  INVX1 U232 ( .A(n143), .Y(n175) );
  INVX1 U233 ( .A(height_count[8]), .Y(n185) );
  XOR2X1 U234 ( .A(height_count[10]), .B(n165), .Y(n102) );
  NOR2X1 U235 ( .A(n172), .B(n143), .Y(n165) );
  NAND2X1 U236 ( .A(curr[1]), .B(n142), .Y(n143) );
  INVX1 U237 ( .A(curr[0]), .Y(n142) );
  NAND3X1 U238 ( .A(n188), .B(height_count[8]), .C(height_count[9]), .Y(n172)
         );
  INVX1 U239 ( .A(n189), .Y(n188) );
  NAND3X1 U240 ( .A(height_count[7]), .B(n140), .C(n190), .Y(n189) );
  INVX1 U241 ( .A(n184), .Y(n190) );
  NAND3X1 U242 ( .A(n191), .B(height_count[5]), .C(n141), .Y(n184) );
  INVX1 U243 ( .A(n181), .Y(n191) );
  NAND3X1 U244 ( .A(height_count[2]), .B(n178), .C(height_count[3]), .Y(n181)
         );
  INVX1 U245 ( .A(n192), .Y(n178) );
  NAND3X1 U246 ( .A(height_count[0]), .B(data_ready), .C(n138), .Y(n192) );
  AND2X1 U247 ( .A(curr[1]), .B(curr[0]), .Y(N36) );
endmodule

