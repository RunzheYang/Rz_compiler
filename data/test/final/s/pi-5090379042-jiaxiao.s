.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
.text
main:
	sub $sp, $sp, 20
	sw $ra, 0($sp)
	li $t5, 10000
	li $s2, 0
	li $s3, 2800
	li $t6, 0
	li $a0, 11204
	li $v0, 9
	syscall
	move $s4, $v0
L310:
	sub $s5, $s2, $s3
	sne $s5, $s5, 0
	beq $zero, $s5, L311
	div $s5, $t5, 5
	move $t4, $s2
	add $s2, $s2, 1
	mul $t4, $t4, 4
	add $t4, $s4, $t4
	sw $s5, 0($t4)
L312:
	b L310
L311:
L313:
	li $s5, 0
	mul $s2, $s3, 2
	move $t4, $s2
	seq $s2, $t4, 0
	beq $zero, $s2, L316
	b L314
L316:
	move $s2, $s3
L317:
	mul $t1, $s2, 4
	add $t1, $s4, $t1
	lw $t1, 0($t1)
	mul $t1, $t1, $t5
	add $s5, $s5, $t1
	sub $t4, $t4, 1
	rem $t1, $s5, $t4
	mul $t0, $s2, 4
	add $t0, $s4, $t0
	sw $t1, 0($t0)
	move $t1, $t4
	sub $t4, $t4, 1
	div $s5, $s5, $t1
	sub $s2, $s2, 1
	seq $t1, $s2, 0
	beq $zero, $t1, L320
	b L318
L320:
L319:
	mul $s5, $s5, $s2
	b L317
L318:
	sub $s2, $s3, 14
	move $s3, $s2
	div $s2, $s5, $t5
	add $s2, $t6, $s2
	move $a0, $s2
	sw $t5, 4($sp)
	sw $s3, 8($sp)
	sw $s5, 12($sp)
	sw $s4, 16($sp)
	jal f_toString
	lw $t5, 4($sp)
	lw $s3, 8($sp)
	lw $s5, 12($sp)
	lw $s4, 16($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
L315:
	rem $s2, $s5, $t5
	move $t6, $s2
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
