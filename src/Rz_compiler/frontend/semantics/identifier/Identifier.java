package Rz_compiler.frontend.semantics.identifier;

import Rz_compiler.backend.operands.TemporaryRegister;

/**
 * Created by YRZ on 3/30/16.
 */
public class Identifier implements Cloneable {
    private TemporaryRegister register = null;
    private boolean global = false;
    private String name = null;

    public void setRegister(TemporaryRegister register) {
        this.register = register;
    }

    public TemporaryRegister getRegister() {
        return register;
    }

    public Identifier setGlobal(String name) {
        this.name = name;
        this.global = true;
        return this;
    }

    public String getName() {
        return name;
    }

    public boolean isGlobal() {
        return global;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
