`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2021 08:52:07 AM
// Design Name: 
// Module Name: mix2
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


module mix2(x1, y0, d, j, y1);
    input [63:0] x1;
    input [63:0] y0;
    input [7:0] d;
    input [7:0] j;
    output [63:0] y1;
    
    reg [7:0] rotation;
    wire [63:0] rol_out;
    
    always @ (d,j)
    begin
        case (d%8)
           0: 
            case (j)
                0: rotation = 8'd55;
                1: rotation = 8'd43;
                2: rotation = 8'd37;
                3: rotation = 8'd40;
                4: rotation = 8'd16;
                5: rotation = 8'd22;
                6: rotation = 8'd38;
                7: rotation = 8'd12;
                default: rotation = 8'd0;
            endcase
           1: 
            case (j)
                0: rotation = 8'd25;
                1: rotation = 8'd25;
                2: rotation = 8'd46;
                3: rotation = 8'd13;
                4: rotation = 8'd14;
                5: rotation = 8'd13;
                6: rotation = 8'd52;
                7: rotation = 8'd57;
                default: rotation = 8'd0;
            endcase
           2: 
            case (j)
                0: rotation = 8'd33;
                1: rotation = 8'd8;
                2: rotation = 8'd18;
                3: rotation = 8'd57;
                4: rotation = 8'd21;
                5: rotation = 8'd12;
                6: rotation = 8'd32;
                7: rotation = 8'd54;
                default: rotation = 8'd0;
            endcase
           3: 
            case (j)
                0: rotation = 8'd34;
                1: rotation = 8'd43;
                2: rotation = 8'd25;
                3: rotation = 8'd60;
                4: rotation = 8'd44;
                5: rotation = 8'd9;
                6: rotation = 8'd59;
                7: rotation = 8'd34;
                default: rotation = 8'd0;
            endcase
           4: 
            case (j)
                0: rotation = 8'd28;
                1: rotation = 8'd7;
                2: rotation = 8'd47;
                3: rotation = 8'd48;
                4: rotation = 8'd51;
                5: rotation = 8'd9;
                6: rotation = 8'd35;
                7: rotation = 8'd41;
                default: rotation = 8'd0;
            endcase
           5: 
            case (j)
                0: rotation = 8'd17;
                1: rotation = 8'd6;
                2: rotation = 8'd18;
                3: rotation = 8'd25;
                4: rotation = 8'd43;
                5: rotation = 8'd42;
                6: rotation = 8'd40;
                7: rotation = 8'd15;
                default: rotation = 8'd0;
            endcase
           6:
            case (j)
                0: rotation = 8'd58;
                1: rotation = 8'd7;
                2: rotation = 8'd32;
                3: rotation = 8'd45;
                4: rotation = 8'd19;
                5: rotation = 8'd18;
                6: rotation = 8'd2;
                7: rotation = 8'd56;
                default: rotation = 8'd0;
            endcase
           7: 
            case (j)
                0: rotation = 8'd47;
                1: rotation = 8'd49;
                2: rotation = 8'd27;
                3: rotation = 8'd58;
                4: rotation = 8'd37;
                5: rotation = 8'd48;
                6: rotation = 8'd53;
                7: rotation = 8'd56;
                default: rotation = 8'd0;
            endcase
           
          
        endcase
    end
    
    
    rol RL(x1, rotation, rol_out);
    assign y1 = rol_out ^ y0;
endmodule