module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] first, second, third;
    
    my_dff8 first_dff(clk, d, first);
    my_dff8 second_dff(clk, first, second);
    my_dff8 third_dff(clk, second, third);
    
    always @(clk) begin
        case(sel)
        	2'b00 : q = d;
            2'b01 : q = first;
            2'b10 : q = second;
            2'b11 : q = third;
        endcase
    end

endmodule

