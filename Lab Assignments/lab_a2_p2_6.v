module lab_a2_p2_6 (
    input  [3:0]  sel,
    input  [15:0] D,
    input         neg_en,
    output        y
);

    wire y_low;
    wire y_high;

    lab_a2_p2_MUX8_1_neg_en u_mux_low (
        .sel    (sel[2:0]),
        .D      (D[7:0]),
        .neg_en (neg_en),
        .y      (y_low)
    );

    lab_a2_p2_MUX8_1_neg_en u_mux_high (
        .sel    (sel[2:0]),
        .D      (D[15:8]),
        .neg_en (neg_en),
        .y      (y_high)
    );

    wire n_sel3;
    wire t0, t1;

    not (n_sel3, sel[3]);
    and (t0, n_sel3, y_low);
    and (t1, sel[3], y_high);
    or  (y,  t0, t1);

endmodule
