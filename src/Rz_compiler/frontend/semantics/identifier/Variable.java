package Rz_compiler.frontend.semantics.identifier;

/**
 * Created by YRZ on 3/30/16.
 */

public class Variable extends Identifier {

    private Type type;

    public Variable(Type tp) {
        type = tp;
    }

    public Type getType() {
        return type;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        Variable o = (Variable) super.clone();
        return o;
    }
}
