`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 10:41:30 AM
// Design Name: 
// Module Name: demux_1_2_testb
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


module demux_1_2_testb(

    );
    
    reg in;
    reg s;
    wire [1:0] y;
    integer i;
    
    demux_1_2 dut(s,in,y);
    
initial
    begin
    {s,in} = 0;
    end
    
initial
    begin
    for(i=0;i<4;i = i + 1) begin
    #1;
    {s,in} = i;
    end
end
    
endmodule
