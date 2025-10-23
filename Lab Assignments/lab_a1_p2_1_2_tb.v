`timescale 1ns/1ps
module lab_a1_p2_1_2_tb;
    reg  tb_a;
    reg  tb_b;
    wire tb_o1;
    wire tb_o2;

    lab_a1_p2_1 dut1(
        .a(tb_a),
        .b(tb_b),
        .x(tb_o1)
    );

    lab_a1_p2_2 dut2(
        .a(tb_a),
        .b(tb_b),
        .x(tb_o2)
    );

    initial $monitor ("%d %d %d %d", tb_a, tb_b, tb_o1, tb_o2);

    integer i;
    initial begin
        for(i = 0; i <= 3; i = i + 1) begin
            {tb_a, tb_b} = i[1:0];
            #1;
        end
        $finish;
    end
endmodule
