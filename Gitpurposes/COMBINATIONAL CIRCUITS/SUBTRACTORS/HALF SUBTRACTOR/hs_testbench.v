`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 04:14:09 PM
// Design Name: 
// Module Name: hs_testbench
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


module hs_testbench(

    );
    
   reg a_tb,b_tb;
   wire diff_tb, borrow_tb;
   
   half_subtractor dut(a_tb,b_tb,diff_tb,borrow_tb);
   
   initial
   begin
   {a_tb,b_tb} = 0;
   end
   
   initial
   begin
    $monitor("The value of a,b is %d %d ",a_tb,b_tb);
    $monitor("The value of diff and borrow is %d %d",diff_tb,borrow_tb);
     
     a_tb = 1'b0;
     b_tb = 1'b0;
     
     
     #1;
     
     a_tb = 1'b0;
     b_tb = 1'b1;
     
     
     #1;
     
     a_tb = 1'b1;
     b_tb = 1'b0;
     
      #1;
     
     a_tb = 1'b1;
     b_tb = 1'b1;
     
     end
endmodule
