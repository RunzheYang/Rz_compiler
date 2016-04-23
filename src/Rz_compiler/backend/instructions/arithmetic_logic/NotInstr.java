package Rz_compiler.backend.instructions.arithmetic_logic;

import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public class NotInstr extends MipsInstruction implements PseudoInstruction {

    public NotInstr(Operand dest, Operand src) {
        super(dest, src);
    }

    @Override
    public <T> T accept(InstructionVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
