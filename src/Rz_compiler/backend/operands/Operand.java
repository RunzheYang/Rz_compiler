package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public interface Operand {
    <T> T accpet(OperandVisitor<T> visitor);
}
