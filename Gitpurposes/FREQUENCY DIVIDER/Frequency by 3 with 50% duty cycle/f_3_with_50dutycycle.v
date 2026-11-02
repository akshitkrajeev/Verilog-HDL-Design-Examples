`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 11:24:46 AM
// Design Name: 
// Module Name: f_3_with_50dutycycle
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


module f_3_with_50dutycycle(
input clk,enb,rst, output f_3_50dt
    );
    reg enb1,enb2;
    reg [1:0] count;
    always@(posedge clk)
    begin
    if(rst)
    count <= 0;
    else if(enb == 1 && count <2)
    count <= count + 1'b1;
    else if(enb == 1 && count >= 2)
    count <= 0;
    else if(enb == 0)
    count <= count;
    end
    
    always@(posedge clk) begin
    if(count == 0)
    enb1 <= 1'b1;
    else
    enb1 <= 1'b0;
    end
    
    always@(negedge clk)
    begin
    if(count == 0)
    enb2 <= 1'b1;
    else
    enb2 <= 1'b0;
    end
    
    assign f_3_50dt = (enb1 | enb2);
    
    
    
    
endmodule
