module lab_a1_p2_5(
    input  [3:0] bin,
    output [3:0] gout
);
    assign gout[3] = bin[3];
    assign gout[2] = bin[3] ^ bin[2];
    assign gout[1] = bin[2] ^ bin[1];
    assign gout[0] = bin[1] ^ bin[0];
endmodule