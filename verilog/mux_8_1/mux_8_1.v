module mux_8_1
    (output reg f,
    input [2:0] sel,
    input [7:0] i);

    always @(*)
        begin
            case(sel)
                3'b000 : f = i[0];
                3'b001 : f = i[1];
                3'b010 : f = i[2];
                3'b011 : f = i[3];
                3'b100 : f = i[4];
                3'b101 : f = i[5];
                3'b110 : f = i[6];
                3'b111 : f = i[7];
            endcase
        end
endmodule
