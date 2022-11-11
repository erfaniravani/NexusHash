`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2021 04:31:05 AM
// Design Name: 
// Module Name: add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add(d, in1, in2, out);
    input [7:0] d;
    input [1023:0] in1;
    input [1023:0] in2;
    output [1023:0] out;
    
    wire [63:0] p1; wire [63:0] p2;
    wire [63:0] p3; wire [63:0] p4;
    wire [63:0] p5; wire [63:0] p6;
    wire [63:0] p7; wire [63:0] p8;
    wire [63:0] p9; wire [63:0] p10;
    wire [63:0] p11; wire [63:0] p12;
    wire [63:0] p13; wire [63:0] p14;
    wire [63:0] p15; wire [63:0] p16;
    
    assign p1 = in1[1023:960] + in2[1023:960];
    assign p2 = in1[959:896] + in2[959:896];
    assign p3 = in1[895:832] + in2[895:832];
    assign p4 = in1[831:768] + in2[831:768];
    assign p5 = in1[767:704] + in2[767:704];
    assign p6 = in1[703:640] + in2[703:640];
    assign p7 = in1[639:576] + in2[639:576];
    assign p8 = in1[575:512] + in2[575:512];
    assign p9 = in1[511:448] + in2[511:448];
    assign p10 = in1[447:384] + in2[447:384];
    assign p11 = in1[383:320] + in2[383:320];
    assign p12 = in1[319:256] + in2[319:256];
    assign p13 = in1[255:192] + in2[255:192];
    assign p14 = in1[191:128] + in2[191:128];
    assign p15 = in1[127:64] + in2[127:64];
    assign p16 = in1[63:0] + in2[63:0];

    assign out = (d%4 == 0) ? 
    {p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,
                  p14,p15,p16} : in1;
endmodule