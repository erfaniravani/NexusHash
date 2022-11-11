`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2021 05:46:08 AM
// Design Name: 
// Module Name: connector
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


module connector(clk, key2, message2, skein_hash, keccak_hash, nonce_check, correct);

    input clk;
    input [1087:0] key2;
    input [1023:0] message2;
    output [1023:0] skein_hash;
    output [63:0] keccak_hash;
    output [63:0] nonce_check;
    output correct;
    
    wire [1023:0] state;
    reg [1023:0] statereg;
    reg [191:0] tweak2 = 192'h000000000000D8B000000000000000B0000000000000D8;
    reg [191:0] tweak3 = 192'h00000000000008FF00000000000000FF00000000000008;    
    wire [21503:0] subkey2;
    reg [21503:0] subkey2reg, subkey2reg2, subkey2reg3;
    wire subkey_ready;
    reg subkey_ready_reg;
    reg [1023:0] message2reg = 1024'b0;
    reg [63:0] nonce = 64'b0;
    reg [63:0] noncereg;
    wire leading_zero_mask;
    reg [63:0] register [0:325];
    reg flag = 1'b0;
    integer i;
    
    assign leading_zero_mask = ((64'd1 << 64'hfffff00000000000) - 1) << (64 - 64'hfffff00000000000);
    
    assign subkey_ready = (subkey2reg) ? 1'b1 : 1'b0;
    
    always@(posedge clk)
        statereg <= state;
        
    always@(posedge clk) begin
        //if(subkey_ready_reg != 1'b1) begin
          //  noncereg <= nonce;
        //end
    end
    always@(posedge clk)
        subkey_ready_reg <= subkey_ready;
        
   always@(posedge clk)
        subkey2reg <= subkey2;
    
    always@(posedge clk)
        subkey2reg2 <= subkey2reg;
    
    always@(posedge clk)
        subkey2reg3 <= subkey2reg2;
        
    always@(posedge clk) begin
        if(subkey_ready_reg) begin
            flag = 1'b1;
        end
    end
        
    always@(posedge clk) begin
        if(subkey_ready)begin
            noncereg = (flag) ? message2reg[383:320] + 64'd1 : 64'b0;
            message2reg = {message2[1023:384], noncereg, message2[319:0]};
        end
    end
    
    keystate_reverse KSRV(clk,key2,state);
    makesubkey MSK(clk, statereg, tweak2, subkey2);
    skien SKEIN(clk, message2reg, tweak3, subkey2reg2, keccak_hash, skein_hash);
    //assign skein_hash = state;
    //assign keccak_hash = subkey2[2047:1984];
    assign nonce_check = register[325];
    always@(posedge clk) begin
        register[0] <= noncereg;
        for(i = 0 ; i < 325 ; i = i+1) begin
            register[i+1] <= register[i]; 
        end
    end
    
    assign correct = (keccak_hash & leading_zero_mask) ? 1'b1 : 1'b0;
    
endmodule
