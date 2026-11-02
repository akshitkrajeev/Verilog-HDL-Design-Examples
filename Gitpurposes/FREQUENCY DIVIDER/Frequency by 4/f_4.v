`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 04:48:53 PM
// Design Name: 
// Module Name: f_4
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


module f_4(
input clk,rst, output f_4
    );
    
    reg [1:0] count;
    
    always@(posedge clk)
    begin
    if(rst)
    count <= 0;
    else
    count <= count + 1'b1;
    end
    
    assign f_4 = count[1];
    
    
endmodule
