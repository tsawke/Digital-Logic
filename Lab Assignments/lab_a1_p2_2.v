module lab_a1_p2_2(
    input a,
    input b,
    output x
);
    wire na, nb, c, d;
    
    not g2(na, a);
    not g3(nb, b);
    and g1(c, a, b);
    and g4(d, na, nb);
    or  g5(x, c, d);

endmodule