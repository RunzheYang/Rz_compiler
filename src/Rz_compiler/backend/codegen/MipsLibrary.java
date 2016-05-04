package Rz_compiler.backend.codegen;

/**
 * Created by YRZ on 5/4/16.
 */
public class MipsLibrary {
    public String func_toString = "f_toString:\n\tli $t0, 0\n\tbgez $a0, _skip_set_less_than_zero\n\tli $t0, 1\n\tneg $a0, $a0\n\t_skip_set_less_than_zero:\n\tbeqz $a0, _set_zero\n\tli $t1, 0\n\tmove $t2, $a0\n\tmove $t3, $a0\n\tli $t5, 10\n\t_begin_count_digit:\n\tdiv $t2, $t5\n\tmflo $v0\n\tmfhi $v1\n\tbgtz $v0 _not_yet\n\tbgtz $v1 _not_yet\n\tj _yet\n\t_not_yet:\n\tadd $t1, $t1, 1\n\tmove $t2, $v0\n\tj _begin_count_digit\n\t_yet:\n\tbeqz $t0, _skip_reserve_neg\n\tadd $t1, $t1, 1\n\t_skip_reserve_neg:\n\tadd $a0, $t1, 5\n\tli $v0, 9\n\tsyscall\n\tsw $t1, 0($v0)\n\tadd $v0, $v0, 4\n\tadd $t1, $t1, $v0\n\tsb $zero, 0($t1)\n\tsub $t1, $t1, 1\n\t_continue_toString:\n\tdiv $t3, $t5\n\tmfhi $v1\n\tadd $v1, $v1, 48\n\tsb $v1, 0($t1)\n\tsub $t1, $t1, 1\n\tmflo $t3\n\tbnez $t3, _continue_toString\n\tbeqz $t0, _skip_place_neg\n\tli $v1, 45\n\tsb $v1, 0($t1)\n\t_skip_place_neg:\n\tjr $ra\n\t_set_zero:\n\tli $a0, 6\n\tli $v0, 9\n\tsyscall\n\tli $a0, 1\n\tsw $a0, 0($v0)\n\tadd $v0, $v0, 4\n\tli $a0, 48\n\tsb $a0, 0($v0)\n\tjr $ra";
}
