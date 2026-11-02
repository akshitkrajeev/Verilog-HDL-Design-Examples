`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 05:20:59 PM
// Design Name: 
// Module Name: multi_frequency_div_tb
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


module multi_frequency_div_tb(

    );
    
    reg clk,rst,enb;
    reg [1:0] mode;
    wire f_2,f_4,f_8,f_16;
    
    multi_frequency_divider dut(clk,rst,enb,mode,f_2,f_44,f_8,f_16);
    
    initial
    begin
    {clk,rst,enb,mode} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    
    rst = 0;
    mode = 2'b11;
    enb = 1;
    
    #200;
    
    enb = 0;
    end
    
    
endmodule
