package Rz_compiler.backend.instructions.load_store_move;

import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public class LbInstr extends MipsInstruction implements PseudoInstruction {

    public LbInstr(Operand dest, Operand addr) {
        super(dest, addr);
    }
}
