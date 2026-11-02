`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 12:05:51 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb(

    );
    
    reg enb,s,r,rst;
    wire q,qbar;
    
    sr_latch s1(enb,rst,s,r,q,qbar);
    
    initial 
    begin
    {enb,s,r,rst} = 0;
    end
    
    always #5 enb = ~enb;
    
    initial
    begin
    rst = 1;
    #10 rst = 0;
    
    //hold condition
    s = 0;
    r = 0;
    
    //set condition
    #10;
    s = 1;
    r = 0;
    
    //reset condition
    #10;
    s = 0;
    r = 1;
    
    //invalid condition
    #10;
    s = 1;
    r = 1;
    
    end
    
     
endmodule
