`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 11:24:17 PM
// Design Name: 
// Module Name: mod_3_count_tb
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


module mod_3_count_tb(

    );
    
    reg clk,enb,rst;
    wire [2:0] count;
    
    mod_3_counter dut(clk,rst,enb,count);
    
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
