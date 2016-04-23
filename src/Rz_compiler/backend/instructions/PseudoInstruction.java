package Rz_compiler.backend.instructions;

import Rz_compiler.backend.instructions.visitors.InstructionVisitor;

/**
 * Created by YRZ on 4/20/16.
 */
public interface PseudoInstruction {

    <T> T accept(InstructionVisitor<T> visitor);
}
