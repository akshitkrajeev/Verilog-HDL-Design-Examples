`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 03:08:51 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor( input a,b,bin, output diff, borrow);
 wire w1,w2,w3,w4,w5;
 
 xor x1(w1,a,b);
 xor x2(diff,w1,bin);
 
 not n1(w2,a);
 not n2(w3,w1);
 
 and a1(w4,w3,bin);
 and a2(w5,w2,b);
 
 or o1 (borrow,w4,w5);
 


endmodule
