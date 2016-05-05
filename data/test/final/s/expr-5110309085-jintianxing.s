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
	sub $sp, $sp, 12
	sw $ra, 0($sp)
L106:
	lw $t5, var_2
	slt $s2, $t5, 536870912
	beq $zero, $s2, L107
	lw $t5, var_2
	sgt $t5, $t5, -536870912
	and $s3, $s2, $t5
L107:
	beq $zero, $s3, L108
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $s4, $s4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $s5, $t5
	add $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $s4, $s4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t5, $t1, $t5
	sub $t5, $t4, $t5
	sub $t5, $s5, $t5
	add $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t4, $t4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t1, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t0, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t1, $t5
	add $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $t4, $t4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t5, $t1, $t5
	sub $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t1, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t0, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t2, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t2, $t5
	add $t5, $t0, $t5
	sub $t5, $t1, $t5
	sub $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $t5, $s4, $t5
	move $s2, $t5
	sw $s2, var_0
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $s4, $s4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $s5, $t5
	add $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $s4, $s4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t5, $t1, $t5
	sub $t5, $t4, $t5
	sub $t5, $s5, $t5
	add $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t4, $t4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t1, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t0, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t1, $t5
	add $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $t4, $t4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t5, $t1, $t5
	sub $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t1, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t0, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t2, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t2, $t5
	add $t5, $t0, $t5
	sub $t5, $t1, $t5
	sub $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $t5, $s4, $t5
	move $t6, $t5
	sw $t6, var_1
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $s4, $s4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $s5, $t5
	add $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $s4, $s4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $s5, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t5, $t1, $t5
	sub $t5, $t4, $t5
	sub $t5, $s5, $t5
	add $s4, $s4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s5, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	sub $s5, $s5, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t4, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t4, $t4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t1, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t0, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	sub $t5, $t1, $t5
	add $t5, $t4, $t5
	add $s5, $s5, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t4, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t5, $t5, $s2
	add $t4, $t4, $t5
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	add $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t5, $t1, $t5
	sub $t4, $t4, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t1, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t1, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	add $t1, $t1, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $t0, $s2, $t6
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t0, $t5
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t0, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	lw $s2, var_0
	lw $t6, var_1
	add $s2, $s2, $t6
	sub $t2, $t5, $s2
	lw $t5, var_2
	lw $s2, var_0
	sub $t5, $t5, $s2
	lw $t6, var_1
	add $t5, $t5, $t6
	add $t5, $t2, $t5
	add $t5, $t0, $t5
	sub $t5, $t1, $t5
	sub $t5, $t4, $t5
	add $t5, $s5, $t5
	sub $t5, $s4, $t5
	sw $t5, var_2
	b L106
L108:
	lw $s2, var_0
	move $a0, $s2
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	la $a1, msg_1
	jal f_stringConcatenate
	move $t5, $v0
	lw $t6, var_1
	move $a0, $t6
	sw $t5, 4($sp)
	jal f_toString
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $t5
	move $a1, $s2
	jal f_stringConcatenate
	move $t5, $v0
	move $a0, $t5
	la $a1, msg_1
	jal f_stringConcatenate
	move $s2, $v0
	lw $t5, var_2
	move $a0, $t5
	sw $s2, 8($sp)
	jal f_toString
	lw $s2, 8($sp)
	move $t5, $v0
	move $a0, $s2
	move $a1, $t5
	jal f_stringConcatenate
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
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
_string_copy:
	_begin_string_copy:
	lb $v0, 0($a0)
	beqz $v0, _exit_string_copy
	sb $v0, 0($a1)
	add $a0, $a0, 1
	add $a1, $a1, 1
	j _begin_string_copy
	_exit_string_copy:
	sb $zero, 0($a1)
	jr $ra
