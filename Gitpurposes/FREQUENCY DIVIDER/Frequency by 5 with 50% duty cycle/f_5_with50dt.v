`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 03:27:53 PM
// Design Name: 
// Module Name: f_5_with50dt
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


module f_5_with50dt(
input clk,enb,rst, output f_5_50dt
    );
    
     reg enb1,enb2;
    reg [2:0] count;
    always@(posedge clk)
    begin
    if(rst)
    count <= 0;
    else if(enb == 1 && count <4)
    count <= count + 1'b1;
    else if(enb == 1 && count >= 4)
    count <= 0;
    else if(enb == 0)
    count <= count;
    end
    
    always@(posedge clk) begin
    if(count == 0 || count == 1)
    enb1 <= 1'b1;
    else
    enb1 <= 1'b0;
    end
    
    always@(negedge clk)
    begin
    if(count == 0 || count == 1)
    enb2 <= 1'b1;
    else
    enb2 <= 1'b0;
    end
    
    assign f_5_50dt = (enb1 | enb2);
    
endmodule
