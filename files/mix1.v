`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2021 08:47:38 AM
// Design Name: 
// Module Name: mix1
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


module mix1(x0, x1, y0);
    input [63:0] x0;
    input [63:0] x1;
    output [63:0] y0;
    assign y0 = x0 + x1;
endmodule