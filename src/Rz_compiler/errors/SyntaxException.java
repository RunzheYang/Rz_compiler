package Rz_compiler.errors;

import Rz_compiler.semantics.SymbolTable;

/**
 * Created by YRZ on 3/30/16.
 */
public class SyntaxException extends RuntimeException {

    public SyntaxException(String message) {
        super(message);
    }
}
