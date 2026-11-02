`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 05:09:28 PM
// Design Name: 
// Module Name: f_8_tb
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


module f_8_tb(

    );
    
    
    
    reg clk,rst;
    wire f_8;
    
    f_8 dut(clk,rst,f_8);
    
    initial begin
    {clk,rst} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    rst = 0;
    end
endmodule
