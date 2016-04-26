package Rz_compiler.frontend.semantics.identifier;

import Rz_compiler.backend.operands.TemporaryRegister;

/**
 * Created by YRZ on 3/30/16.
 */
public class Identifier implements Cloneable {
    private TemporaryRegister register = null;

    public void setRegister(TemporaryRegister register) {
        this.register = register;
    }

    public TemporaryRegister getRegister() {
        return register;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
