`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 02:18:48 PM
// Design Name: 
// Module Name: full_adder_using_half_adder
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


module full_adder_using_half_adder(input a_fa,b_fa,cin_fa, output sum_fa,carry_fa);
wire w1,w2,w3;
half_adder ha1(.A(a_fa),.B(b_fa),.S(w1),.C(w2));
half_adder ha2(.A(w1),.B(cin_fa),.S(sum_fa),.C(w3));

or o1(carry_fa,w2,w3);

endmodule
