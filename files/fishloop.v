`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2021 12:20:59 AM
// Design Name: 
// Module Name: fishloop
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


module fishloop(clk, d, v, subkey, out);
    input clk;
    input [7:0] d;
    input [1023:0] v;
    input [1023:0] subkey;
    output [1023:0] out;
    
    wire [1023:0] v_out;
    //reg [1023:0] vv;
    wire [1023:0] mix_out;
    //reg [1023:0] f;
    
    add ADD(d,v,subkey,v_out);
    mixloop MLOOP(clk, d, v_out, mix_out);
    permute PRMT(mix_out, out);
    
   /* always @ (posedge clk)
		vv <= v_out;
		
    always @ (posedge clk)
		f <= mix_out;
	*/	
endmodule