`timescale 1ns/1ps
module lab_a1_p2_7_8_tb;
    reg [1:0] tb_a;
    reg [1:0] tb_b;
    wire      tb_o1;
    wire      tb_o2;

    lab_a1_p2_7 dut1(
        .a(tb_a),
        .b(tb_b),
        .y(tb_o1)
    );

    lab_a1_p2_8 dut2(
        .a(tb_a),
        .b(tb_b),
        .y(tb_o2)
    );

    initial $monitor("%d %d %d %d", tb_a, tb_b, tb_o1, tb_o2);

    integer i;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            {tb_a, tb_b} = i[3:0];
            #1;
        end
        $finish;
    end

endmodule
