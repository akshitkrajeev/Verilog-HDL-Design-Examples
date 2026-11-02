`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 04:40:32 PM
// Design Name: 
// Module Name: frequency_by_2
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


module frequency_by_2(
input clk,rst, output reg f_2
    );
    always@(posedge clk)
    begin
    if(rst)
    f_2 <= 0;
    else
    f_2 <= f_2 + 1'b1;
    end
endmodule
