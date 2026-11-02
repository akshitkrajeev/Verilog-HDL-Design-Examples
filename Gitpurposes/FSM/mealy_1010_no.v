`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 07:54:04 PM
// Design Name: 
// Module Name: mealy_1010_no
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


module mealy_1010_no(
input clk,rst,din, output reg detected
    );
    
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;
    
    reg [1:0] ps,ns;
    
    //present state logic
    
    always@(posedge clk)
    begin
    if(rst == 1)
    ps <= s0;
    else
    ps <= ns;
    end
    
    always@(*)
    begin
    case(ps)
    
    s0 : begin
    
    if(din  == 0)
    ns = s0;
    else if(din == 1'b1)
    ns = s1;
    end
    
    s1 : begin
    if(din  == 0)
    ns = s2;
    else if(din == 1'b1)
    ns = s1;
    end
    
    s2 : begin
    if(din  == 0)
    ns = s0;
    else if(din == 1'b1)
    ns = s3;
    end
    
    s3 : begin
    if(din  == 0)
    begin
    ns = s0;
    
    end
    else if(din == 1'b1) 
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
    detected <= 0;
    else
    begin
    case(ps)
    
    s0 : detected <= 0;
    s1 : detected <= 0;
    s2 : detected <= 0;
    s3 : begin
    if(din == 1'b0)
    detected <= 1'b1;
    else 
    detected <= 1'b0;
    end
    
    default : detected <= 1'b0;
    
    endcase
    end
    end
  
endmodule
