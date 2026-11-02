`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 05:12:45 PM
// Design Name: 
// Module Name: multi_frequency_divider
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


module multi_frequency_divider(
input clk,rst,enb,
input [1:0] mode, 
output reg f_2,f_4,f_8,f_16
    );
    
    reg [3:0] count;
    
    always@(posedge clk)
    begin
    if(rst) 
    count <= 0;
    else if(enb)
    count <= count + 1'b1;
    else if(enb == 0)
    count <= count;
    case(mode)
    
    2'b00 :  begin
    f_2 <= count[0];
    end
    
    2'b01 : begin
    f_4 <= count[1];
    end
    
    2'b10 : begin
    f_8 <= count[2];
    end
    
    2'b11 : begin
    f_16 <= count[3];
    end
    
    default : begin
    f_2 <= 0;
    f_4 <= 0;
    f_8 <= 0;
    f_16 <= 0; 
    end
    
    endcase
    
    end 
    
endmodule
