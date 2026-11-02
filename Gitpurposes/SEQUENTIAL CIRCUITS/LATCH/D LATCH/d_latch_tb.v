`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 03:39:36 PM
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb(

    );
    
    reg enb,rst,d;
    wire q,qbar;
    
    d_latch dut(enb,rst,d,q,qbar);
    
    initial 
    begin
    {enb,rst,d} = 0;
    end
    
    always #5 enb = ~enb;
    
    initial
    begin
    
    rst = 1;
    #15;
    rst = 0;
    #5;
    d = 1;
    
    #10;
    
    d = 0;
    
    end
    
endmodule
