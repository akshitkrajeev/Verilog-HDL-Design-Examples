`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 07:50:03 PM
// Design Name: 
// Module Name: siso
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


module siso(
input clk,rst,enb,s_in, output reg s_out
    );
    
    reg [3:0] temp;
    //shifitng using shift operators
   always@(posedge clk) begin
    if(rst)
    temp <= 4'b0000;
    
    else if(enb)
    begin
    temp <= temp >> 1'b1;
    temp [3] <= s_in;
    s_out <= temp[0];
    
    end
    
    end
     
    
    
    
    
    
endmodule
