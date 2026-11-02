`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 08:48:17 PM
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb(

    );
    
    reg [1:0] a_tb;
    reg s;
    wire y;
    integer i;
    
    mux_2_1 m1(a_tb,s,y);
    
    initial 
    begin
    {a_tb,s} = 0;
    end
    
    initial
    begin
    
    for(i=0;i<8;i = i + 1)
      begin
       #1;
       {s,a_tb} = i;
      end
    $monitor("The value of y is %b",y); 
    end
endmodule
