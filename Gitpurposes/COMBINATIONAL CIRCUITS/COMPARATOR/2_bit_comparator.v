`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2026 04:30:57 PM
// Design Name: 
// Module Name: 2_bit_comparator
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


module two_bit_comparator( input [1:0] a,b, output gt,eq,lt

    );
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
    not n1(w1,a[1]);
    not n2(w2,a[0]);
    not n3(w3,b[1]);
    not n4(w4,b[0]);
    
    and and1(w5,a[0],w3,w4);
    and and2(w6,a[1],a[0],w4);
    and and3(w7,a[1],w3);
    
    xnor x1(w8,a[1],b[1]);
    xnor x2(w9,a[0],b[0]);
    
    and and4(w10,w1,b[1]);
    and and5(w11,b[0],b[1],w2);
    and and6(w12,b[0],w1,w2);
    
    or o1(gt,w5,w6,w7);
    or o2(lt,w10,w11,w12);
    or o3(eq,w8,w9);
    
    
endmodule
