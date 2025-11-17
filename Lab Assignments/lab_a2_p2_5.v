module lab_a2_p2_5 (
    input  [1:0] sa,
    input  [1:0] sb,
    output       so
);

    lab_a2_p2_MUX8_1 u_mux (
        .sel({sa[1], sb[1], sb[0]}),
        .D  ({~sa[0], 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, sa[0], 1'b0}),
        .y  (so)
    );

endmodule
