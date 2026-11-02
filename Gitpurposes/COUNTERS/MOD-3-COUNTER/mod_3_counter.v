`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 11:20:00 PM
// Design Name: 
// Module Name: mod_3_counter
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


module mod_3_counter(
input clk,rst,enb, output reg [2:0] count
    );
//mod_3_counter    
//    always@(posedge clk)
//    begin
//    if(rst)
//    count <= 0;
//    else if( count <= 2'b10  && enb == 1) 
//    count <= count + 1'b1;
//    else if(enb == 1'b1 && count == 2'b11)
//    count <= 0;
//    else if(enb == 1'b0)
//    count <= count;
//    end 
// mod_5_counter
     always@ (posedge clk)
     begin
     if(rst)    
     count <= 0;
     else 
     if( count < 4 && enb == 1)
     count <= count + 1'b1;
     else 
     if( count >= 4 && enb == 1'b1)
     count <= 1'b0;
     else if(enb == 0)
     count <= count;
     end
    
endmodule
