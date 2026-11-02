`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 04:05:12 PM
// Design Name: 
// Module Name: jk_latch_tb
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


module jk_latch_tb(

    );
    
    reg enb,rst,j,k;
    wire q,qbar;
    integer i;
    jk_latch dut(enb,rst,j,k,q,qbar);
    
    initial
    begin
    {enb,rst,j,k} = 0;
    end
    
    always #5 enb = ~enb;
    
    initial 
    begin
    
    rst = 1;
    
    #10;
    rst = 0;
    
    for(i = 0; i < 4; i = i + 1) begin
    
    #10;
    
    {j,k} = i;
    end
    
    end
    
    
    
    
    
    
    
    
endmodule
