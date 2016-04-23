package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class NoOperand implements Operand {
    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
