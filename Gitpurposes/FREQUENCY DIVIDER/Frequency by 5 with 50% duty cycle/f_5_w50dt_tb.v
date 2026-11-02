`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 03:31:28 PM
// Design Name: 
// Module Name: f_5_w50dt_tb
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


module f_5_w50dt_tb(

    );
    
    reg clk,enb,rst;
    wire f_5_50dt;
    
    f_5_with50dt dut(clk,enb,rst,f_5_50dt);
    
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
