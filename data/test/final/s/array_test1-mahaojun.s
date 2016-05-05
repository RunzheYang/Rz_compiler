.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	0
msg_1:	.asciiz	""
var_0:	.word	0
.text
main:
	li $a0, 20
	li $v0, 9
	syscall
	li $s3, 4
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_0
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	lw $s3, var_0
	lw $s3, -4($s3)
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $s5, $s3
	li $s2, 0
L1:
	lw $s3, var_0
	lw $s3, -4($s3)
	slt $s3, $s2, $s3
	beq $zero, $s3, L2
	lw $s3, var_0
	mul $t6, $s2, 4
	add $s3, $s3, $t6
	li $t6, 0
	sw $t6, 0($s3)
	li $v0, 5
	syscall
	move $s3, $v0
	mul $t6, $s2, 4
	add $t6, $s5, $t6
	sw $s3, 0($t6)
L3:
	add $s2, $s2, 1
	b L1
L2:
	li $s2, 0
L4:
	lw $s3, var_0
	lw $s3, -4($s3)
	slt $s3, $s2, $s3
	beq $zero, $s3, L5
	lw $s3, var_0
	mul $t6, $s2, 4
	add $s3, $s3, $t6
	lw $s3, 0($s3)
	move $a0, $s3
	sw $s5, 4($sp)
	sw $s2, 8($sp)
	jal f_toString
	lw $s5, 4($sp)
	lw $s2, 8($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
L6:
	add $s2, $s2, 1
	b L4
L5:
	la $a0, msg_1
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	move $s3, $s5
	sw $s3, var_0
	li $s2, 0
L7:
	lw $s3, var_0
	lw $s3, -4($s3)
	slt $s3, $s2, $s3
	beq $zero, $s3, L8
	lw $s3, var_0
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	move $a0, $s3
	sw $s2, 8($sp)
	jal f_toString
	lw $s2, 8($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
L9:
	add $s2, $s2, 1
	b L7
L8:
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
