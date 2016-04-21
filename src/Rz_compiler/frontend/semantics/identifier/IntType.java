package Rz_compiler.frontend.semantics.identifier;

/**
 * Created by YRZ on 3/30/16.
 */
public class IntType extends Type {

    @Override
    public String toString() {
        return "int";
    }

    @Override
    public boolean equals(Object o) {
        if (o instanceof IntType || o instanceof BoolType) {
            return true;
        }
        return false;
    }
}
