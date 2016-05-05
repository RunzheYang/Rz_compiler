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
	move $t0, $v0
	li $s0, 0
L22:
	slt $t4, $s0, 100
	beq $zero, $t4, L23
	li $a0, 400
	li $v0, 9
	syscall
	mul $t4, $s0, 4
	add $t4, $t0, $t4
	move $t9, $v0
	sw $t9, 0($t4)
L24:
	add $s0, $s0, 1
	b L22
L23:
	li $t4, 0
	li $s0, 0
L25:
	slt $t9, $s0, 100
	beq $zero, $t9, L26
	li $t9, 0
L28:
	slt $s4, $t9, 100
	beq $zero, $s4, L29
	mul $s4, $s0, 4
	add $s4, $t0, $s4
	lw $s4, 0($s4)
	mul $t2, $t9, 4
	add $s4, $s4, $t2
	li $t2, 0
	sw $t2, 0($s4)
L30:
	add $t9, $t9, 1
	b L28
L29:
L27:
	add $s0, $s0, 1
	b L25
L26:
	li $s0, 0
L31:
	slt $t9, $s0, 100
	beq $zero, $t9, L32
	sgt $t9, $s0, 20
	beq $zero, $t9, L34
	slt $s4, $s0, 80
	and $t7, $t9, $s4
L34:
	beq $zero, $t7, L35
	li $t9, 0
L36:
	slt $s4, $t9, 100
	beq $zero, $s4, L37
	sgt $s4, $t9, 5
	bne $zero, $s4, L39
	slt $t2, $s0, 90
	or $s5, $s4, $t2
L39:
	beq $zero, $s5, L40
	add $s4, $t9, 50
	mul $t2, $s0, 4
	add $t2, $t0, $t2
	lw $t2, 0($t2)
	mul $s1, $t9, 4
	add $t2, $t2, $s1
	sw $s4, 0($t2)
L40:
L38:
	add $t9, $t9, 1
	b L36
L37:
L35:
L33:
	add $s0, $s0, 1
	b L31
L32:
	li $s0, 0
L41:
	slt $t9, $s0, 100
	beq $zero, $t9, L42
	li $t9, 0
L44:
	slt $s4, $t9, 100
	beq $zero, $s4, L45
	mul $s4, $s0, 4
	add $s4, $t0, $s4
	lw $s4, 0($s4)
	mul $t2, $t9, 4
	add $s4, $s4, $t2
	lw $s4, 0($s4)
	add $t4, $t4, $s4
L46:
	add $t9, $t9, 1
	b L44
L45:
L43:
	add $s0, $s0, 1
	b L41
L42:
	move $a0, $t4
	jal f_toString
	move $a0, $v0
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
