`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 02:10:06 PM
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb(

    );
    reg clk,rst,load;
    reg [3:0] p_in;
    wire [3:0] p_out;
    
    pipo dut(clk,rst,load,p_in,p_out);
    
    initial begin
    {clk,rst,load,p_in} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    rst = 0;
    load = 1'b1;
    p_in = 4'b1101;
    #10;
    load = 1'b0;
    
    end
endmodule
