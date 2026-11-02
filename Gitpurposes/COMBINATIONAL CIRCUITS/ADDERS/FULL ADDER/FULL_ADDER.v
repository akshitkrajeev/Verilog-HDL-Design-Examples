`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 02:05:12 PM
// Design Name: 
// Module Name: FULL_ADDER
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


module FULL_ADDER(input a_fa,b_fa,cin_fa ,output reg sum_fa, carry_fa);

   always@(*)
      begin
        sum_fa = a_fa ^ b_fa ^ cin_fa;
        carry_fa = (a_fa & b_fa) | (b_fa & cin_fa) | (cin_fa & a_fa);
      end
endmodule                                                                   
