package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class TemporaryRegister implements Register {

    private int cnt;

    private boolean containValue = true;

    public Register setMem() {
        this.containValue = false;
        return this;
    }

    public Register setValue() {
        this.containValue = true;
        return this;
    }

    @Override
    public boolean isContainValue() {
        return containValue;
    }

    public TemporaryRegister(int cnt) {
        this.cnt = cnt;
    }

    @Override
    public String toString() {
        if (cnt < 10) return "$t" + cnt;
        else return "$s" + (cnt - 10);
    }

    @Override
    public int hashCode() {
        return cnt;
    }

    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
