`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 12:21:01 AM
// Design Name: 
// Module Name: f_3
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


module f_3(
input clk,enb,rst, output count
    );
    
    reg [1:0] counter;
    
    always@(posedge clk)
    begin
    
    if(rst) 
    counter <= 0;
    else if(enb == 1 && counter < 2)
    counter <= counter + 1'b1;
    else if(enb == 1 && counter >= 2)
    counter <= 0;
    else if(enb == 0)
    counter <= counter;
    
    end
    
    assign count = counter[1];
    
    
  
  
  
  
  
endmodule
