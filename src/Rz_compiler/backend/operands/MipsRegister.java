package Rz_compiler.backend.operands;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by YRZ on 4/23/16.
 */
public enum MipsRegister implements Register {
    $zero, $at, $v0, $v1, $a0, $a1, $a2, $a3,
    $t0, $t1, $t2, $t3, $t4, $t5, $t6, $t7, $s0, $s1, $s2, $s3, $s4, $s5, $s6, $s7,
    $t8, $t9, $k0, $k1, $gp, $sp, $fp, $ra;

    private boolean containValue = true;

    private boolean global = false;

    public static Set<Register> getRealTemporaryRegisters() {
        Set<Register> realTemp = new HashSet<>();
        realTemp.add($t0);
        realTemp.add($t1);
        realTemp.add($t2);
        realTemp.add($t3);
        realTemp.add($t4);
        realTemp.add($t5);
        realTemp.add($t6);
        realTemp.add($t7);
        realTemp.add($t8);
        realTemp.add($t9);
        realTemp.add($s0);
        realTemp.add($s1);
        realTemp.add($s2);
        realTemp.add($s3);
        realTemp.add($s4);
        realTemp.add($s5);
        realTemp.add($s6);
        realTemp.add($s7);
        return realTemp;
    }

    public Register setMem() {
        this.containValue = false;
        return this;
    }

    public Register setValue() {
        this.containValue = true;
        return this;
    }

    public Register setGlobal() {
        this.global = global;
        return this;
    }

    @Override
    public boolean isContainValue() {
        return containValue;
    }

    @Override
    public boolean isGlobal() {
        return global;
    }

    @Override
    public <T> T accept(OperandVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
