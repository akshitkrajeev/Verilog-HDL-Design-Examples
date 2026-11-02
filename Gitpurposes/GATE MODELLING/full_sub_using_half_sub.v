`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 03:22:09 PM
// Design Name: 
// Module Name: full_sub_using_half_sub
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


module full_sub_using_half_sub(input a_fa,b_fa,bin_fa, output diff_fa, borrow_fa);

 wire w1,w2,w3;
 half_subtractor hs1(.a(a_fa),.b(b_fa),.diff(w1),.borrow(w2));
 half_subtractor hs2(.a(w1),.b(bin_fa),.diff(diff_fa),.borrow(w3));
 
 or o1(borrow_fa,w2,w3);


endmodule
