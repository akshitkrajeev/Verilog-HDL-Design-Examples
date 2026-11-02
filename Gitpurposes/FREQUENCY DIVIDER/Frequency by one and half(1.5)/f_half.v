`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 03:49:00 PM
// Design Name: 
// Module Name: f_half
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


module f_half(
input clk,rst,enb, output f_half
    );
    
    reg [1:0] count;
    reg enb1 , enb2;
    
    always@(posedge clk) begin
    if(rst)
    count <= 0;
    else if(enb == 1 && count < 2)
    count <= count + 1'b1;
    else if(enb == 1 && count >= 2)
    count <= 0;
    else if(enb == 0)
    count <= count;
    
    end
    
    always@(posedge clk) begin
    if(count == 2)
    enb1 <= 1'b1;
    else 
    enb1 <= 1'b0;
    end
    
    always@(negedge clk)
    begin
    if(count == 1)
    enb2 <= 1'b1;
    else
    enb2 <= 1'b0;
    end
    
    assign f_half = (enb1 ^ enb2);
endmodule
