module A (input x, input y, output z);
    assign z =  x & (x ^ y);
endmodule

module B ( input x, input y, output z );
    assign z = ~(x ^ y);
endmodule


module top_module (input x, input y, output z);
	wire w_ia1, w_ia2, w_ib1, w_ib2;
    A ia1(x, y, w_ia1);
    A ia2(x, y, w_ia2);
    B ib1(x, y, w_ib1);
    B ib2(x, y, w_ib2);
    
    assign z = (w_ia1 | w_ib1) ^ (w_ia2 & w_ib2);
endmodule

