`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 11:28:30 AM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb(

    );
    
    reg [3:0] a;
    wire [1:0] y;
    
    encoder dut(a,y);
    
    initial
    begin
    {a} = 0;
    end
    
    initial
    begin
    
    
    a = 4'b0001;
    
    #1;
    a = 4'b0010;
    
    #1;
    a = 4'b0100;
    
    #1;
    
    a = 4'b1000;
    #1;
    end
    
    
endmodule
