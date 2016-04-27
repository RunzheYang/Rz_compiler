package Rz_compiler.backend.instructions;

import Rz_compiler.backend.operands.ImmediateValue;
import Rz_compiler.backend.operands.NoOperand;
import Rz_compiler.backend.operands.Operand;

/**
 * Created by YRZ on 4/23/16.
 */
public abstract class MipsInstruction {
    protected Operand dest;
    protected Operand src1, src2;

    public MipsInstruction(Operand dest, Operand src) {
        this.dest = dest;
        this.src1 = src;
        this.src2 = new NoOperand();
    }

    public MipsInstruction(Operand dest, Operand src1, Operand src2) {
        this.dest = dest;
        this.src1 = src1;
        this.src2 = src2;
    }

    public Operand getDest() {
        return dest;
    }

    public Operand getSrc1() {
        return src1;
    }

    public Operand getSrc2() {
        return src2;
    }
}
