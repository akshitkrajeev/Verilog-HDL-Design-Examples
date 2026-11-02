`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 08:09:50 PM
// Design Name: 
// Module Name: mealy_1001_no_tb
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


module mealy_1001_no_tb(

    );
    reg clk,rst,din;
    wire detected;
    
    moore_1010_no dut(clk,rst,din,detected);
    
    initial
    begin
    {clk,rst,din} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial
    begin
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    din = 1'b1;
    #10;
    din = 1'b0;
    #10;
    din = 1'b1;
    #10;
    din = 1'b0;
    
    end
endmodule
