module lab_a2_p2_3 (
    input  [6:0] ascii,
    output       y
);

    lab_a2_p2_MUX_16_1_neg_enable u_mux (
        .sel    (ascii[3:0]),
        .D      ({
                    1'b0,
                    1'b0,
                    (ascii[6:4] == 3'b000),
                    1'b0,
                    1'b0,
                    (ascii[6:4] == 3'b000),
                    (ascii[6:4] == 3'b000),
                    (ascii[6:4] == 3'b000),
                    1'b0,
                    1'b0,
                    1'b0,
                    1'b0,
                    1'b0,
                    1'b0,
                    1'b0,
                    1'b0
                }),
        .neg_en (1'b0),
        .y      (y)
    );

endmodule
