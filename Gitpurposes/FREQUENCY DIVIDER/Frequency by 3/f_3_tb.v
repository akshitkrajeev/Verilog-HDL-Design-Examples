`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 12:23:31 AM
// Design Name: 
// Module Name: f_3_tb
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


module f_3_tb(

    );
    
    reg clk,enb,rst;
    wire count;
    
    f_3 dut(clk,enb,rst,count);
    
    initial begin
    {clk,enb,rst} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    #200;
    enb = 0;
    end
endmodule
