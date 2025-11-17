module lab_a2_p2_2 (
    input  [6:0] ascii,
    output reg   y
);

    always @* begin
        case (ascii)
            7'd8, 7'd9, 7'd10, 7'd13:
                y = 1'b1;
            default:
                y = 1'b0;
        endcase
    end

endmodule
