package Rz_compiler.semantics.identifier;

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
}
