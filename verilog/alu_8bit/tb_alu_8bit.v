module tb_alu_8bit;
    reg [7:0] ra;
    reg [7:0] rb;
    reg [2:0] aluControl;
    wire [7:0] rd;

    alu_8bit uut (
        .ra(ra),
        .rb(rb),
        .rd(rd),
        .aluControl(aluControl)
    );

    initial
        begin
            $dumpfile("tb_alu_8bit.vcd");
            $dumpvars(0, tb_alu_8bit);
            #5 aluControl = 3'b101; ra = 8'b0000_1111; rb = 8'b0000_0001;
            #20 aluControl = 3'b010;
            #25 aluControl = 3'b000;
            #25 ra = 8'b0101_0101; rb = 8'b0000_1111;
            #25 aluControl = 3'b101;
            #25 aluControl = 3'b001;
            #25 $finish;
        end
endmodule
