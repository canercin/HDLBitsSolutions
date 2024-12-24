module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire in1_XNOR_in2 = ~(in1 ^ in2);
    assign out = in1_XNOR_in2 ^ in3;

endmodule
