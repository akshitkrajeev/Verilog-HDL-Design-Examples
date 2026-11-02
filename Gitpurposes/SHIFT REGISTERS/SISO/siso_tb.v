`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 08:04:58 PM
// Design Name: 
// Module Name: siso_tb
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


module siso_tb(

    );
    reg clk,enb,s_in,rst;
    wire s_out;
    
    siso dut(clk,rst,enb,s_in,s_out);
    
    initial begin
    {clk,enb,rst,s_in} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    
    rst = 1;
    #10;
    
    rst = 0;
    enb = 0;
    #10;
    enb = 1;
    
    s_in = 1'b1;
    #10;
    s_in = 1'b0;
    #10;
    s_in = 1'b1;
    #10;
    s_in = 1'b1;
    
    #50;
    enb = 0;
    
    end
    
    
    
    
    
endmodule
