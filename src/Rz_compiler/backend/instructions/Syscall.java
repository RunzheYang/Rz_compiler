package Rz_compiler.backend.instructions;

import Rz_compiler.backend.instructions.visitors.InstructionVisitor;

/**
 * Created by YRZ on 4/28/16.
 */
public class Syscall implements PseudoInstruction {

    @Override
    public String toString() {
        return "syscall";
    }

    @Override
    public <T> T accept(InstructionVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
