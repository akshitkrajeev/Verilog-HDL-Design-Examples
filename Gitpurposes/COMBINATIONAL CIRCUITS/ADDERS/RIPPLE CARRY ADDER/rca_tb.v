`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 05:24:56 PM
// Design Name: 
// Module Name: rca_tb
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


module rca_tb(

    );
   
    reg [3:0] a_tb,b_tb;
    reg cin_tb;
    wire [3:0] sum_tb;
    wire cout_tb;
    
    ripple_carry_adder rca1(a_tb,b_tb,cin_tb,sum_tb,cout_tb);
    
    initial
    begin
    {a_tb,b_tb,cin_tb} = 0;
    end
    
    initial
    begin
    
    a_tb=4'b0110;
    b_tb=4'b1110;
    
    cin_tb = 1'b1;
    
    $monitor("The value of sum and cout is %b %b",sum_tb,cout_tb);
    
    end
        
    
endmodule
