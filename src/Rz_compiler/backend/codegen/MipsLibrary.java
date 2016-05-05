package Rz_compiler.backend.codegen;

/**
 * Created by YRZ on 5/4/16.
 */
public class MipsLibrary {

    public String func_toString
            = "f_toString:\n\tli $t0, 0\n\tbgez $a0, _skip_set_less_than_zero\n\tli $t0, 1\n\tneg $a0, $a0\n\t_skip_set_less_than_zero:\n\tbeqz $a0, _set_zero\n\tli $t1, 0\n\tmove $t2, $a0\n\tmove $t3, $a0\n\tli $t5, 10\n\t_begin_count_digit:\n\tdiv $t2, $t5\n\tmflo $v0\n\tmfhi $v1\n\tbgtz $v0 _not_yet\n\tbgtz $v1 _not_yet\n\tj _yet\n\t_not_yet:\n\tadd $t1, $t1, 1\n\tmove $t2, $v0\n\tj _begin_count_digit\n\t_yet:\n\tbeqz $t0, _skip_reserve_neg\n\tadd $t1, $t1, 1\n\t_skip_reserve_neg:\n\tadd $a0, $t1, 5\n\tli $v0, 9\n\tsyscall\n\tsw $t1, 0($v0)\n\tadd $v0, $v0, 4\n\tadd $t1, $t1, $v0\n\tsb $zero, 0($t1)\n\tsub $t1, $t1, 1\n\t_continue_toString:\n\tdiv $t3, $t5\n\tmfhi $v1\n\tadd $v1, $v1, 48\n\tsb $v1, 0($t1)\n\tsub $t1, $t1, 1\n\tmflo $t3\n\tbnez $t3, _continue_toString\n\tbeqz $t0, _skip_place_neg\n\tli $v1, 45\n\tsb $v1, 0($t1)\n\t_skip_place_neg:\n\tjr $ra\n\t_set_zero:\n\tli $a0, 6\n\tli $v0, 9\n\tsyscall\n\tli $a0, 1\n\tsw $a0, 0($v0)\n\tadd $v0, $v0, 4\n\tli $a0, 48\n\tsb $a0, 0($v0)\n\tjr $ra";

    public String func_stringConcatenate
            = "f_str.stringConcatenate:\n\tsubu $sp, $sp, 4\n\tsw $ra, 0($sp)\n\tmove $t2, $a0\n\tmove $t3, $a1\n\tlw $t0, -4($a0)\n\tlw $t1, -4($a1)\n\tadd $t5, $t0, $t1\n\tadd $a0, $t5, 5\n\tli $v0, 9\n\tsyscall\n\tsw $t5, 0($v0)\n\tadd $v0, $v0, 4\n\tmove $t4, $v0\n\tmove $a0, $t2\n\tmove $a1, $t4\n\tjal _string_copy\n\tmove $a0, $t3\n\tadd $a1, $t4, $t0\n\tjal _string_copy\n\tmove $v0, $t4\n\tlw $ra, 0($sp)\n\taddu $sp, $sp, 4\n\tjr $ra";

    public String label_stringCopy
            = "_string_copy:\n\t_begin_string_copy:\n\tlb $v0, 0($a0)\n\tbeqz $v0, _exit_string_copy\n\tsb $v0, 0($a1)\n\tadd $a0, $a0, 1\n\tadd $a1, $a1, 1\n\tj _begin_string_copy\n\t_exit_string_copy:\n\tsb $zero, 0($a1)\n\tjr $ra";

    public String func_subString
            = "f_str.substring:\n\tsubu $sp, $sp, 4\n\tsw $ra, 0($sp)\n\tmove $t0, $a0\n\tsub $t1, $a2, $a1\n\tadd $t1, $t1, 1\n\tadd $a0, $t1, 5\n\tli $v0, 9\n\tsyscall\n\tsw $t1, 0($v0)\n\tadd $v0, $v0, 4\n\tadd $a0, $t0, $a1\n\tadd $t2, $t0, $a2\n\tlb $t3, 1($t2)\n\tsb $zero, 1($t2)\n\tmove $a1, $v0\n\tmove $t4, $v0\n\tjal _string_copy\n\tmove $v0, $t4\n\tsb $t3, 1($t2)\n\tlw $ra, 0($sp)\n\taddu $sp, $sp, 4\n\tjr $ra";

    public String func_parseInt
            = "f_str.parseInt:\n\tli $v0, 0\n\tmove $t0, $a0\n\tli $t2, 1\n\t_count_number_pos:\n\tlb $t1, 0($t0)\n\tbgt $t1, 57, _begin_parse_int\n\tblt $t1, 48, _begin_parse_int\n\tadd $t0, $t0, 1\n\tj _count_number_pos\n\t_begin_parse_int:\n\tsub $t0, $t0, 1\n\t_parsing_int:\n\tblt $t0, $a0, _finish_parse_int\n\tlb $t1, 0($t0)\n\tsub $t1, $t1, 48\n\tmul $t1, $t1, $t2\n\tadd $v0, $v0, $t1\n\tmul $t2, $t2, 10\n\tsub $t0, $t0, 1\n\tj _parsing_int\n\t_finish_parse_int:\n\tjr $ra";

    public String func_ord
            = "f_str.ord:\n\tadd $a0, $a0, $a1\n\tlb $v0, 0($a0)\n\tjr $ra";
}
