package Rz_compiler.backend.instructions.branch_jump;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public class JrInstr implements PseudoInstruction {

    private Operand rSrc;

    public JrInstr(Operand rSrc) {
        this.rSrc = rSrc;
    }

    public Operand getrSrc() {
        return rSrc;
    }

    @Override
    public <T> T accept(InstructionVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
