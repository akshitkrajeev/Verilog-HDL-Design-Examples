`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2026 01:04:16 PM
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb(

    );
    
    reg enb,clk,rst,s_in;
    wire [3:0] p_out;
    
    sipo dut(clk,rst,enb,s_in,p_out);
    
    initial 
    begin
    {clk,rst,s_in,enb} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial
    begin
    
    rst = 1;
    
    #10;
    
    rst = 0;
    
    #10;
    s_in = 1'b1;
    #10;
    s_in = 1'b1;
    #10;
    s_in = 1'b0;
    #10;
    s_in = 1'b0;
    #10;
    enb = 1;
    
    end 
    
    
endmodule
