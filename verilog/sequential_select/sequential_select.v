module sequential_select
    (output out,
    input start,
    input master_rst,
    input [7:0] mux_in,
    input clk);

    wire start_up;
    wire rst;
    wire [2:0] ctr_out;
    wire [2:0] sel;

    assign start_up = start & clk;
    assign sel[2] = ~ctr_out[2] & ~ctr_out[1];
    assign sel[1] = ctr_out[1];
    assign sel[0] = ~ctr_out[0];
    assign rst = start & (master_rst | (ctr_out[2] & ~ctr_out[1] & ctr_out[0]));

    counter_3bit ctr_unit (
        .clk(start_up),
        .rst(rst),
        .ctr(ctr_out)
    );

    mux_8_1 mux_unit (
        .f(out),
        .sel(sel),
        .i(mux_in)
    );
endmodule
