`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 12:29:37 PM
// Design Name: 
// Module Name: piso
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


 module piso(
input clk,rst,load, input [3:0] p_in, output reg s_out
    );
    
    reg [3:0] temp;
    
    always@(posedge clk)
    begin
    if(rst)
    temp <= 4'b0000;
    else if(load)
    temp <= p_in;
    else if(load == 0) begin
    s_out <= temp[0];
    temp <= temp >> 1'b1;
    end
    end
endmodule
