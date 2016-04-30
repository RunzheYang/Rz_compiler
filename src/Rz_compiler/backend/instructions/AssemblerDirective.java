package Rz_compiler.backend.instructions;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;

/**
 * Created by YRZ on 4/23/16.
 */
public class AssemblerDirective implements PseudoInstruction {

    private String directive;

    public AssemblerDirective(String directive) {
        this.directive = directive;
    }

    @Override
    public String toString() {
        return directive;
    }

    @Override
    public <T> T accept(InstructionVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
