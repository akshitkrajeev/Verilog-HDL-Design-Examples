`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 10:37:36 AM
// Design Name: 
// Module Name: demux_1_2
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


module demux_1_2(
input s, in, output reg [1:0] y
    );
    
    always@(*)
    begin
    case(s)
    0 : begin
         y[0] = in;
         y[1] = 0;
         end
    1 : begin
         y[0] = 0;
         y[1] = in;
        end
        
        default : y = 0;
    endcase
    end
     
endmodule
