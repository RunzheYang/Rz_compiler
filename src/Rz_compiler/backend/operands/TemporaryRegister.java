package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class TemporaryRegister implements Register {

    private int cnt;

    private boolean containValue = true;

    private boolean global = false;
    private MipsRegister inRegister = null;
    private int offset = 0;
    private Label GLMem = null;

    private boolean inMem = false;

    public void setGlobalMem(Label label) {
        this.GLMem = label;
    }

    public Label getGlobalMem() {
        return GLMem;
    }

    public void setInRegister(MipsRegister register) {
        this.inRegister = register;
    }

    public MipsRegister isInRegister() {
        return inRegister;
    }

    public void leaveRegister() {
        inRegister = null;
        inMem = true;
    }

    public boolean isInMem() {
        return inMem;
    }

    public Register setMem() {
        this.containValue = false;
        return this;
    }

    public Register setValue() {
        this.containValue = true;
        return this;
    }

    public Register setGlobal() {
        this.global = global;
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
        return "$u" + cnt;
    }

    @Override
    public boolean isGlobal() {
        return global;
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
