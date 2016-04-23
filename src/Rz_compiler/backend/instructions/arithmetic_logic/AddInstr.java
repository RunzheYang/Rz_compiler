package Rz_compiler.backend.instructions.arithmetic_logic;

import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public class AddInstr extends MipsInstruction implements PseudoInstruction {
    public AddInstr(Operand dest, Operand src1, Operand src2) {
        super(dest, src1, src2);
    }
}
