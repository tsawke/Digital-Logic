`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 10:59:13 AM
// Design Name: 
// Module Name: lab2_hw
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

// lab2_hw.v

module lab2_hw(
    input  x,
    input  y,
    input  z,
    output out
);
    wire notx, noty, notz;
    wire out1, out2, out3;

    not nx(notx, x);
    not ny(noty, y);
    not nz(notz, z);

    and u1(out1, notx, noty, z);
    and u2(out2, notx, y,    z);
    and u3(out3, x,    noty   );

    or  u4(out, out1, out2, out3);
endmodule

