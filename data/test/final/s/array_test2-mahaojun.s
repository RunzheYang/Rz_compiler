.data
.align 2
_buffer:	.space	256
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
	li $a0, 20
	li $v0, 9
	syscall
	li $s3, 4
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $s5, $s3
	lw $s3, var_0
	la $s2, 0($s5)
	sw $s3, 0($s2)
	lw $s3, var_0
	la $s2, 4($s5)
	sw $s3, 0($s2)
	lw $s3, var_0
	la $s2, 8($s5)
	sw $s3, 0($s2)
	lw $s3, var_0
	la $s2, 12($s5)
	sw $s3, 0($s2)
	lw $s3, -4($s5)
	move $a0, $s3
	sw $s5, 4($sp)
	jal f_toString
	lw $s5, 4($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $s3, 0
L10:
	la $s2, 0($s5)
	lw $s2, 0($s2)
	lw $s2, -4($s2)
	slt $s2, $s3, $s2
	beq $zero, $s2, L11
	li $v0, 5
	syscall
	move $s2, $v0
	la $t6, 0($s5)
	lw $t6, 0($t6)
	mul $t9, $s3, 4
	add $t6, $t6, $t9
	sw $s2, 0($t6)
L12:
	add $s3, $s3, 1
	b L10
L11:
	li $s3, 0
L13:
	la $s2, 4($s5)
	lw $s2, 0($s2)
	lw $s2, -4($s2)
	slt $s2, $s3, $s2
	beq $zero, $s2, L14
	la $s2, 4($s5)
	lw $s2, 0($s2)
	mul $t6, $s3, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
	move $a0, $s2
	sw $s3, 8($sp)
	sw $s5, 4($sp)
	jal f_toString
	lw $s3, 8($sp)
	lw $s5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
L15:
	add $s3, $s3, 1
	b L13
L14:
	la $a0, msg_1
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $s3, 0
L16:
	la $s2, 8($s5)
	lw $s2, 0($s2)
	lw $s2, -4($s2)
	slt $s2, $s3, $s2
	beq $zero, $s2, L17
	la $s2, 8($s5)
	lw $s2, 0($s2)
	mul $t6, $s3, 4
	add $s2, $s2, $t6
	li $t6, 0
	sw $t6, 0($s2)
L18:
	add $s3, $s3, 1
	b L16
L17:
	li $s3, 0
L19:
	la $s2, 12($s5)
	lw $s2, 0($s2)
	lw $s2, -4($s2)
	slt $s2, $s3, $s2
	beq $zero, $s2, L20
	la $s2, 12($s5)
	lw $s2, 0($s2)
	mul $t6, $s3, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
	move $a0, $s2
	sw $s3, 8($sp)
	sw $s5, 4($sp)
	jal f_toString
	lw $s3, 8($sp)
	lw $s5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
L21:
	add $s3, $s3, 1
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
