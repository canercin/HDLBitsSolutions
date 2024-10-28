module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    int counter;
    always @(in) begin
        counter = 0;
        for(int i = 0; i < $bits(in); i = i + 1) begin
            if(in[i] == 1'b1) begin
            	counter = counter + 1;
            end
        end
        out = counter;
    end

endmodule

