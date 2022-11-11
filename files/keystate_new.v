`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2021 08:29:19 AM
// Design Name: 
// Module Name: keystate_new
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


module keystate_new(clk, state, key);
    input clk;
    input [1023:0] state;
    output [1087:0] key;

    
    reg [63:0] k0 = 64'b0; reg [63:0] k1; reg [63:0] k2; reg [63:0] k3;
    reg [63:0] k4; reg [63:0] k5; reg [63:0] k6; reg [63:0] k7;
    reg [63:0] k8; reg [63:0] k9; reg [63:0] k10; reg [63:0] k11;
    reg [63:0] k12; reg [63:0] k13; reg [63:0] k14; reg [63:0] k15;
    wire [63:0] temp0; wire [63:0] temp1; wire [63:0] temp2; wire [63:0] temp3;
    wire [63:0] temp4; wire [63:0] temp5; wire [63:0] temp6; wire [63:0] temp7;
    wire [63:0] temp8; wire [63:0] temp9; wire [63:0] temp10; wire [63:0] temp11;
    wire [63:0] temp12; wire [63:0] temp13; wire [63:0] temp14; wire [63:0] temp15;
    reg [1023:0] s1; reg [1023:0] s2; reg [1023:0] s3;
    reg [1023:0] s4; reg [1023:0] s5; reg [1023:0] s6; reg [1023:0] s7;
    reg [1023:0] s8; reg [1023:0] s9; reg [1023:0] s10; reg [1023:0] s11;
    reg [1023:0] s12; reg [1023:0] s13; reg [1023:0] s14; reg [1023:0] s15;
    
    
    assign temp0 = k0 ^ state[1023:960];
    assign temp1 = k1 ^ s1[959:896];
    assign temp2 = k2 ^ s2[895:832];
    assign temp3 = k3 ^ s3[831:768];
    assign temp4 = k4 ^ s4[767:704];
    assign temp5 = k5 ^ s5[703:640];
    assign temp6 = k6 ^ s6[639:576];
    assign temp7 = k7 ^ s7[575:512];  
    assign temp8 = k8 ^ s8[511:448];
    assign temp9 = k9 ^ s9[447:384];
    assign temp10 = k10 ^ s10[383:320];
    assign temp11 = k11 ^ s11[319:256];   
    assign temp12 = k12 ^ s12[255:192];
    assign temp13 = k13 ^ s13[191:128];
    assign temp14 = k14 ^ s14[127:64];
    assign temp15 = k15 ^ s15[63:0];
    
    assign key = { s15 , (temp15 ^ 64'h5555555555555555) };
    
    always @ (posedge clk)
		k1 <= temp0;	

    always @ (posedge clk)
		k2 <= temp1;
	  
    always @ (posedge clk)
		k3 <= temp2;	  
		
    always @ (posedge clk)
		k4 <= temp3;
		
	always @ (posedge clk)
		k5 <= temp4;	  
		
    always @ (posedge clk)
		k6 <= temp5;
	  
    always @ (posedge clk)
		k7 <= temp6;	  
		
    always @ (posedge clk)
		k8 <= temp7;
		
	always @ (posedge clk)
		k9 <= temp8;	  
		
    always @ (posedge clk)
		k10 <= temp9;
	  
    always @ (posedge clk)
		k11 <= temp10;	  
		
    always @ (posedge clk)
		k12 <= temp11;
		
	always @ (posedge clk)
		k13 <= temp12;	  
		
    always @ (posedge clk)
		k14 <= temp13;
	  
    always @ (posedge clk)
		k15 <= temp14;	  
		
    always @ (posedge clk)
		s1 <= state;	

    always @ (posedge clk)
		s2 <= s1;
	  
    always @ (posedge clk)
		s3 <= s2;	  
		
    always @ (posedge clk)
		s4 <= s3;
		
	always @ (posedge clk)
		s5 <= s4;	  
		
    always @ (posedge clk)
		s6 <= s5;
	  
    always @ (posedge clk)
		s7 <= s6;	  
		
    always @ (posedge clk)
		s8 <= s7;
		
	always @ (posedge clk)
		s9 <= s8;	  
		
    always @ (posedge clk)
		s10 <= s9;
	  
    always @ (posedge clk)
		s11 <= s10;	  
		
    always @ (posedge clk)
		s12 <= s11;
		
	always @ (posedge clk)
		s13 <= s12;	  
		
    always @ (posedge clk)
		s14 <= s13;
	  
    always @ (posedge clk)
		s15 <= s14;	  
    
endmodule
