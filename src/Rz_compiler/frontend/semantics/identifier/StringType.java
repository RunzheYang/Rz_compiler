package Rz_compiler.frontend.semantics.identifier;

/**
 * Created by YRZ on 3/30/16.
 */
public class StringType extends Type {

    @Override
    public String toString() {
        return "string";
    }

    @Override
    public boolean equals(Object o) {
        return o instanceof StringType;
    }
}
