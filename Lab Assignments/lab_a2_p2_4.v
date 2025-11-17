module lab_a2_p2_4 (
    input  [1:0] sa,
    input  [1:0] sb,
    output reg   so
);

    reg [1:0] sum;

    always @* begin
        sum = sa + sb;
        if ((sa[1] == sb[1]) && (sum[1] != sa[1]))
            so = 1'b1;
        else
            so = 1'b0;
    end

endmodule
