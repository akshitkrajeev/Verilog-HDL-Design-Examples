`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 11:50:50 AM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
input enb,rst,s,r, output reg q,qbar
    );
    //reset logic
    //synchronous reset
    always@(enb)
      begin
       if(enb)
       
       
           if(rst) begin
             q <= 1'b0;
             qbar <= 1'b1;
             end
            //hold  
           else if(s == 0 && r == 0)
              begin
              q <= q;
              qbar <= qbar;
              end
              
              //set
           else if(s == 1 && r == 0)
               begin
               q <= 1'b1;
               qbar <= 1'b0;
               end
               //reset
           else if(s == 0 && r == 1)
               begin
               q <= 1'b0;
               qbar <= 1'b1;
               end 
               
             else if(s == 1 && r == 1)
               begin
               q <= 'bx;
               qbar <= 'bx;
               end
         end      
             
    
endmodule
