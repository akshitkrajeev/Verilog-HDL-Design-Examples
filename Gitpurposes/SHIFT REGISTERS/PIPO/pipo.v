`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 02:06:42 PM
// Design Name: 
// Module Name: pipo
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


module pipo(
input clk,rst,load,input [3:0] p_in, output reg [3:0] p_out
    );
    reg [3:0] temp;
    
    always@(posedge clk)
    begin
    if(rst)
    temp <= 4'b0000;
    else if(load)
    temp <= p_in;
    else if(load == 0)
    p_out <= temp;
    end
    
    
endmodule
