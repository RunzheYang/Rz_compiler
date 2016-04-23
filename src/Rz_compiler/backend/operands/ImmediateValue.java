package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class ImmediateValue implements Operand {

    private int num;

    @Override
    public String toString() {
        return "" + num;
    }

    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
