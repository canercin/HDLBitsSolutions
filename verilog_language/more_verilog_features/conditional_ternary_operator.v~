module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] first = (a < b) ? a : b;
    wire [7:0] second = (c < d) ? c : d;
    assign min = (first < second) ? first : second;

endmodule

