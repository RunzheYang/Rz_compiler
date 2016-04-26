package Rz_compiler.frontend.semantics.identifier;

/**
 * Created by YRZ on 3/30/16.
 */
public class BoolType extends Type {

    @Override
    public String toString() {
        return "bool";
    }

    @Override
    public boolean equals(Object o) {
        if (o instanceof BoolType || o instanceof IntType) {
            return true;
        }
        return false;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
