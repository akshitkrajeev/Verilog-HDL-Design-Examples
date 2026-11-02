`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 03:08:42 PM
// Design Name: 
// Module Name: usr_tb
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


module usr_tb(

    );
    
    reg clk,rst,shift,load,s_in;
    reg [1:0] mode;
    reg [3:0] p_in;
    wire s_out;
    wire [3:0] p_out;
    
    usr dut(clk,rst,s_in,load,shift,p_in,mode,s_out,p_out);
    
    initial begin
    {clk,rst,load,shift,s_in,mode,p_in} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial 
    begin
    rst = 1;
    #10;
    rst = 0;
    #10;
    
    mode = 2'b00;
    shift = 1'b1;
    s_in = 1'b1;
    #10;
    s_in = 1'b0;
    #10;
    s_in = 1'b1;
    #10;
    s_in = 1'b1;
    
    
    #50;
    shift = 1'b0;
    
    #10
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10; 
    mode = 2'b01;
    shift = 1'b1;
    s_in = 1'b1;
    #10;
    s_in = 1'b0;
    #10;
    s_in = 1'b1;
    #10;
    s_in = 1'b1;
    #10;
    shift = 1'b0;
    
    #10;
    rst = 1;
    #10;
    rst = 0;
    #10;
    mode = 2'b10;
    load= 1'b1;
    p_in = 4'b1101;
    #10;
    load = 1'b0; 
    
    #50;
    rst = 1;
    #10;
    rst = 0;
    #10;
    mode = 2'b11;
    load = 1'b1;
    p_in = 4'b1011;
    #10;
    load = 1'b0;
    
 
    
    end
endmodule
