module tb_counter_3bit;
    
    reg clk, rst;

    wire [2:0] ctr_out;

    counter_3bit uut (
        .clk(clk),
        .rst(rst),
        .ctr(ctr_out)
    );

    initial
        begin 
            $dumpfile("tb_counter_3bit.vcd");
            $dumpvars(0,tb_counter_3bit);
            #5 clk = 0; rst = 0;
            #1300 rst = 1;
            #100 rst = 0;
            #1600 $finish;
        end

    always
        #50 clk = ~clk;
endmodule
               
