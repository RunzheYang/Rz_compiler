.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	1
msg_1:	.asciiz	" "
var_0:	.word	1
var_1:	.word	1
var_2:	.word	1
.text
main:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
L94:
	lw $t0, var_2
	slt $s0, $t0, 536870912
	beq $zero, $s0, L95
	lw $t0, var_2
	sgt $t0, $t0, -536870912
	and $t4, $s0, $t0
L95:
	beq $zero, $t4, L96
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s4, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $s4, $s4, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t2, $t0
	add $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $s4, $s4, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $t0, $s5, $t0
	sub $t0, $t7, $t0
	sub $t0, $t2, $t0
	add $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t7, $t7, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $s5, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s1, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $s5, $t0
	add $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $t7, $t7, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $t0, $s5, $t0
	sub $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $s5, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s1, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t8, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t8, $t0
	add $t0, $s1, $t0
	sub $t0, $s5, $t0
	sub $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $t0, $s4, $t0
	move $s0, $t0
	sw $s0, var_0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s4, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $s4, $s4, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t2, $t0
	add $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $s4, $s4, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $t0, $s5, $t0
	sub $t0, $t7, $t0
	sub $t0, $t2, $t0
	add $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t7, $t7, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $s5, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s1, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $s5, $t0
	add $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $t7, $t7, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $t0, $s5, $t0
	sub $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $s5, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s1, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t8, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t8, $t0
	add $t0, $s1, $t0
	sub $t0, $s5, $t0
	sub $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $t0, $s4, $t0
	move $t9, $t0
	sw $t9, var_1
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s4, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $s4, $s4, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t2, $t0
	add $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $s4, $s4, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t2, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $t0, $s5, $t0
	sub $t0, $t7, $t0
	sub $t0, $t2, $t0
	add $s4, $s4, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t2, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	sub $t2, $t2, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $t7, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t7, $t7, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $s5, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s1, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	sub $t0, $s5, $t0
	add $t0, $t7, $t0
	add $t2, $t2, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t7, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t0, $t0, $s0
	add $t7, $t7, $t0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	add $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $t0, $s5, $t0
	sub $t7, $t7, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s5, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s5, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	add $s5, $s5, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s1, $s0, $t9
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $s1, $t0
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $s1, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	lw $s0, var_0
	lw $t9, var_1
	add $s0, $s0, $t9
	sub $t8, $t0, $s0
	lw $t0, var_2
	lw $s0, var_0
	sub $t0, $t0, $s0
	lw $t9, var_1
	add $t0, $t0, $t9
	add $t0, $t8, $t0
	add $t0, $s1, $t0
	sub $t0, $s5, $t0
	sub $t0, $t7, $t0
	add $t0, $t2, $t0
	sub $t0, $s4, $t0
	sw $t0, var_2
	b L94
L96:
	lw $s0, var_0
	move $a0, $s0
	jal f_toString
	move $a0, $v0
	jal f_stringConcatenate
	lw $t9, var_1
	move $a0, $t9
	jal f_toString
	la $a0, msg_1
	move $a1, $v0
	jal f_stringConcatenate
	move $a0, $v0
	jal f_stringConcatenate
	lw $t0, var_2
	move $a0, $t0
	jal f_toString
	la $a0, msg_1
	move $a1, $v0
	jal f_stringConcatenate
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	b main_end
main_end:
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
f_toString:
	li $t0, 0
	bgez $a0, _skip_set_less_than_zero
	li $t0, 1
	neg $a0, $a0
	_skip_set_less_than_zero:
	beqz $a0, _set_zero
	li $t1, 0
	move $t2, $a0
	move $t3, $a0
	li $t5, 10
	_begin_count_digit:
	div $t2, $t5
	mflo $v0
	mfhi $v1
	bgtz $v0 _not_yet
	bgtz $v1 _not_yet
	j _yet
	_not_yet:
	add $t1, $t1, 1
	move $t2, $v0
	j _begin_count_digit
	_yet:
	beqz $t0, _skip_reserve_neg
	add $t1, $t1, 1
	_skip_reserve_neg:
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4
	add $t1, $t1, $v0
	sb $zero, 0($t1)
	sub $t1, $t1, 1
	_continue_toString:
	div $t3, $t5
	mfhi $v1
	add $v1, $v1, 48
	sb $v1, 0($t1)
	sub $t1, $t1, 1
	mflo $t3
	bnez $t3, _continue_toString
	beqz $t0, _skip_place_neg
	li $v1, 45
	sb $v1, 0($t1)
	_skip_place_neg:
	jr $ra
	_set_zero:
	li $a0, 6
	li $v0, 9
	syscall
	li $a0, 1
	sw $a0, 0($v0)
	add $v0, $v0, 4
	li $a0, 48
	sb $a0, 0($v0)
	jr $ra
f_stringConcatenate:
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	move $t2, $a0
	move $t3, $a1
	lw $t0, -4($a0)
	lw $t1, -4($a1)
	add $t5, $t0, $t1
	add $a0, $t5, 5
	li $v0, 9
	syscall
	sw $t5, 0($v0)
	add $v0, $v0, 4
	move $t4, $v0
	move $a0, $t2
	move $a1, $t4
	jal _string_copy
	move $a0, $t3
	add $a1, $t4, $t0
	jal _string_copy
	move $v0, $t4
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra
