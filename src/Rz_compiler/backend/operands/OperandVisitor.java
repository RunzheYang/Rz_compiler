package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public interface OperandVisitor<T> {

    T visit(MipsRegister mipsReg);

    T visit(TemporaryRegister tempReg);

    T visit(ImmediateValue immediate);

    T visit(Label label);

    T visit(NoOperand noOperand);
}
