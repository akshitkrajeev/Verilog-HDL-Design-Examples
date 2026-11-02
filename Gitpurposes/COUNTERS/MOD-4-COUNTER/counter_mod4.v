`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 04:40:23 PM
// Design Name: 
// Module Name: counter_mod4
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


// Code your testbench here
// or browse Examples
module counter_mod4(
  input clk,rst,enb,
  output reg [1:0] count
);
  always@(posedge clk)
  begin
    if(rst) 
      count <= 0;
    else if(enb)
      count <= count + 1'b1;
    else
      count <= count;
  end
endmodule
