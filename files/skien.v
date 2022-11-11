`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2021 09:25:22 AM
// Design Name: 
// Module Name: skien
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


module skien(clk, message, tweak, regsubkey, final_hash, done);
    input clk;
    input [1023:0] message;
    input [191:0] tweak;
    input [21503:0] regsubkey;

    output [63:0] final_hash;
    output [1023:0] done;


    reg [3:0] cnt = 4'b0;
    reg flag;
    wire [1023:0] tf2, xorout, hash;
    wire [21503:0] subkey2;
    //reg [63:0] register0, register1;
 
    reg [1023:0] tf2reg, xoroutreg, hashreg;
    reg [21503:0] subkey2reg;
    
    reg [1023:0] message1; reg [1023:0] message2; reg [1023:0] message3;
    reg [1023:0] message4; reg [1023:0] message5; reg [1023:0] message6;
    reg [1023:0] message7; reg [1023:0] message8; reg [1023:0] message9;
    reg [1023:0] message10; reg [1023:0] message11; reg [1023:0] message12;
    reg [1023:0] message13; reg [1023:0] message14; reg [1023:0] message15;
    reg [1023:0] message16; reg [1023:0] message17; reg [1023:0] message18;
    reg [1023:0] message19; reg [1023:0] message20; reg [1023:0] message21;
    reg [1023:0] message22; reg [1023:0] message23; reg [1023:0] message24;
    reg [1023:0] message25; reg [1023:0] message26; reg [1023:0] message27;
    reg [1023:0] message28; reg [1023:0] message29; reg [1023:0] message30;
    reg [1023:0] message31; reg [1023:0] message32; reg [1023:0] message33;
    reg [1023:0] message34; reg [1023:0] message35; reg [1023:0] message36;
    reg [1023:0] message37; reg [1023:0] message38; reg [1023:0] message39;
    reg [1023:0] message40; reg [1023:0] message41; reg [1023:0] message42;
    reg [1023:0] message43; reg [1023:0] message44; reg [1023:0] message45;
    reg [1023:0] message46; reg [1023:0] message47; reg [1023:0] message48;
    reg [1023:0] message49; reg [1023:0] message50; reg [1023:0] message51;
    reg [1023:0] message52; reg [1023:0] message53; reg [1023:0] message54;
    reg [1023:0] message55; reg [1023:0] message56; reg [1023:0] message57;
    reg [1023:0] message58; reg [1023:0] message59; reg [1023:0] message60;
    reg [1023:0] message61; reg [1023:0] message62; reg [1023:0] message63;
    reg [1023:0] message64; reg [1023:0] message65; reg [1023:0] message66;
    reg [1023:0] message67; reg [1023:0] message68; reg [1023:0] message69;
    reg [1023:0] message70; reg [1023:0] message71; reg [1023:0] message72;
    reg [1023:0] message73; reg [1023:0] message74; reg [1023:0] message75;
    reg [1023:0] message76; reg [1023:0] message77; reg [1023:0] message78;
    reg [1023:0] message79; reg [1023:0] message80; reg [1023:0] message81;
    reg [1023:0] message82;
    always@(posedge clk)begin
        tf2reg <= tf2;
    end
    always@(posedge clk)begin
        xoroutreg <= xorout;
    end
    always@(posedge clk)begin
        subkey2reg <= subkey2;
    end
    always@(posedge clk)begin
        hashreg <= hash;
    end
    
  threefish_new TFSN(clk, message, regsubkey, tf2);
  assign xorout = tf2reg ^ message82;
  makesubkey MSK(clk, xoroutreg, tweak, subkey2);
  threefish_new TFSN2(clk, 1024'b0, subkey2reg, hash);
  keccak KCK(clk, hashreg, final_hash);
  //assign done = (final_hash) ? 1'b1 : 1'b0;
  //assign final_hash = hash[1023:960];
  assign done = hashreg;
  always @ (posedge clk)
		message1 <= message;	  
		
    always @ (posedge clk)
		message2 <= message1;
	  
    always @ (posedge clk)
		message3 <= message2;	  
		
    always @ (posedge clk)
		message4 <= message3;
		
    always @ (posedge clk)
		message5 <= message4;
		
    always @ (posedge clk)
		message6 <= message5;
		
    always @ (posedge clk)
		message7 <= message6;
		
    always @ (posedge clk)
		message8 <= message7;
		
    always @ (posedge clk)
		message9 <= message8;
		
	always @ (posedge clk)
		message10 <= message9;
		
    always @ (posedge clk)
		message11 <= message10;
		
    always @ (posedge clk)
		message12 <= message11;
		
    always @ (posedge clk)	  
		message13 <= message12;

    always @ (posedge clk)  
		message14 <= message13;
		
    always @ (posedge clk)		
		message15 <= message14;		
		
    always @ (posedge clk)		
		message16 <= message15;	
		
    always @ (posedge clk)
		message17 <= message16;
		
    always @ (posedge clk)
		message18 <= message17;
		
    always @ (posedge clk)	  
		message19 <= message18;		
  
    always @ (posedge clk)
		message20 <= message19;	  
		
    always @ (posedge clk)
		message21 <= message20;
	  
    always @ (posedge clk)
		message22 <= message21;	  
		
    always @ (posedge clk)
		message23 <= message22;
		
    always @ (posedge clk)
		message24 <= message23;
		
    always @ (posedge clk)
		message25 <= message24;
		
    always @ (posedge clk)
		message26 <= message25;
		
    always @ (posedge clk)
		message27 <= message26;
		
    always @ (posedge clk)
		message28 <= message27;
		
	always @ (posedge clk)
		message29 <= message28;
		
    always @ (posedge clk)
		message30 <= message29;
		
    always @ (posedge clk)
		message31 <= message30;
		
    always @ (posedge clk)	  
		message32 <= message31;

    always @ (posedge clk)  
		message33 <= message32;
		
    always @ (posedge clk)		
		message34 <= message33;		
		
    always @ (posedge clk)		
		message35 <= message34;	
		
    always @ (posedge clk)
		message36 <= message35;
		
    always @ (posedge clk)
		message37 <= message36;
		
    always @ (posedge clk)	  
		message38 <= message37;	
		
	always @ (posedge clk)
		message39 <= message38;	  
		
    always @ (posedge clk)
		message40 <= message39;
	  
    always @ (posedge clk)
		message41 <= message40;	  
		
    always @ (posedge clk)
		message42 <= message41;
		
    always @ (posedge clk)
		message43 <= message42;
		
    always @ (posedge clk)
		message44 <= message43;
		
    always @ (posedge clk)
		message45 <= message44;
		
    always @ (posedge clk)
		message46 <= message45;
		
    always @ (posedge clk)
		message47 <= message46;
		
	always @ (posedge clk)
		message48 <= message47;
		
    always @ (posedge clk)
		message49 <= message48;
		
    always @ (posedge clk)
		message50 <= message49;
		
    always @ (posedge clk)	  
		message51 <= message50;

    always @ (posedge clk)  
		message52 <= message51;
		
    always @ (posedge clk)		
		message53 <= message52;		
		
    always @ (posedge clk)		
		message54 <= message53;	
		
    always @ (posedge clk)
		message55 <= message54;
		
    always @ (posedge clk)
		message56 <= message55;
		
    always @ (posedge clk)	  
		message57 <= message56;
		
	always @ (posedge clk)
		message58 <= message57;	  
		
    always @ (posedge clk)
		message59 <= message58;
	  
    always @ (posedge clk)
		message60 <= message59;	  
		
    always @ (posedge clk)
		message61 <= message60;
		
    always @ (posedge clk)
		message62 <= message61;
		
    always @ (posedge clk)
		message63 <= message62;
		
    always @ (posedge clk)
		message64 <= message63;
		
    always @ (posedge clk)
		message65 <= message64;
		
    always @ (posedge clk)
		message66 <= message65;
		
	always @ (posedge clk)
		message67 <= message66;
		
    always @ (posedge clk)
		message68 <= message67;
		
    always @ (posedge clk)
		message69 <= message68;
		
    always @ (posedge clk)	  
		message70 <= message69;

    always @ (posedge clk)  
		message71 <= message70;
		
    always @ (posedge clk)		
		message72 <= message71;		
		
    always @ (posedge clk)		
		message73 <= message72;	
		
    always @ (posedge clk)
		message74 <= message73;
		
    always @ (posedge clk)
		message75 <= message74;
		
    always @ (posedge clk)	  
		message76 <= message75;
		
	always @ (posedge clk)
		message77 <= message76;
		
    always @ (posedge clk)
		message78 <= message77;
		
    always @ (posedge clk)	  
		message79 <= message78;
		
	always @ (posedge clk)
		message80 <= message79;
		
    always @ (posedge clk)	  
		message81 <= message80;		
    
    always @ (posedge clk)	  
		message82 <= message81;		
endmodule
