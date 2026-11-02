`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 03:55:19 PM
// Design Name: 
// Module Name: f_1_5_tb
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


module f_1_5_tb(

    );
     
    reg clk,enb,rst;
    wire f_half;
    
    f_half dut(clk,rst,enb,f_half);
    
    initial begin
    {clk,rst,enb} = 0;
    end
    
    always #5 clk = ~clk;
   
    
    initial
    begin
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    #200;
    enb = 0;
   
    end
endmodule
