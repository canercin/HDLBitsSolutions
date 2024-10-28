module top_module ( input clk, input d, output q );
    
    wire first, second;
    
    my_dff first_dff(clk, d, first);
    my_dff second_dff(clk, first, second);
    my_dff third_dff(clk, second, q);

endmodule

