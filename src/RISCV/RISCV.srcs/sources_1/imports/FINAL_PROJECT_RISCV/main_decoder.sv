
// main_decoder - logic for main decoder

module main_decoder (
    input  [6:0]   op,
    input  [2:0]   funct3,
    output [1:0]   ResultSrc,
    output         MemWrite, Branch, ALUR31, ALUSrc,
    output         RegWrite, Zero, Jump, Jalr,
    output logic   Take_Branch,
    output [1:0]   ImmSrc,
    output [1:0]   ALUOp, Store,
    output [2:0]   Load
);

logic [16:0] controls;

logic [2:0] ld;



always @(*) begin

ld = (op[5] == 1'b0) ? funct3 : 3'b0;

    case (op)
        // RegWrite_ImmSrc_ALUSrc_MemWrite_ResultSrc_Branch_ALUOp_Jump_Store_Load_Jalr
        7'b0000011: controls = {13'b1_00_1_0_01_0_00_0_00,funct3,1'b0};
        7'b0100011: controls = {11'b0_01_1_1_00_0_00_0,funct3[1:0],4'b000_0};
        7'b0110011: controls = 17'b1_xx_0_0_00_0_10_0_00_010_0; // R–type
        7'b1100011: controls = 17'b0_10_0_0_00_1_01_0_00_010_0; // B-type
        7'b0010011: controls = 17'b1_00_1_0_00_0_10_0_00_010_0; // I–type ALU
        7'b1100111: controls = 17'b1_00_1_0_10_0_00_0_00_010_1; // jalr
        7'b1101111: controls = 17'b1_11_0_0_10_0_00_1_00_010_0; // jal
        7'b0010111: controls = 17'b1_xx_x_0_11_0_00_0_00_010_0; // auipc
        7'b0110111: controls = 17'b1_xx_x_0_11_0_00_0_00_010_0; // lui
        default:    controls = 17'bx_xx_x_x_xx_x_xx_x_xx_xxx_x; // ???
    endcase

    Take_Branch = 0;
    if (Branch) begin
        case (funct3)
            3'b000:  Take_Branch = Zero;
            3'b001:  Take_Branch = ~Zero;
            3'b100:  Take_Branch = ALUR31;
            3'b101:  Take_Branch = !ALUR31;
            default: Take_Branch = 0;
        endcase
    end

end

assign {RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, Branch, ALUOp, Jump, Store, Load, Jalr} = controls;

endmodule
