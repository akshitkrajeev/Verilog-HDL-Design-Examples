`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 02:37:45 PM
// Design Name: 
// Module Name: usr
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


module usr(
input clk,rst,s_in,load,shift, 
input [3:0] p_in, 
input [1:0] mode, 
output reg s_out, 
output reg [3:0] p_out 
    );

reg [3:0] temp;    
    
    always@(posedge clk) begin
    if(rst)
    temp <= 4'b0000;
    
    case(mode)
    
    2'b00 : begin
            if(shift) begin
            temp <= temp >> 1'b1;
            temp[3] <= s_in;
            s_out <= temp[0];
            end
            end
    2'b01 : begin
            if(shift) begin
            temp <= temp >> 1'b1;
            temp[3] <= s_in;
            end
            else if(shift == 0)
            p_out <= temp;
            end
    2'b10 : begin
            if(load) 
            temp <= p_in;
            else if(load ==0) begin
            s_out <= temp[0];
            temp <= temp >> 1'b1;
            end
            end
    2'b11 : begin
            if(load)
            temp <= p_in;
            else if(load == 0)
            p_out <= temp;
            end 
            
    default : temp <= temp;        
                 
    endcase             
    end
    
    
    
    
endmodule
