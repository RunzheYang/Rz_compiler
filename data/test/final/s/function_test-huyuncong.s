.data
.align 2
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
var_4:	.word	0
var_5:	.word	0
.text
f_merge:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	move $t5, $a0
	move $s2, $a1
	seq $s3, $t5, 0
	beq $zero, $s3, L97
	move $v0, $s2
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
L97:
	seq $s3, $s2, 0
	beq $zero, $s3, L98
	move $v0, $t5
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
L98:
	lw $s3, var_5
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	lw $t6, 0($s3)
	lw $s3, var_5
	mul $s4, $s2, 4
	add $s3, $s3, $s4
	lw $s3, 0($s3)
	slt $s3, $t6, $s3
	beq $zero, $s3, L99
	move $s3, $t5
	move $t5, $s2
	move $s2, $s3
L99:
	lw $s3, var_4
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	lw $s3, 0($s3)
	move $a0, $s3
	move $a1, $s2
	sw $t5, 4($sp)
	jal f_merge
	lw $t5, 4($sp)
	move $s2, $v0
	lw $s3, var_4
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	sw $s2, 0($s3)
	lw $s2, var_3
	mul $s3, $t5, 4
	add $s2, $s2, $s3
	lw $s2, 0($s2)
	move $t6, $s2
	lw $s3, var_4
	mul $s2, $t5, 4
	add $s2, $s3, $s2
	lw $s3, 0($s2)
	lw $s2, var_3
	mul $s4, $t5, 4
	add $s2, $s2, $s4
	sw $s3, 0($s2)
	lw $s3, var_4
	mul $s2, $t5, 4
	add $s2, $s3, $s2
	move $s3, $t6
	sw $s3, 0($s2)
	move $v0, $t5
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
main:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $t5, $v0
	sw $t5, var_0
	li $v0, 5
	syscall
	move $t5, $v0
	move $s2, $t5
	sw $s2, var_1
	jal f_getString
	move $t5, $v0
	sw $t5, var_2
	lw $t5, var_0
	lw $s2, var_1
	add $t5, $t5, $s2
	add $t5, $t5, 5
	mul $t5, $t5, 4
	add $a0, $zero, $t5
	li $v0, 9
	syscall
	move $s2, $v0
	sw $s2, var_3
	lw $t5, var_0
	lw $s2, var_1
	add $t5, $t5, $s2
	add $t5, $t5, 5
	mul $t5, $t5, 4
	add $a0, $zero, $t5
	li $v0, 9
	syscall
	move $s3, $v0
	sw $s3, var_4
	lw $t5, var_0
	lw $s2, var_1
	add $t5, $t5, $s2
	add $t5, $t5, 5
	mul $t5, $t5, 4
	add $a0, $zero, $t5
	li $v0, 9
	syscall
	move $s3, $v0
	sw $s3, var_5
	li $t6, 1
L100:
	lw $t5, var_0
	sle $t5, $t6, $t5
	beq $zero, $t5, L101
	li $v0, 5
	syscall
	move $t5, $v0
	lw $s3, var_5
	mul $s2, $t6, 4
	add $s2, $s3, $s2
	sw $t5, 0($s2)
	lw $s2, var_3
	mul $t5, $t6, 4
	add $t5, $s2, $t5
	li $s2, 0
	sw $s2, 0($t5)
	lw $s3, var_4
	mul $t5, $t6, 4
	add $t5, $s3, $t5
	li $s2, 0
	sw $s2, 0($t5)
L102:
	add $t6, $t6, 1
	b L100
L101:
	li $t6, 1
L103:
	lw $s2, var_1
	sle $s2, $t6, $s2
	beq $zero, $s2, L104
	lw $s3, var_5
	lw $t5, var_0
	add $t5, $t6, $t5
	mul $t5, $t5, 4
	add $t5, $s3, $t5
	sw $s2, 0($t5)
	lw $s2, var_3
	lw $t5, var_0
	add $t5, $t6, $t5
	mul $t5, $t5, 4
	add $t5, $s2, $t5
	li $s2, 0
	sw $s2, 0($t5)
	lw $s3, var_4
	lw $t5, var_0
	add $t5, $t6, $t5
	mul $t5, $t5, 4
	add $t5, $s3, $t5
	li $s2, 0
	sw $s2, 0($t5)
L105:
	add $t6, $t6, 1
	b L103
L104:
	li $s4, 1
	lw $t5, var_0
	add $t5, $t5, 1
	move $s5, $t5
	li $t6, 2
L106:
	lw $t5, var_0
	sle $t5, $t6, $t5
	beq $zero, $t5, L107
	move $a0, $s4
	move $a1, $t6
	sw $s5, 4($sp)
	sw $t6, 8($sp)
	jal f_merge
	lw $s5, 4($sp)
	lw $t6, 8($sp)
	move $t5, $v0
	move $s4, $t5
L108:
	add $t6, $t6, 1
	b L106
L107:
	lw $t5, var_0
	add $t5, $t5, 2
	move $t6, $t5
L109:
	lw $t5, var_0
	lw $s2, var_1
	add $t5, $t5, $s2
	sle $t5, $t6, $t5
	beq $zero, $t5, L110
	move $a0, $s5
	move $a1, $t6
	sw $s4, 12($sp)
	sw $t6, 8($sp)
	jal f_merge
	lw $s4, 12($sp)
	lw $t6, 8($sp)
	move $t5, $v0
	move $s5, $t5
L111:
	add $t6, $t6, 1
	b L109
L110:
	lw $s3, var_5
	mul $t5, $s4, 4
	add $t5, $s3, $t5
	lw $t5, 0($t5)
	move $a0, $t5
	sw $s4, 12($sp)
	sw $s5, 4($sp)
	jal f_toString
	lw $s4, 12($sp)
	lw $s5, 4($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	move $a0, $s4
	move $a1, $s5
	jal f_merge
	move $t5, $v0
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 16
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
