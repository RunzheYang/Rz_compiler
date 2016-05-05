.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
.text
main:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 400
	li $v0, 9
	syscall
	move $t5, $v0
	li $s2, 0
L22:
	slt $s3, $s2, 100
	beq $zero, $s3, L23
	li $a0, 400
	li $v0, 9
	syscall
	mul $s3, $s2, 4
	add $s3, $t5, $s3
	move $t6, $v0
	sw $t6, 0($s3)
L24:
	add $s2, $s2, 1
	b L22
L23:
	li $s3, 0
	li $s2, 0
L25:
	slt $t6, $s2, 100
	beq $zero, $t6, L26
	li $t6, 0
L28:
	slt $s4, $t6, 100
	beq $zero, $s4, L29
	mul $s4, $s2, 4
	add $s4, $t5, $s4
	lw $s4, 0($s4)
	mul $s5, $t6, 4
	add $s4, $s4, $s5
	li $s5, 0
	sw $s5, 0($s4)
L30:
	add $t6, $t6, 1
	b L28
L29:
L27:
	add $s2, $s2, 1
	b L25
L26:
	li $s2, 0
L31:
	slt $t6, $s2, 100
	beq $zero, $t6, L32
	sgt $t6, $s2, 20
	beq $zero, $t6, L34
	slt $s4, $s2, 80
	and $t4, $t6, $s4
L34:
	beq $zero, $t4, L35
	li $t6, 0
L37:
	slt $s4, $t6, 100
	beq $zero, $s4, L38
	sgt $s4, $t6, 5
	bne $zero, $s4, L40
	slt $s5, $s2, 90
	or $t1, $s4, $s5
L40:
	beq $zero, $t1, L41
	add $s4, $t6, 50
	mul $s5, $s2, 4
	add $s5, $t5, $s5
	lw $s5, 0($s5)
	mul $t0, $t6, 4
	add $s5, $s5, $t0
	sw $s4, 0($s5)
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
	add $s2, $s2, 1
	b L31
L32:
	li $s2, 0
L43:
	slt $t6, $s2, 100
	beq $zero, $t6, L44
	li $t6, 0
L46:
	slt $s4, $t6, 100
	beq $zero, $s4, L47
	mul $s4, $s2, 4
	add $s4, $t5, $s4
	lw $s4, 0($s4)
	mul $s5, $t6, 4
	add $s4, $s4, $s5
	lw $s4, 0($s4)
	add $s3, $s3, $s4
L48:
	add $t6, $t6, 1
	b L46
L47:
L45:
	add $s2, $s2, 1
	b L43
L44:
	move $a0, $s3
	jal f_toString
	move $t5, $v0
	move $a0, $t5
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
