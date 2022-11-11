`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2021 07:30:58 AM
// Design Name: 
// Module Name: rol
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


module rol(val, r_bits, out);
    input [63:0] val;
    input [7:0] r_bits;
    output [63:0] out;

    assign out = {val,val} >> (64-r_bits);

endmodule