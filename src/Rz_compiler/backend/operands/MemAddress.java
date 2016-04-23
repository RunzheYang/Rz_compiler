package Rz_compiler.backend.operands;

import Rz_compiler.backend.controlflow.AbstractGraph;

/**
 * Created by YRZ on 4/23/16.
 */
public class MemAddress implements Operand {

    private Register reg;
    private Integer offset = null;
    private Register regOffset = null;

    public MemAddress(Register reg, int offset) {
        this.reg = reg;
        this.offset = offset;
    }

    public MemAddress(Register reg, Register regOffset) {
        this.reg = reg;
        this.regOffset = regOffset;
    }

    @Override
    public String toString() {
        if (regOffset == null) {
            return offset + "(" + reg + ")";
        }
        return regOffset + "(" + reg + ")";
    }

    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
