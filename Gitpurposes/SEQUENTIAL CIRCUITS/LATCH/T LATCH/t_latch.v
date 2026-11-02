`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 03:51:05 PM
// Design Name: 
// Module Name: t_latch
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


module t_latch(
input enb,rst,t, output reg q ,qbar
    );
    
    always@(enb)
    begin
    if(enb)
    if(rst) begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
    
    else if (t == 1) begin
    q <= qbar;
    qbar <= q;
    end
    
    else if (t == 0) begin
    
    q <= q;
    qbar<= qbar;
    
    end
    
    end
    
endmodule
