package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public class TemporaryRegister implements Register {

    private int cnt;

    private boolean containValue = true;

    private boolean global = false;
    private MipsRegister inRegister = null;
    private MipsRegister historyRegister = null;
    private Label GLMem = null;

    // inMem indicates whether should be load
    private boolean inMem = false;

    public void setGlobalMem(Label label) {
        this.GLMem = label;
    }

    public Label getGlobalMem() {
        return GLMem;
    }

    public void setInRegister(MipsRegister register) {
        this.inMem = false;
        this.inRegister = register;
        this.historyRegister = register;
    }

    public MipsRegister isInRegister() {
        return inRegister;
    }

    public void leaveRegister() {
        historyRegister = inRegister;
        inRegister = null;
        inMem = true;
    }

    public MipsRegister getHistoryRegister() {
        return historyRegister;
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
        this.global = true;
        return this;
    }

    public void clear() {
        this.inRegister = null;
        this.historyRegister = null;
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
    public <T> T accept(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
