package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class ImmediateValue implements Operand {

    private int num;

    public ImmediateValue(int num) {
        this.num = num;
    }

    public ImmediateValue(boolean num) {
        if (num) this.num = 1;
        else this.num = 0;
    }

    public int getValue() {
        return num;
    }

    @Override
    public String toString() {
        return "" + num;
    }

    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
