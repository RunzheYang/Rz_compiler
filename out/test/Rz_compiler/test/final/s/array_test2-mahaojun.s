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
	move $t0, $v0
	sw $t0, var_0
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	li $a0, 16
	li $v0, 9
	syscall
	move $s0, $v0
	lw $t0, var_0
	la $t4, 0($s0)
	sw $t0, 0($t4)
	lw $t0, var_0
	la $t4, 4($s0)
	sw $t0, 0($t4)
	lw $t0, var_0
	la $t4, 8($s0)
	sw $t0, 0($t4)
	lw $t0, var_0
	la $t4, 12($s0)
	sw $t0, 0($t4)
	move $a0, $t0
	sw $s0, 4($sp)
	jal f_toString
	lw $s0, 4($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $t0, 0
L10:
	slt $t4, $t0, $t0
	beq $zero, $t4, L11
	li $v0, 5
	syscall
	la $t4, 0($s0)
	lw $t4, 0($t4)
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	move $t9, $v0
	sw $t9, 0($t4)
L12:
	add $t0, $t0, 1
	b L10
L11:
	li $t0, 0
L13:
	slt $t4, $t0, $t0
	beq $zero, $t4, L14
	la $t4, 4($s0)
	lw $t4, 0($t4)
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	lw $t4, 0($t4)
	move $a0, $t4
	sw $t0, 8($sp)
	sw $s0, 4($sp)
	jal f_toString
	lw $t0, 8($sp)
	lw $s0, 4($sp)
	move $a0, $v0
	li $v0, 4
	syscall
L15:
	add $t0, $t0, 1
	b L13
L14:
	la $a0, msg_1
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $t0, 0
L16:
	slt $t4, $t0, $t0
	beq $zero, $t4, L17
	la $t4, 8($s0)
	lw $t4, 0($t4)
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	li $t9, 0
	sw $t9, 0($t4)
L18:
	add $t0, $t0, 1
	b L16
L17:
	li $t0, 0
L19:
	slt $t4, $t0, $t0
	beq $zero, $t4, L20
	la $t4, 12($s0)
	lw $t4, 0($t4)
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	lw $t4, 0($t4)
	move $a0, $t4
	sw $t0, 8($sp)
	sw $s0, 4($sp)
	jal f_toString
	lw $t0, 8($sp)
	lw $s0, 4($sp)
	move $a0, $v0
	li $v0, 4
	syscall
L21:
	add $t0, $t0, 1
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
