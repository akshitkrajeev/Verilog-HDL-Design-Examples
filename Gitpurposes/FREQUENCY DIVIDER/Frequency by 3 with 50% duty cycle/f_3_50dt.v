`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 11:34:59 AM
// Design Name: 
// Module Name: f_3_50dt
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




module f_3_50dt(

    );
    
    reg clk,enb,rst;
    wire f_3_50dt;
    
    f_3_with_50dutycycle dut(clk,enb,rst,f_3_50dt);
    
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

