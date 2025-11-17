module lab_a2_p2_1 (
    input  [1:0] p,
    input  [1:0] q,
    output       y
);

lab_a2_p2_MUX8_1 u_mux (
    .sel({p[1], p[0], q[1]}),
    .D  ({q[0], 1'b0, ~q[0], 1'b0, 1'b0, q[0], 1'b0, ~q[0]}),
    .y  (y)
);

endmodule
