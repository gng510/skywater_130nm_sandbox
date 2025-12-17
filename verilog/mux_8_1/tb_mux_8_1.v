module tb_mux_8_1;

    wire out;
    reg [2:0] sel;
    reg [7:0] in;

    mux_8_1 uut(
        .f(out),
        .sel(sel),
        .i(in)
    );

    initial
        begin
            $dumpfile("tb_mux_8_1.vcd");
            $dumpvars(0, tb_mux_8_1);
            #5 sel = 3'b000; in = 8'b0000_0001;
            #10 in = 8'b0000_0000;
            #15 sel = 3'b110;
            #20 in = 8'b0100_0000;
            #25 in = 8'b0001_0000;
            #50 $finish;
        end

endmodule
