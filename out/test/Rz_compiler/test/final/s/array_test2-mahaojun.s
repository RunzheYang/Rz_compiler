.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	0
msg_1:	.asciiz	""
var_0:	.word	0
.text
main:
	li $a0, 16
	li $v0, 9
	syscall
	move $t5, $v0
	sw $t5, var_0
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	li $a0, 16
	li $v0, 9
	syscall
	move $s2, $v0
	lw $t5, var_0
	la $s3, 0($s2)
	sw $t5, 0($s3)
	lw $t5, var_0
	la $s3, 4($s2)
	sw $t5, 0($s3)
	lw $t5, var_0
	la $s3, 8($s2)
	sw $t5, 0($s3)
	lw $t5, var_0
	la $s3, 12($s2)
	sw $t5, 0($s3)
	move $a0, $t5
	sw $s2, 4($sp)
	jal f_toString
	lw $s2, 4($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $t5, 0
L10:
	slt $s3, $t5, $t5
	beq $zero, $s3, L11
	li $v0, 5
	syscall
	move $s3, $v0
	la $t6, 0($s2)
	lw $t6, 0($t6)
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	sw $s3, 0($t6)
L12:
	add $t5, $t5, 1
	b L10
L11:
	li $t5, 0
L13:
	slt $s3, $t5, $t5
	beq $zero, $s3, L14
	la $s3, 4($s2)
	lw $s3, 0($s3)
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	lw $s3, 0($s3)
	move $a0, $s3
	sw $t5, 8($sp)
	sw $s2, 4($sp)
	jal f_toString
	lw $t5, 8($sp)
	lw $s2, 4($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
L15:
	add $t5, $t5, 1
	b L13
L14:
	la $a0, msg_1
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $t5, 0
L16:
	slt $s3, $t5, $t5
	beq $zero, $s3, L17
	la $s3, 8($s2)
	lw $s3, 0($s3)
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	li $t6, 0
	sw $t6, 0($s3)
L18:
	add $t5, $t5, 1
	b L16
L17:
	li $t5, 0
L19:
	slt $s3, $t5, $t5
	beq $zero, $s3, L20
	la $s3, 12($s2)
	lw $s3, 0($s3)
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	lw $s3, 0($s3)
	move $a0, $s3
	sw $t5, 8($sp)
	sw $s2, 4($sp)
	jal f_toString
	lw $t5, 8($sp)
	lw $s2, 4($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
L21:
	add $t5, $t5, 1
	b L19
L20:
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
