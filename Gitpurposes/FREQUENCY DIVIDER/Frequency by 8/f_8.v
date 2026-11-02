`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 05:08:23 PM
// Design Name: 
// Module Name: f_8
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


module f_8(
input clk,rst, output f_8
    );
    
    reg [2:0] count;
    
    always@(posedge clk)
    begin
    if(rst)
    count <= 0;
    else
    count <= count + 1'b1;
    end
    
    assign f_8 = count[2];
    
    
endmodule

