`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 02:23:45 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
input enb,rst,d, output reg q,qbar
    );
    always@(enb) begin
      if(!enb)
         if(rst)
           begin
             q <= 1'b0;
             qbar <= 1'b1;
           end
          else begin
          q = d;
          qbar = ~d;
          end
      end    
endmodule
