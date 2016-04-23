package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class TemporaryRegister implements Register {

    private int cnt;

    public TemporaryRegister(int cnt) {
        this.cnt = cnt;
    }

    @Override
    public String toString() {
        return "$t" + cnt;
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
