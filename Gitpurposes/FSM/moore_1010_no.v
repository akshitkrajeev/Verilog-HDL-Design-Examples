`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 11:28:11 PM
// Design Name: 
// Module Name: moore_1010_no
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


module moore_1010_no(
input clk,rst,din, output reg detected
    );
    
    parameter s0 = 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 = 3'b011;
    parameter s4 = 3'b100;
    
    reg [2:0] ps,ns;
    
    always@(posedge clk)
    begin
    if(rst)
    ps <= 1'b0;
    else
    ps <= ns;
    end
    
    always@(*)
    begin
    case(ps)
    
    s0 : begin
    
    if(din  == 1'b0)
    ns = s0;
    else if(din == 1'b1)
    ns = s1;
    end
    
    s1 : begin
    if(din  == 1'b0)
    ns = s2;
    else if(din == 1'b1)
    ns = s1;
    end
    
    s2 : begin
    if(din  == 1'b0)
    ns = s0;
    else if(din == 1'b1)
    ns = s3;
    end
    
    s3 : begin
    if(din  == 1'b0)
    ns = s4;
   
    else if(din == 1'b1) 
    ns = s1;
    end
    
    s4 : begin
    if(din == 1'b0)
    ns = s0;
    else
    ns = s1;
    end
    
    default : begin
    ns = s0;
    end
     
    endcase
    end
    
    always@(posedge clk)
    begin
    if(rst)
    detected <= 1'b0;
    else
    case(ps)
    s0 : detected <= 1'b0;
    s1 : detected <= 1'b0;
    s2 : detected <= 1'b0;
    s3 : detected <= 1'b0;
    s4 : detected <= 1'b1;
    default : detected <= 1'b0;
    endcase
  
    end
endmodule
