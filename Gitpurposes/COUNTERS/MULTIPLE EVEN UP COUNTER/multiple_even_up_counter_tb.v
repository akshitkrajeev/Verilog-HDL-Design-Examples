`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 05:21:24 PM
// Design Name: 
// Module Name: multiple_even_up_counter_tb
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


module multiple_even_up_counter_tb(

    );
    
reg clk,rst,enb;
reg [1:0] mode;
reg [2:0] up_downbar;
wire mod2;
wire [1:0] mod4;
wire [2:0] mod8;
wire [3:0] mod16;

multiple_even_up_counter dut(clk,rst,enb,mode,up_downbar,mod2,mod4,mod8,mod16);

initial begin
{clk,rst,enb,mode,up_downbar} = 0;
end

always #5 clk = ~clk;

initial begin
rst = 1;
#10;
rst = 0;
#10;
enb = 1'b1;
up_downbar = 1'b0;
mode = 2'b10;
#200;
enb = 0;

end
endmodule
