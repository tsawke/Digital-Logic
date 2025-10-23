module lab_a1_p2_4(
    input  [3:0] bin,
    output [3:0] gout
);
    buf b3(gout[3], bin[3]);
    xor x2(gout[2], bin[3], bin[2]);
    xor x1(gout[1], bin[2], bin[1]);
    xor x0(gout[0], bin[1], bin[0]);
endmodule
