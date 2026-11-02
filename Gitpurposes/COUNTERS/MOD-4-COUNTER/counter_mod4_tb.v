`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 04:41:39 PM
// Design Name: 
// Module Name: counter_mod4_tb
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


module counter_mod4_tb(

    );
    
    reg clk,rst,enb;
     wire [1:0] count;
    
    counter_mod4 dut(clk,rst,enb,count);
    
    initial begin
    {clk,rst,enb} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    
    rst = 1;
    #10;
    rst = 0;
    enb = 1;
    #50;
    enb = 0;
    end
endmodule
