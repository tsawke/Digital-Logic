`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/23 21:03:47
// Design Name: 
// Module Name: sop_som_pom
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


module sop_som_pom( input a, b, c, output z1, z2, z3 );

wire na,nb,nc;
not un1(na,a),  un2(nb,b),  un3(nc,c);

wire ua1_o;
and ua1( ua1_o, nb, c );
or uo1( z1, ua1_o, a );

wire ua2_o, ua3_o, ua4_o, ua5_o, ua6_o;
and ua2( ua2_o, na, nb, c ), ua3( ua3_o, a, nb, nc ), ua4( ua4_o, a, nb, c ), ua5( ua5_o, a, b, nc ), ua6( ua6_o, a, b, c );
or uo2( z2, ua2_o, ua3_o, ua4_o, ua5_o, ua6_o );

wire uo3_o, uo4_o, uo5_o;
or uo3(uo3_o, a, b, c), uo4(uo4_o, a, nb, c), uo5(uo5_o, a, nb, nc);
and ua7( z3, uo3_o, uo4_o, uo5_o);

endmodule
