`timescale 1ns / 1ps



module bcd_adder(input [3:0] a_bcd , [3:0] b_bcd ,input cin , output [3:0] r_bcd ,output cout);
wire [3:0] w1;

wire w2,w3,w4,w5,w7;

wire [3:0] w6;
ripple_carry_adder rca1(a_bcd,b_bcd,cin,w1,w7);
and a1(w2,w1[1],w1[3]);
and a2(w3,w1[3],w1[2]);
full_adder fa1(w2,w3,w7,w4,w5);

assign w6[0] = 0;
assign w6[1] = w4;
assign w6[2] = w4;
assign w6[3] = 0;

ripple_carry_adder rca2(w1,w6,0,r_bcd,cout);
  

   
endmodule
