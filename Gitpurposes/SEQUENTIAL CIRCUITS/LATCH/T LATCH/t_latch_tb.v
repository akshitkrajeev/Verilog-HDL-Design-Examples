`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 03:56:34 PM
// Design Name: 
// Module Name: t_latch_tb
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


module t_latch_tb(

    );
    
    reg enb,rst,t;
    wire q,qbar;
    
    t_latch dut(enb,rst,t,q,qbar);
    
    initial
    begin
    {enb,rst,t} = 0;
    end
    
    always #5 enb = ~enb;
    
    initial 
    begin
    
    rst = 1;
    #10;
    rst = 0;
    
    t = 1;
    
    #10;
    
    t = 0;
    
    end
    
    
endmodule
