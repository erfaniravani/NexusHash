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


module keystate_reverse(clk, key, state);
    input clk;
    input [1087:0] key;
    output [1023:0] state;

    
    reg [63:0] k0 = 64'b0; reg [63:0] k1; reg [63:0] k2; reg [63:0] k3;
    reg [63:0] k4; reg [63:0] k5; reg [63:0] k6; reg [63:0] k7;
    reg [63:0] k8; reg [63:0] k9; reg [63:0] k10; reg [63:0] k11;
    reg [63:0] k12; reg [63:0] k13; reg [63:0] k14; reg [63:0] k15;
    wire [63:0] temp0; wire [63:0] temp1; wire [63:0] temp2; wire [63:0] temp3;
    wire [63:0] temp4; wire [63:0] temp5; wire [63:0] temp6; wire [63:0] temp7;
    wire [63:0] temp8; wire [63:0] temp9; wire [63:0] temp10; wire [63:0] temp11;
    wire [63:0] temp12; wire [63:0] temp13; wire [63:0] temp14; wire [63:0] temp15;
    reg [1087:0] key1; reg [1087:0] key2; reg [1087:0] key3;
    reg [1087:0] key4; reg [1087:0] key5; reg [1087:0] key6; reg [1087:0] key7;
    reg [1087:0] key8; reg [1087:0] key9; reg [1087:0] key10; reg [1087:0] key11;
    reg [1087:0] key12; reg [1087:0] key13; reg [1087:0] key14; reg [1087:0] key15;
    
    
    assign temp0 = k0 ^ key[1087:1024];
    assign temp1 = k1 ^ key1[1023:960];
    assign temp2 = k2 ^ key2[959:896];
    assign temp3 = k3 ^ key3[895:832];
    assign temp4 = k4 ^ key4[831:768];
    assign temp5 = k5 ^ key5[767:704];
    assign temp6 = k6 ^ key6[703:640];
    assign temp7 = k7 ^ key7[639:576];  
    assign temp8 = k8 ^ key8[575:512];
    assign temp9 = k9 ^ key9[511:448];
    assign temp10 = k10 ^ key10[447:384];
    assign temp11 = k11 ^ key11[383:320];   
    assign temp12 = k12 ^ key12[319:256];
    assign temp13 = k13 ^ key13[255:192];
    assign temp14 = k14 ^ key14[191:128];
    assign temp15 = k15 ^ key15[127:64];
    
    //assign key = { key15 , (temp15 ^ 64'h5555555555555555) };
    assign state = ((temp15 ^ 64'h5555555555555555) == key15[63:0]) ? key15[1087:64] : 1024'b0;
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
		key1 <= key;	

    always @ (posedge clk)
		key2 <= key1;
	  
    always @ (posedge clk)
		key3 <= key2;	  
		
    always @ (posedge clk)
		key4 <= key3;
		
	always @ (posedge clk)
		key5 <= key4;	  
		
    always @ (posedge clk)
		key6 <= key5;
	  
    always @ (posedge clk)
		key7 <= key6;	  
		
    always @ (posedge clk)
		key8 <= key7;
		
	always @ (posedge clk)
		key9 <= key8;	  
		
    always @ (posedge clk)
		key10 <= key9;
	  
    always @ (posedge clk)
		key11 <= key10;	  
		
    always @ (posedge clk)
		key12 <= key11;
		
	always @ (posedge clk)
		key13 <= key12;	  
		
    always @ (posedge clk)
		key14 <= key13;
	  
    always @ (posedge clk)
		key15 <= key14;	  
    
endmodule
