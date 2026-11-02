`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 12:00:24 AM
// Design Name: 
// Module Name: mod_3_5_7_9
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


module mod_3_5_7_9(
input clk,rst,enb, 
input [2:0] mode,
output [1:0] mod_3,
output [2:0] mod_5,mod_7,
output [3:0] mod_9 
    );
    reg [3:0] counter;
    
    always@(posedge clk)
    begin
    if(rst)
    counter <= 0;
    
    
    case(mode)
    
    2'b00 : begin
    if(enb == 1 && counter < 3)
    counter <= counter + 1'b1;
    else if(enb == 1 && counter >= 3)
    counter <= 0;
    else if(enb == 0)
    counter <= counter ;
    end 
    
    2'b01 : begin
    if(enb == 1 && counter < 5)
    counter <= counter + 1'b1;
    else if(enb == 1 && counter >= 5)
    counter <= 0;
    else if(enb == 0)
    counter <= counter ;
    end 
    
    2'b10 : begin
    if(enb == 1 && counter < 7)
    counter <= counter + 1'b1;
    else if(enb == 1 && counter >= 7)
    counter <= 0;
    else if(enb == 0)
    counter <= counter ;
    end 
    
    2'b11 : begin
    if(enb == 1 && counter < 9)
    counter <= counter + 1'b1;
    else if(enb == 1 && counter >= 9)
    counter <= 0;
    else if(enb == 0)
    counter <= counter ;
    end 
    
    endcase
    end
    
    assign mod_3 = counter[1:0];
    assign mod_5 = counter[2:0];
    assign mod_7 = counter [2:0];
    assign mod_9 = counter [3:0];
endmodule
