module counter_3bit
    (output reg[2:0] ctr = 0,
    input clk,
    input rst);

    always @(posedge clk, posedge rst)
        begin
            if (rst)
                ctr <= 0;
            else
                ctr <= ctr + 1;
        end 

endmodule
