`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2021 12:44:27 AM
// Design Name: 
// Module Name: threefish
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


module threefish_new(clk, message, subkey, tfout);
    input clk;
    input [1023:0] message;
    input [21503:0] subkey;
    output [1023:0] tfout;
    
    
    
    reg [21503:0] subkey1; reg [21503:0] subkey2; reg [21503:0] subkey3;
    reg [21503:0] subkey4; reg [21503:0] subkey5; reg [21503:0] subkey6;
    reg [21503:0] subkey7; reg [21503:0] subkey8; reg [21503:0] subkey9;
    reg [21503:0] subkey10; reg [21503:0] subkey11; reg [21503:0] subkey12;
    reg [21503:0] subkey13; reg [21503:0] subkey14; reg [21503:0] subkey15;
    reg [21503:0] subkey16; reg [21503:0] subkey17; reg [21503:0] subkey18;
    reg [21503:0] subkey19; reg [21503:0] subkey20; reg [21503:0] subkey21;
    reg [21503:0] subkey22; reg [21503:0] subkey23; reg [21503:0] subkey24;
    reg [21503:0] subkey25; reg [21503:0] subkey26; reg [21503:0] subkey27;
    reg [21503:0] subkey28; reg [21503:0] subkey29; reg [21503:0] subkey30;
    reg [21503:0] subkey31; reg [21503:0] subkey32; reg [21503:0] subkey33;
    reg [21503:0] subkey34; reg [21503:0] subkey35; reg [21503:0] subkey36;
    reg [21503:0] subkey37; reg [21503:0] subkey38; reg [21503:0] subkey39;
    reg [21503:0] subkey40; reg [21503:0] subkey41; reg [21503:0] subkey42;
    reg [21503:0] subkey43; reg [21503:0] subkey44; reg [21503:0] subkey45;
    reg [21503:0] subkey46; reg [21503:0] subkey47; reg [21503:0] subkey48;
    reg [21503:0] subkey49; reg [21503:0] subkey50; reg [21503:0] subkey51;
    reg [21503:0] subkey52; reg [21503:0] subkey53; reg [21503:0] subkey54;
    reg [21503:0] subkey55; reg [21503:0] subkey56; reg [21503:0] subkey57;
    reg [21503:0] subkey58; reg [21503:0] subkey59; reg [21503:0] subkey60;
    reg [21503:0] subkey61; reg [21503:0] subkey62; reg [21503:0] subkey63;
    reg [21503:0] subkey64; reg [21503:0] subkey65; reg [21503:0] subkey66;
    reg [21503:0] subkey67; reg [21503:0] subkey68; reg [21503:0] subkey69;
    reg [21503:0] subkey70; reg [21503:0] subkey71; reg [21503:0] subkey72;
    reg [21503:0] subkey73; reg [21503:0] subkey74; reg [21503:0] subkey75;
    reg [21503:0] subkey76; reg [21503:0] subkey77; reg [21503:0] subkey78;
    reg [21503:0] subkey79; reg [21503:0] subkey80;
    
                           wire [1023:0] round00_out;
  reg [1023:0] round01_in; wire [1023:0] round01_out;
  reg [1023:0] round02_in; wire [1023:0] round02_out;
  reg [1023:0] round03_in; wire [1023:0] round03_out;
  reg [1023:0] round04_in; wire [1023:0] round04_out;
  reg [1023:0] round05_in; wire [1023:0] round05_out;
  reg [1023:0] round06_in; wire [1023:0] round06_out;
  reg [1023:0] round07_in; wire [1023:0] round07_out;
  reg [1023:0] round08_in; wire [1023:0] round08_out;
  reg [1023:0] round09_in; wire [1023:0] round09_out;
  reg [1023:0] round10_in; wire [1023:0] round10_out;
  reg [1023:0] round11_in; wire [1023:0] round11_out;
  reg [1023:0] round12_in; wire [1023:0] round12_out;
  reg [1023:0] round13_in; wire [1023:0] round13_out;
  reg [1023:0] round14_in; wire [1023:0] round14_out;
  reg [1023:0] round15_in; wire [1023:0] round15_out;
  reg [1023:0] round16_in; wire [1023:0] round16_out;
  reg [1023:0] round17_in; wire [1023:0] round17_out;
  reg [1023:0] round18_in; wire [1023:0] round18_out;
  reg [1023:0] round19_in; wire [1023:0] round19_out;
  reg [1023:0] round20_in; wire [1023:0] round20_out;
  reg [1023:0] round21_in; wire [1023:0] round21_out;
  reg [1023:0] round22_in; wire [1023:0] round22_out;  
  reg [1023:0] round23_in; wire [1023:0] round23_out;
  reg [1023:0] round24_in; wire [1023:0] round24_out;  
  reg [1023:0] round25_in; wire [1023:0] round25_out;  
  reg [1023:0] round26_in; wire [1023:0] round26_out;  
  reg [1023:0] round27_in; wire [1023:0] round27_out;  
  reg [1023:0] round28_in; wire [1023:0] round28_out;  
  reg [1023:0] round29_in; wire [1023:0] round29_out;  
  reg [1023:0] round30_in; wire [1023:0] round30_out;  
  reg [1023:0] round31_in; wire [1023:0] round31_out;  
  reg [1023:0] round32_in; wire [1023:0] round32_out;  
  reg [1023:0] round33_in; wire [1023:0] round33_out;  
  reg [1023:0] round34_in; wire [1023:0] round34_out;  
  reg [1023:0] round35_in; wire [1023:0] round35_out;  
  reg [1023:0] round36_in; wire [1023:0] round36_out;  
  reg [1023:0] round37_in; wire [1023:0] round37_out;  
  reg [1023:0] round38_in; wire [1023:0] round38_out;  
  reg [1023:0] round39_in; wire [1023:0] round39_out;
  reg [1023:0] round40_in; wire [1023:0] round40_out;  
  reg [1023:0] round41_in; wire [1023:0] round41_out;  
  reg [1023:0] round42_in; wire [1023:0] round42_out;  
  reg [1023:0] round43_in; wire [1023:0] round43_out;  
  reg [1023:0] round44_in; wire [1023:0] round44_out;  
  reg [1023:0] round45_in; wire [1023:0] round45_out;  
  reg [1023:0] round46_in; wire [1023:0] round46_out;  
  reg [1023:0] round47_in; wire [1023:0] round47_out;  
  reg [1023:0] round48_in; wire [1023:0] round48_out;  
  reg [1023:0] round49_in; wire [1023:0] round49_out;
  reg [1023:0] round50_in; wire [1023:0] round50_out;  
  reg [1023:0] round51_in; wire [1023:0] round51_out;  
  reg [1023:0] round52_in; wire [1023:0] round52_out;  
  reg [1023:0] round53_in; wire [1023:0] round53_out;  
  reg [1023:0] round54_in; wire [1023:0] round54_out;  
  reg [1023:0] round55_in; wire [1023:0] round55_out;  
  reg [1023:0] round56_in; wire [1023:0] round56_out;  
  reg [1023:0] round57_in; wire [1023:0] round57_out;  
  reg [1023:0] round58_in; wire [1023:0] round58_out;  
  reg [1023:0] round59_in; wire [1023:0] round59_out;  
  reg [1023:0] round60_in; wire [1023:0] round60_out;  
  reg [1023:0] round61_in; wire [1023:0] round61_out;  
  reg [1023:0] round62_in; wire [1023:0] round62_out;  
  reg [1023:0] round63_in; wire [1023:0] round63_out;  
  reg [1023:0] round64_in; wire [1023:0] round64_out;  
  reg [1023:0] round65_in; wire [1023:0] round65_out;  
  reg [1023:0] round66_in; wire [1023:0] round66_out;  
  reg [1023:0] round67_in; wire [1023:0] round67_out;  
  reg [1023:0] round68_in; wire [1023:0] round68_out;  
  reg [1023:0] round69_in; wire [1023:0] round69_out;
  reg [1023:0] round70_in; wire [1023:0] round70_out;  
  reg [1023:0] round71_in; wire [1023:0] round71_out;  
  reg [1023:0] round72_in; wire [1023:0] round72_out;  
  reg [1023:0] round73_in; wire [1023:0] round73_out;  
  reg [1023:0] round74_in; wire [1023:0] round74_out;  
  reg [1023:0] round75_in; wire [1023:0] round75_out;  
  reg [1023:0] round76_in; wire [1023:0] round76_out;  
  reg [1023:0] round77_in; wire [1023:0] round77_out;  
  reg [1023:0] round78_in; wire [1023:0] round78_out;  
  reg [1023:0] round79_in; wire [1023:0] round79_out;
  
  
  reg [1023:0] final_ans;
  
  fishloop FL00(clk, 8'b0, message, subkey[1023:0], round00_out);
  fishloop FL01(clk, 8'd1, round01_in, subkey1[1023:0], round01_out);
  fishloop FL02(clk, 8'd2, round02_in, subkey2[1023:0], round02_out);
  fishloop FL03(clk, 8'd3, round03_in, subkey3[1023:0], round03_out);
  fishloop FL04(clk, 8'd4, round04_in, subkey4[2047:1024], round04_out);
  fishloop FL05(clk, 8'd5, round05_in, subkey5[2047:1024], round05_out);
  fishloop FL06(clk, 8'd6, round06_in, subkey6[2047:1024], round06_out);
  fishloop FL07(clk, 8'd7, round07_in, subkey7[2047:1024], round07_out);
  fishloop FL08(clk, 8'd8, round08_in, subkey8[3071:2048], round08_out);
  fishloop FL09(clk, 8'd9, round09_in, subkey9[3071:2048], round09_out);
  fishloop FL10(clk, 8'd10, round10_in, subkey10[3071:2048], round10_out);
  fishloop FL11(clk, 8'd11, round11_in, subkey11[3071:2048], round11_out);
  fishloop FL12(clk, 8'd12, round12_in, subkey12[4095:3072], round12_out);
  fishloop FL13(clk, 8'd13, round13_in, subkey13[4095:3072], round13_out);
  fishloop FL14(clk, 8'd14, round14_in, subkey14[4095:3072], round14_out);
  fishloop FL15(clk, 8'd15, round15_in, subkey15[4095:3072], round15_out);
  fishloop FL16(clk, 8'd16, round16_in, subkey16[5119:4096], round16_out); 
  fishloop FL17(clk, 8'd17, round17_in, subkey17[5119:4096], round17_out); 
  fishloop FL18(clk, 8'd18, round18_in, subkey18[5119:4096], round18_out); 
  fishloop FL19(clk, 8'd19, round19_in, subkey19[5119:4096], round19_out); 
                                                                        
     
  fishloop FL20(clk, 8'd20, round20_in, subkey20[6143:5120], round20_out);         
  fishloop FL21(clk, 8'd21, round21_in, subkey21[6143:5120], round21_out);      
  fishloop FL22(clk, 8'd22, round22_in, subkey22[6143:5120], round22_out);      
  fishloop FL23(clk, 8'd23, round23_in, subkey23[6143:5120], round23_out);      
  fishloop FL24(clk, 8'd24, round24_in, subkey24[7167:6144], round24_out);   
  fishloop FL25(clk, 8'd25, round25_in, subkey25[7167:6144], round25_out);   
  fishloop FL26(clk, 8'd26, round26_in, subkey26[7167:6144], round26_out);   
  fishloop FL27(clk, 8'd27, round27_in, subkey27[7167:6144], round27_out);   
  fishloop FL28(clk, 8'd28, round28_in, subkey28[8191:7168], round28_out);   
  fishloop FL29(clk, 8'd29, round29_in, subkey29[8191:7168], round29_out);   
  fishloop FL30(clk, 8'd30, round30_in, subkey30[8191:7168], round30_out); 
  fishloop FL31(clk, 8'd31, round31_in, subkey31[8191:7168], round31_out); 
  fishloop FL32(clk, 8'd32, round32_in, subkey32[9215:8192], round32_out); 
  fishloop FL33(clk, 8'd33, round33_in, subkey33[9215:8192], round33_out); 
  fishloop FL34(clk, 8'd34, round34_in, subkey34[9215:8192], round34_out); 
  fishloop FL35(clk, 8'd35, round35_in, subkey35[9215:8192], round35_out); 
  fishloop FL36(clk, 8'd36, round36_in, subkey36[10239:9216], round36_out); 
  fishloop FL37(clk, 8'd37, round37_in, subkey37[10239:9216], round37_out); 
  fishloop FL38(clk, 8'd38, round38_in, subkey38[10239:9216], round38_out); 
  fishloop FL39(clk, 8'd39, round39_in, subkey39[10239:9216], round39_out);
  
  fishloop FL40(clk, 8'd40, round40_in, subkey40[11263:10240], round40_out); 
  fishloop FL41(clk, 8'd41, round41_in, subkey41[11263:10240], round41_out); 
  fishloop FL42(clk, 8'd42, round42_in, subkey42[11263:10240], round42_out); 
  fishloop FL43(clk, 8'd43, round43_in, subkey43[11263:10240], round43_out); 
  fishloop FL44(clk, 8'd44, round44_in, subkey44[12287:11264], round44_out); 
  fishloop FL45(clk, 8'd45, round45_in, subkey45[12287:11264], round45_out); 
  fishloop FL46(clk, 8'd46, round46_in, subkey46[12287:11264], round46_out); 
  fishloop FL47(clk, 8'd47, round47_in, subkey47[12287:11264], round47_out); 
  fishloop FL48(clk, 8'd48, round48_in, subkey48[13311:12288], round48_out); 
  fishloop FL49(clk, 8'd49, round49_in, subkey49[13311:12288], round49_out); 
  fishloop FL50(clk, 8'd50, round50_in, subkey50[13311:12288], round50_out); 
  fishloop FL51(clk, 8'd51, round51_in, subkey51[13311:12288], round51_out); 
  fishloop FL52(clk, 8'd52, round52_in, subkey52[14335:13312], round52_out); 
  fishloop FL53(clk, 8'd53, round53_in, subkey53[14335:13312], round53_out); 
  fishloop FL54(clk, 8'd54, round54_in, subkey54[14335:13312], round54_out); 
  fishloop FL55(clk, 8'd55, round55_in, subkey55[14335:13312], round55_out); 
  fishloop FL56(clk, 8'd56, round56_in, subkey56[15359:14336], round56_out);
  fishloop FL57(clk, 8'd57, round57_in, subkey57[15359:14336], round57_out);
  fishloop FL58(clk, 8'd58, round58_in, subkey58[15359:14336], round58_out);
  fishloop FL59(clk, 8'd59, round59_in, subkey59[15359:14336], round59_out);    
     
  fishloop FL60(clk, 8'd60, round60_in, subkey60[16383:15360], round60_out); 
  fishloop FL61(clk, 8'd61, round61_in, subkey61[16383:15360], round61_out); 
  fishloop FL62(clk, 8'd62, round62_in, subkey62[16383:15360], round62_out); 
  fishloop FL63(clk, 8'd63, round63_in, subkey63[16383:15360], round63_out); 
  fishloop FL64(clk, 8'd64, round64_in, subkey64[17407:16384], round64_out); 
  fishloop FL65(clk, 8'd65, round65_in, subkey65[17407:16384], round65_out); 
  fishloop FL66(clk, 8'd66, round66_in, subkey66[17407:16384], round66_out); 
  fishloop FL67(clk, 8'd67, round67_in, subkey67[17407:16384], round67_out); 
  fishloop FL68(clk, 8'd68, round68_in, subkey68[18431:17408], round68_out); 
  fishloop FL69(clk, 8'd69, round69_in, subkey69[18431:17408], round69_out); 
  fishloop FL70(clk, 8'd70, round70_in, subkey70[18431:17408], round70_out); 
  fishloop FL71(clk, 8'd71, round71_in, subkey71[18431:17408], round71_out); 
  fishloop FL72(clk, 8'd72, round72_in, subkey72[19455:18432], round72_out); 
  fishloop FL73(clk, 8'd73, round73_in, subkey73[19455:18432], round73_out); 
  fishloop FL74(clk, 8'd74, round74_in, subkey74[19455:18432], round74_out); 
  fishloop FL75(clk, 8'd75, round75_in, subkey75[19455:18432], round75_out); 
  fishloop FL76(clk, 8'd76, round76_in, subkey76[20479:19456], round76_out);
  fishloop FL77(clk, 8'd77, round77_in, subkey77[20479:19456], round77_out);
  fishloop FL78(clk, 8'd78, round78_in, subkey78[20479:19456], round78_out);
  fishloop FL79(clk, 8'd79, round79_in, subkey79[20479:19456], round79_out);    
     
     
    always @ (posedge clk)
		subkey1 <= subkey;	  
		
    always @ (posedge clk)
		subkey2 <= subkey1;
		
	always @ (posedge clk)
		subkey3 <= subkey2;	  
		
    always @ (posedge clk)
		subkey4 <= subkey3;
	
	always @ (posedge clk)
		subkey5 <= subkey4;	  
		
    always @ (posedge clk)
		subkey6 <= subkey5;
		
	always @ (posedge clk)
		subkey7 <= subkey6;	  
		
    always @ (posedge clk)
		subkey8 <= subkey7;
     
    always @ (posedge clk)
		subkey9 <= subkey8;	  
		
    always @ (posedge clk)
		subkey10 <= subkey9;
		
	always @ (posedge clk)
		subkey11 <= subkey10;	  
		
    always @ (posedge clk)
		subkey12 <= subkey11; 
    
    always @ (posedge clk)
		subkey13 <= subkey12;	  
		
    always @ (posedge clk)
		subkey14 <= subkey13;
		
	always @ (posedge clk)
		subkey15 <= subkey14;	  
		
    always @ (posedge clk)
		subkey16 <= subkey15;
	
	always @ (posedge clk)
		subkey17 <= subkey16;	  
		
    always @ (posedge clk)
		subkey18 <= subkey17;
		
	always @ (posedge clk)
		subkey19 <= subkey18;	  
		
    always @ (posedge clk)
		subkey20 <= subkey19;
     
    always @ (posedge clk)
		subkey21 <= subkey20;	  
		
    always @ (posedge clk)
		subkey22 <= subkey21;
		
	always @ (posedge clk)
		subkey23 <= subkey22;	  
		
    always @ (posedge clk)
		subkey24 <= subkey23; 
	
	always @ (posedge clk)
		subkey25 <= subkey24;	  
		
    always @ (posedge clk)
		subkey26 <= subkey25;
		
	always @ (posedge clk)
		subkey27 <= subkey26;	  
		
    always @ (posedge clk)
		subkey28 <= subkey27;
	
	always @ (posedge clk)
		subkey29 <= subkey28;	  
		
    always @ (posedge clk)
		subkey30 <= subkey29;
		
	always @ (posedge clk)
		subkey31 <= subkey30;	  
		
    always @ (posedge clk)
		subkey32 <= subkey31;
     
    always @ (posedge clk)
		subkey33 <= subkey32;	  
		
    always @ (posedge clk)
		subkey34 <= subkey33;
		
	always @ (posedge clk)
		subkey35 <= subkey34;	  
		
    always @ (posedge clk)
		subkey36 <= subkey35; 
    
    always @ (posedge clk)
		subkey37 <= subkey36;	  
		
    always @ (posedge clk)
		subkey38 <= subkey37;
		
	always @ (posedge clk)
		subkey39 <= subkey38;	  
		
    always @ (posedge clk)
		subkey40 <= subkey39;
	
	always @ (posedge clk)
		subkey41 <= subkey40;	  
		
    always @ (posedge clk)
		subkey42 <= subkey41;
		
	always @ (posedge clk)
		subkey43 <= subkey42;	  
		
    always @ (posedge clk)
		subkey44 <= subkey43;
     
    always @ (posedge clk)
		subkey45 <= subkey44;	  
		
    always @ (posedge clk)
		subkey46 <= subkey45;
		
	always @ (posedge clk)
		subkey47 <= subkey46;	  
		
    always @ (posedge clk)
		subkey48 <= subkey47; 
		
	always @ (posedge clk)
		subkey49 <= subkey48;	  
		
    always @ (posedge clk)
		subkey50 <= subkey49;
		
	always @ (posedge clk)
		subkey51 <= subkey50;	  
		
    always @ (posedge clk)
		subkey52 <= subkey51;
	
	always @ (posedge clk)
		subkey53 <= subkey52;	  
		
    always @ (posedge clk)
		subkey54 <= subkey53;
		
	always @ (posedge clk)
		subkey55 <= subkey54;	  
		
    always @ (posedge clk)
		subkey56 <= subkey55;
     
    always @ (posedge clk)
		subkey57 <= subkey56;	  
		
    always @ (posedge clk)
		subkey58 <= subkey57;
		
	always @ (posedge clk)
		subkey59 <= subkey58;	  
		
    always @ (posedge clk)
		subkey60 <= subkey59; 
    
    always @ (posedge clk)
		subkey61 <= subkey60;	  
		
    always @ (posedge clk)
		subkey62 <= subkey61;
		
	always @ (posedge clk)
		subkey63 <= subkey62;	  
		
    always @ (posedge clk)
		subkey64 <= subkey63;
	
	always @ (posedge clk)
		subkey65 <= subkey64;	  
		
    always @ (posedge clk)
		subkey66 <= subkey65;
		
	always @ (posedge clk)
		subkey67 <= subkey66;	  
		
    always @ (posedge clk)
		subkey68 <= subkey67;
     
    always @ (posedge clk)
		subkey69 <= subkey68;	  
		
    always @ (posedge clk)
		subkey70 <= subkey69;
		
	always @ (posedge clk)
		subkey71 <= subkey70;	  
		
    always @ (posedge clk)
		subkey72 <= subkey71; 
		
	always @ (posedge clk)
		subkey73 <= subkey72;	  
		
    always @ (posedge clk)
		subkey74 <= subkey73;
		
	always @ (posedge clk)
		subkey75 <= subkey74;	  
		
    always @ (posedge clk)
		subkey76 <= subkey75;
	
	always @ (posedge clk)
		subkey77 <= subkey76;	  
		
    always @ (posedge clk)
		subkey78 <= subkey77;
		
	always @ (posedge clk)
		subkey79 <= subkey78;	  
		
    always @ (posedge clk)
		subkey80 <= subkey79;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    always @ (posedge clk)
		round01_in <= round00_out;	  
		
    always @ (posedge clk)
		round02_in <= round01_out;
	  
    always @ (posedge clk)
		round03_in <= round02_out;	  
		
    always @ (posedge clk)
		round04_in <= round03_out;
		
    always @ (posedge clk)
		round05_in <= round04_out;
		
    always @ (posedge clk)
		round06_in <= round05_out;
		
    always @ (posedge clk)
		round07_in <= round06_out;
		
    always @ (posedge clk)
		round08_in <= round07_out;
		
    always @ (posedge clk)
		round09_in <= round08_out;
		
	always @ (posedge clk)
		round10_in <= round09_out;
		
    always @ (posedge clk)
		round11_in <= round10_out;
		
    always @ (posedge clk)
		round12_in <= round11_out;
		
    always @ (posedge clk)	  
		round13_in <= round12_out;

    always @ (posedge clk)  
		round14_in <= round13_out;
		
    always @ (posedge clk)		
		round15_in <= round14_out;		
		
    always @ (posedge clk)		
		round16_in <= round15_out;	
		
    always @ (posedge clk)
		round17_in <= round16_out;
		
    always @ (posedge clk)
		round18_in <= round17_out;
		
    always @ (posedge clk)	  
		round19_in <= round18_out;		
		
    always @ (posedge clk)
		round20_in <= round19_out;
	
	always @ (posedge clk)
		round21_in <= round20_out;	  
		
    always @ (posedge clk)
		round22_in <= round21_out;
	  
    always @ (posedge clk)
		round23_in <= round22_out;	  
		
    always @ (posedge clk)
		round24_in <= round23_out;
		
    always @ (posedge clk)
		round25_in <= round24_out;
		
    always @ (posedge clk)
		round26_in <= round25_out;
		
    always @ (posedge clk)
		round27_in <= round26_out;
		
    always @ (posedge clk)
		round28_in <= round27_out;
		
    always @ (posedge clk)
		round29_in <= round28_out;
		
	always @ (posedge clk)
		round30_in <= round29_out;
		
    always @ (posedge clk)
		round31_in <= round30_out;
		
    always @ (posedge clk)
		round32_in <= round31_out;
		
    always @ (posedge clk)	  
		round33_in <= round32_out;

    always @ (posedge clk)  
		round34_in <= round33_out;
		
    always @ (posedge clk)		
		round35_in <= round34_out;		
		
    always @ (posedge clk)		
		round36_in <= round35_out;	
		
    always @ (posedge clk)
		round37_in <= round36_out;
		
    always @ (posedge clk)
		round38_in <= round37_out;
		
    always @ (posedge clk)	  
		round39_in <= round38_out;		
		
    always @ (posedge clk)
		round40_in <= round39_out;
			
    always @ (posedge clk)
		round41_in <= round40_out;	  
		
    always @ (posedge clk)
		round42_in <= round41_out;
	  
    always @ (posedge clk)
		round43_in <= round42_out;	  
		
    always @ (posedge clk)
		round44_in <= round43_out;
		
    always @ (posedge clk)
		round45_in <= round44_out;
		
    always @ (posedge clk)
		round46_in <= round45_out;
		
    always @ (posedge clk)
		round47_in <= round46_out;
		
    always @ (posedge clk)
		round48_in <= round47_out;
		
    always @ (posedge clk)
		round49_in <= round48_out;
		
	always @ (posedge clk)
		round50_in <= round49_out;
		
    always @ (posedge clk)
		round51_in <= round50_out;
		
    always @ (posedge clk)
		round52_in <= round51_out;
		
    always @ (posedge clk)	  
		round53_in <= round52_out;

    always @ (posedge clk)  
		round54_in <= round53_out;
		
    always @ (posedge clk)		
		round55_in <= round54_out;		
		
    always @ (posedge clk)		
		round56_in <= round55_out;	
		
    always @ (posedge clk)
		round57_in <= round56_out;
		
    always @ (posedge clk)
		round58_in <= round57_out;
		
    always @ (posedge clk)	  
		round59_in <= round58_out;		
		
    always @ (posedge clk)
		round60_in <= round59_out;
				
	always @ (posedge clk)
		round61_in <= round60_out;	  
		
    always @ (posedge clk)
		round62_in <= round61_out;
	  
    always @ (posedge clk)
		round63_in <= round62_out;	  
		
    always @ (posedge clk)
		round64_in <= round63_out;
		
    always @ (posedge clk)
		round65_in <= round64_out;
		
    always @ (posedge clk)
		round66_in <= round65_out;
		
    always @ (posedge clk)
		round67_in <= round66_out;
		
    always @ (posedge clk)
		round68_in <= round67_out;
		
    always @ (posedge clk)
		round69_in <= round68_out;
		
	always @ (posedge clk)
		round70_in <= round69_out;
		
    always @ (posedge clk)
		round71_in <= round70_out;
		
    always @ (posedge clk)
		round72_in <= round71_out;
		
    always @ (posedge clk)	  
		round73_in <= round72_out;

    always @ (posedge clk)  
		round74_in <= round73_out;
		
    always @ (posedge clk)		
		round75_in <= round74_out;		
		
    always @ (posedge clk)		
		round76_in <= round75_out;	
		
    always @ (posedge clk)
		round77_in <= round76_out;
		
    always @ (posedge clk)
		round78_in <= round77_out;
		
    always @ (posedge clk)	  
		round79_in <= round78_out;		
		
    always @ (posedge clk)
		final_ans <= round79_out;
		
	
	//assign 	tfout = final_ans;
     add A(8'b0, final_ans, subkey80[21503:20480], tfout);
     
endmodule