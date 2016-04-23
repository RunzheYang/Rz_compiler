package Rz_compiler.backend.instructions.comparison;

import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public class SgtInstr extends MipsInstruction implements PseudoInstruction {

    public SgtInstr(Operand dest, Operand src1, Operand src2) {
        super(dest, src1, src2);
    }
}