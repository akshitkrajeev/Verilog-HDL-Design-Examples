`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 09:16:19 PM
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb(

    );
    
    reg [3:0] a;
    wire [1:0] y;
    
    priority_encoder dut(a,y);
    
    initial
    begin
    {a} = 0;
    end
    
    initial
    begin
    
    
    a = 4'b10xx;
    
    #1;
    a = 4'b01xx;
    
    #1;
    a = 4'b000x;
    
    #1;
    
    a = 4'b0000;
    #1;
    end
endmodule
