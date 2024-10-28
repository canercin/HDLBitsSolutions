module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire a_AND_b, c_AND_d;
    
    assign a_AND_b = a & b;
    assign c_AND_d = c & d;
    assign out = (a_AND_b) | (c_AND_d);
    assign out_n = ~out;

endmodule
