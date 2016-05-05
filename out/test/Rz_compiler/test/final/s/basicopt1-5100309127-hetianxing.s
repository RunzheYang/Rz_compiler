.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	"\n"
.text
main:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 404
	li $v0, 9
	syscall
	li $s3, 100
	sw $s3, 0($v0)
	add $s3, $v0, 4
	li $s5, 0
L22:
	slt $s2, $s5, 100
	beq $zero, $s2, L23
	li $a0, 404
	li $v0, 9
	syscall
	li $s2, 100
	sw $s2, 0($v0)
	add $s2, $v0, 4
	mul $t6, $s5, 4
	add $t6, $s3, $t6
	sw $s2, 0($t6)
L24:
	add $s5, $s5, 1
	b L22
L23:
	li $s2, 0
	li $s5, 0
L25:
	slt $t6, $s5, 100
	beq $zero, $t6, L26
	li $t6, 0
L28:
	slt $t9, $t6, 100
	beq $zero, $t9, L29
	mul $t9, $s5, 4
	add $t9, $s3, $t9
	lw $t9, 0($t9)
	mul $s0, $t6, 4
	add $t9, $t9, $s0
	li $s0, 0
	sw $s0, 0($t9)
L30:
	add $t6, $t6, 1
	b L28
L29:
L27:
	add $s5, $s5, 1
	b L25
L26:
	li $s5, 0
L31:
	slt $t6, $s5, 100
	beq $zero, $t6, L32
	sgt $t6, $s5, 20
	beq $zero, $t6, L34
	slt $t9, $s5, 80
	and $s7, $t6, $t9
L34:
	beq $zero, $s7, L35
	li $t6, 0
L37:
	slt $t9, $t6, 100
	beq $zero, $t9, L38
	sgt $t9, $t6, 5
	bne $zero, $t9, L40
	slt $s0, $s5, 90
	or $t0, $t9, $s0
L40:
	beq $zero, $t0, L41
	add $t9, $t6, 50
	mul $s0, $s5, 4
	add $s0, $s3, $s0
	lw $s0, 0($s0)
	mul $t3, $t6, 4
	add $s0, $s0, $t3
	sw $t9, 0($s0)
	b L42
L41:
L42:
L39:
	add $t6, $t6, 1
	b L37
L38:
	b L36
L35:
L36:
L33:
	add $s5, $s5, 1
	b L31
L32:
	li $s5, 0
L43:
	slt $t6, $s5, 100
	beq $zero, $t6, L44
	li $t6, 0
L46:
	slt $t9, $t6, 100
	beq $zero, $t9, L47
	mul $t9, $s5, 4
	add $t9, $s3, $t9
	lw $t9, 0($t9)
	mul $s0, $t6, 4
	add $t9, $t9, $s0
	lw $t9, 0($t9)
	add $s2, $s2, $t9
L48:
	add $t6, $t6, 1
	b L46
L47:
L45:
	add $s5, $s5, 1
	b L43
L44:
	move $a0, $s2
	jal f_toString
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
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
