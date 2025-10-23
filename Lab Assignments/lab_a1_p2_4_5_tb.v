`timescale 1ns/1ps
module lab_a1_p2_4_5_tb;
    reg  [3:0] tb_bin;
    wire [3:0] tb_o1;
    wire [3:0] tb_o2;

    lab_a1_p2_4 dut1(
        .bin (tb_bin),
        .gout(tb_o1)
    );

    lab_a1_p2_5 dut2(
        .bin (tb_bin),
        .gout(tb_o2)
    );

    initial $monitor("%d %d %d", tb_bin, tb_o1, tb_o2);

    integer i;
    initial begin
        for(i = 0; i < 16; i = i + 1) begin
            tb_bin = i[3:0];
            #1;
        end
        $finish;
    end

endmodule
