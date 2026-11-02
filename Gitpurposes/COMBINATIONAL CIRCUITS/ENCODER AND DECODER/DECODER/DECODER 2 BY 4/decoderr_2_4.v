`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 07:24:34 PM
// Design Name: 
// Module Name: decoderr_2_4
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


module decoderr_2_4(
input [1:0] a, output reg [3:0] y
    );
    always@(*)
    begin
    case(a)
     2'b00 : y = 4'b0001;
            
     2'b01 : y = 4'b0010;   // case statement for priority purposes
            
     2'b10 : y = 4'b0100;
            
     2'b11 : y = 4'b1000;
            
            
     default : y = 0;
     endcase
     end                   
endmodule
