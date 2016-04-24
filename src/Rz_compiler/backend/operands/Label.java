package Rz_compiler.backend.operands;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;

/**
 * Created by YRZ on 4/23/16.
 */
public class Label implements Operand, PseudoInstruction {

    private static int totLabel = 0;
    private int cnt;

    public Label() {
        this.cnt = ++totLabel;
    }

    @Override
    public String toString() {
        return "L" + cnt;
    }

    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }

    @Override
    public <T> T accept(InstructionVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
