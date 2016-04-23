package Rz_compiler.backend.instructions.load_store_move;

import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public class LhInstr extends MipsInstruction implements PseudoInstruction {

    public LhInstr(Operand dest, Operand addr) {
        super(dest, addr);
    }
}
