`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 11:17:49 AM
// Design Name: 
// Module Name: lab2_hw_tb
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


// lab2_hw_tb.v

module lab2_hw_tb();
    reg  tb_x;
    reg  tb_y;
    reg  tb_z;

    wire tb_out;

    lab2_hw dut(
        .x(tb_x),
        .y(tb_y),
        .z(tb_z),
        .out(tb_out)
    );

    integer i;
    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            {tb_x, tb_y, tb_z} = i[2:0];
            #10;
        end
        #10 $finish;
    end 
//    initial #10 $finish;
endmodule
