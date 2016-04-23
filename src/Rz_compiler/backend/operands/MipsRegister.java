package Rz_compiler.backend.operands;

/**
 * Created by YRZ on 4/23/16.
 */
public enum MipsRegister implements Register {
    $zero, $at, $v0, $v1, $a0, $a1, $a2, $a3,
    $t0, $t1, $t2, $t3, $t4, $t5, $t6, $t7, $s0, $s1, $s2, $s3, $s4, $s5, $s6, $s7,
    $t8, $t9, $k0, $k1, $gp, $sp, $fp, $ra;

    @Override
    public <T> T accpet(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
