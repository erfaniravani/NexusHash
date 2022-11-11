`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2021 04:45:08 AM
// Design Name: 
// Module Name: permute
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


module permute(in, out);
    input [1023:0] in;
    output [1023:0] out;
    assign out = { in[1023:960] , in[447:384] , in[895:832] , in[191:128] , 
                   in[639:576] , in[319:256] , in[767:704] , in[63:0] ,
                   in[383:320] , in[575:512] , in[255:192] , in[831:768] ,
                   in[127:64] , in[703:640] , in[511:448] , in[959:896] };
endmodule