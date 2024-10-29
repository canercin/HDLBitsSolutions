module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire[3:0] couts;
    
    full_adder adder1(x[0], y[0], 0, couts[0], sum[0]);
    full_adder adder2(x[1], y[1], couts[0], couts[1], sum[1]);
    full_adder adder3(x[2], y[2], couts[1], couts[2], sum[2]);
    full_adder adder4(x[3], y[3], couts[2], sum[4], sum[3]);

endmodule

module full_adder( 
    input a, b, cin,
    output cout, sum );
	
    assign sum = a ^ b ^ cin;
	assign cout = (a & b) | (cin & (a ^ b));

endmodule
