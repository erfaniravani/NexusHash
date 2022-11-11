`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2021 03:35:32 AM
// Design Name: 
// Module Name: mixloop
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


module mixloop(clk, d, v, f);
    input clk;
    input [7:0] d;
    input [1023:0] v;
    output [1023:0] f;
    
    wire [63:0] mixout0;wire [63:0] mixout8;
    wire [63:0] mixout1;wire [63:0] mixout9;
    wire [63:0] mixout2;wire [63:0] mixout10;
    wire [63:0] mixout3;wire [63:0] mixout11;
    wire [63:0] mixout4;wire [63:0] mixout12;
    wire [63:0] mixout5;wire [63:0] mixout13;
    wire [63:0] mixout6;wire [63:0] mixout14;
    wire [63:0] mixout7;wire [63:0] mixout15;
    
    /*reg [63:0] mixin1;reg [63:0] mixin3;
    reg [63:0] mixin5;reg [63:0] mixin7;
    reg [63:0] mixin9;reg [63:0] mixin11;
    reg [63:0] mixin13;reg [63:0] mixin15;
    */
   mix1 M11(v[1023:960], v[959:896], mixout0);
   mix1 M12(v[895:832], v[831:768], mixout2);
   mix1 M13(v[767:704], v[703:640], mixout4);
   mix1 M14(v[639:576], v[575:512], mixout6);
   mix1 M15(v[511:448], v[447:384], mixout8);
   mix1 M16(v[383:320], v[319:256], mixout10);
   mix1 M17(v[255:192], v[191:128], mixout12);
   mix1 M18(v[127:64], v[63:0], mixout14);
   
 /*   always @ (posedge clk)
		mixin1 <= mixout0;
    always @ (posedge clk)
		mixin3 <= mixout2;
    always @ (posedge clk)
		mixin5 <= mixout4;
	always @ (posedge clk)
		mixin7 <= mixout6;
	always @ (posedge clk)
		mixin9 <= mixout8;
	always @ (posedge clk)
		mixin11 <= mixout10;
	always @ (posedge clk)
		mixin13 <= mixout12;
	always @ (posedge clk)
		mixin15 <= mixout14;
  */ 
   mix2 M21(v[959:896], mixout0, d, 8'd0, mixout1);
   mix2 M22(v[831:768], mixout2, d, 8'd1, mixout3);
   mix2 M23(v[703:640], mixout4, d, 8'd2, mixout5);
   mix2 M24(v[575:512], mixout6, d, 8'd3, mixout7);
   mix2 M25(v[447:384], mixout8, d, 8'd4, mixout9);
   mix2 M26(v[319:256], mixout10, d, 8'd5, mixout11);
   mix2 M27(v[191:128], mixout12, d, 8'd6, mixout13);
   mix2 M28(v[63:0], mixout14, d, 8'd7, mixout15);
   
   assign f = {mixout0, mixout1, mixout2, mixout3, mixout4,
               mixout5, mixout6, mixout7, mixout8, mixout9,
               mixout10, mixout11, mixout12, mixout13,
               mixout14, mixout15};
endmodule