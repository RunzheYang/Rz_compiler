.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
.text
main:
	sub $sp, $sp, 20
	sw $ra, 0($sp)
	li $t0, 10000
	li $s0, 0
	li $t4, 2800
	li $t9, 0
	li $a0, 11204
	li $v0, 9
	syscall
	move $s4, $v0
L310:
	sub $t2, $s0, $t4
	sne $t2, $t2, 0
	beq $zero, $t2, L311
	div $t2, $t0, 5
	move $t7, $s0
	add $s0, $s0, 1
	mul $t7, $t7, 4
	add $t7, $s4, $t7
	sw $t2, 0($t7)
L312:
	b L310
L311:
L313:
	li $t2, 0
	mul $s0, $t4, 2
	move $t7, $s0
	seq $s0, $t7, 0
	beq $zero, $s0, L316
	b L314
L316:
	move $s0, $t4
L317:
	mul $s5, $s0, 4
	add $s5, $s4, $s5
	lw $s5, 0($s5)
	mul $s5, $s5, $t0
	add $t2, $t2, $s5
	sub $t7, $t7, 1
	rem $s5, $t2, $t7
	mul $s1, $s0, 4
	add $s1, $s4, $s1
	sw $s5, 0($s1)
	move $s5, $t7
	sub $t7, $t7, 1
	div $t2, $t2, $s5
	sub $s0, $s0, 1
	seq $s5, $s0, 0
	beq $zero, $s5, L320
	b L318
L320:
L319:
	mul $t2, $t2, $s0
	b L317
L318:
	sub $s0, $t4, 14
	move $t4, $s0
	div $s0, $t2, $t0
	add $s0, $t9, $s0
	move $a0, $s0
	sw $s4, 4($sp)
	sw $t0, 8($sp)
	sw $t4, 12($sp)
	sw $t2, 16($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $t0, 8($sp)
	lw $t4, 12($sp)
	lw $t2, 16($sp)
	move $a0, $v0
	li $v0, 4
	syscall
L315:
	rem $s0, $t2, $t0
	move $t9, $s0
	b L313
L314:
	la $a0, msg_0
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 20
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 20
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
