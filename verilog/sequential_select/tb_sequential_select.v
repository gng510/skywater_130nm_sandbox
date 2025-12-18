module tb_sequential_select;

    reg clk, master_rst, start;
    reg [7:0] mux_in;
    wire out;

    sequential_select uut (
        .out(out),
        .start(start),
        .master_rst(master_rst),
        .mux_in(mux_in),
        .clk(clk)
    );
    
    initial 
        begin
            $dumpfile("tb_sequential_select.vcd");
            $dumpvars(0, tb_sequential_select);
            #5 clk = 0; mux_in = 8'b1010_1010; start = 1; 
            #5 master_rst = 1;
            #25 master_rst = 0;
            #2000 start = 0;
            #965 $finish;
        end 

    always
        #50 clk = ~clk;

endmodule
