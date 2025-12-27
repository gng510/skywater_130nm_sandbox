// Simple 8-bit RISC ALU using 3-bit control
// signal described in Weste & Harris, "CMOS 
// VLSI Design", 4th ed. 

`define ALU_ADD 3'b010
`define ALU_SUB 3'b110
`define ALU_AND 3'b000
`define ALU_OR  3'b001
`define ALU_SLT 3'b111

module alu_8bit
    (output reg [7:0] rd,
    input [2:0] aluControl,
    input [7:0] ra,
    input [7:0] rb);

    always @(*)
        begin
            case(aluControl)
                `ALU_ADD: rd = ra + rb;
                `ALU_SUB: rd = ra - rb;
                `ALU_AND: rd = ra & rb;
                `ALU_OR : rd = ra | rb;
                `ALU_SLT: begin
                    if (ra < rb)
                        rd = 1;
                    else
                        rd = 0;
                    end
                default: rd = 0;
            endcase
        end
endmodule
