`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 08:41:51 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
input [1:0] a, input s, output reg y
    );
    
    always@(*)
      begin
        case(s)
         0 : y = a[0];
         1 : y = a[1];
         default : y  = 0;
        endcase
      end
endmodule
