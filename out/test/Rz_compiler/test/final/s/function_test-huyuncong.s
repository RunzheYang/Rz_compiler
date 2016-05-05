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
	move $t0, $a0
	move $s0, $a1
	seq $t4, $t0, 0
	beq $zero, $t4, L97
	move $v0, $s0
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
L97:
	seq $t4, $s0, 0
	beq $zero, $t4, L98
	move $v0, $t0
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
L98:
	lw $t4, var_5
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	lw $t9, 0($t4)
	lw $t4, var_5
	mul $s4, $s0, 4
	add $t4, $t4, $s4
	lw $t4, 0($t4)
	slt $t4, $t9, $t4
	beq $zero, $t4, L99
	move $t4, $t0
	move $t0, $s0
	move $s0, $t4
L99:
	lw $t4, var_4
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	lw $t4, 0($t4)
	move $a0, $t4
	move $a1, $s0
	sw $t0, 4($sp)
	jal f_merge
	lw $t0, 4($sp)
	lw $t4, var_4
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	move $t4, $v0
	sw $t4, 0($s0)
	lw $s0, var_3
	mul $t4, $t0, 4
	add $s0, $s0, $t4
	lw $s0, 0($s0)
	move $t9, $s0
	lw $t4, var_4
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	lw $t4, 0($s0)
	lw $s0, var_3
	mul $s4, $t0, 4
	add $s0, $s0, $s4
	sw $t4, 0($s0)
	lw $t4, var_4
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	move $t4, $t9
	sw $t4, 0($s0)
	move $v0, $t0
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
	move $t0, $v0
	sw $t0, var_0
	li $v0, 5
	syscall
	move $s0, $v0
	sw $s0, var_1
	jal f_getString
	move $t0, $v0
	sw $t0, var_2
	lw $t0, var_0
	lw $s0, var_1
	add $t0, $t0, $s0
	add $t0, $t0, 5
	mul $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $s0, $v0
	sw $s0, var_3
	lw $t0, var_0
	lw $s0, var_1
	add $t0, $t0, $s0
	add $t0, $t0, 5
	mul $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $t4, $v0
	sw $t4, var_4
	lw $t0, var_0
	lw $s0, var_1
	add $t0, $t0, $s0
	add $t0, $t0, 5
	mul $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $t4, $v0
	sw $t4, var_5
	li $t9, 1
L100:
	lw $t0, var_0
	sle $t0, $t9, $t0
	beq $zero, $t0, L101
	li $v0, 5
	syscall
	lw $t4, var_5
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	move $s0, $v0
	sw $s0, 0($t0)
	lw $s0, var_3
	mul $t0, $t9, 4
	add $t0, $s0, $t0
	li $s0, 0
	sw $s0, 0($t0)
	lw $t4, var_4
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	li $s0, 0
	sw $s0, 0($t0)
L102:
	add $t9, $t9, 1
	b L100
L101:
	li $t9, 1
L103:
	lw $s0, var_1
	sle $s0, $t9, $s0
	beq $zero, $s0, L104
	lw $t4, var_5
	lw $t0, var_0
	add $t0, $t9, $t0
	mul $t0, $t0, 4
	add $t0, $t4, $t0
	sw $s0, 0($t0)
	lw $s0, var_3
	lw $t0, var_0
	add $t0, $t9, $t0
	mul $t0, $t0, 4
	add $t0, $s0, $t0
	li $s0, 0
	sw $s0, 0($t0)
	lw $t4, var_4
	lw $t0, var_0
	add $t0, $t9, $t0
	mul $t0, $t0, 4
	add $t0, $t4, $t0
	li $s0, 0
	sw $s0, 0($t0)
L105:
	add $t9, $t9, 1
	b L103
L104:
	li $s4, 1
	lw $t0, var_0
	add $t0, $t0, 1
	move $t2, $t0
	li $t9, 2
L106:
	lw $t0, var_0
	sle $t0, $t9, $t0
	beq $zero, $t0, L107
	move $a0, $s4
	move $a1, $t9
	sw $t2, 4($sp)
	sw $t9, 8($sp)
	jal f_merge
	lw $t2, 4($sp)
	lw $t9, 8($sp)
	move $s4, $v0
L108:
	add $t9, $t9, 1
	b L106
L107:
	lw $t0, var_0
	add $t0, $t0, 2
	move $t9, $t0
L109:
	lw $t0, var_0
	lw $s0, var_1
	add $t0, $t0, $s0
	sle $t0, $t9, $t0
	beq $zero, $t0, L110
	move $a0, $t2
	move $a1, $t9
	sw $s4, 12($sp)
	sw $t9, 8($sp)
	jal f_merge
	lw $s4, 12($sp)
	lw $t9, 8($sp)
	move $t2, $v0
L111:
	add $t9, $t9, 1
	b L109
L110:
	lw $t4, var_5
	mul $t0, $s4, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	move $a0, $t0
	sw $s4, 12($sp)
	sw $t2, 4($sp)
	jal f_toString
	lw $s4, 12($sp)
	lw $t2, 4($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	move $a0, $s4
	move $a1, $t2
	jal f_merge
	move $a0, $v0
	jal f_toString
	move $a0, $v0
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
