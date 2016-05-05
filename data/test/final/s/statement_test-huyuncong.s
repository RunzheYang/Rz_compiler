.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
.text
main:
	sub $sp, $sp, 20
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $t5, $v0
	sw $t5, var_0
	lw $t5, var_0
	add $t5, $t5, 5
	mul $t5, $t5, 4
	add $a0, $zero, $t5
	li $v0, 9
	syscall
	move $t5, $v0
	sw $t5, var_2
	li $s2, 0
L442:
	lw $t5, var_0
	sle $t5, $s2, $t5
	beq $zero, $t5, L443
	lw $t5, var_2
	move $s3, $s2
	add $s2, $s2, 1
	mul $s3, $s3, 4
	add $t5, $t5, $s3
	li $s3, 1
	sw $s3, 0($t5)
	b L442
L443:
	lw $t5, var_0
	add $t5, $t5, 5
	mul $t5, $t5, 4
	add $a0, $zero, $t5
	li $v0, 9
	syscall
	move $s3, $v0
	lw $t5, var_0
	add $t5, $t5, 5
	mul $t5, $t5, 4
	add $a0, $zero, $t5
	li $v0, 9
	syscall
	move $t6, $v0
	la $t5, 4($s3)
	li $s2, 1
	sw $s2, 0($t5)
	li $s2, 2
L444:
	lw $t5, var_0
	sgt $t5, $s2, $t5
	beq $zero, $t5, L447
	b L445
	b L448
L447:
L448:
	lw $t5, var_2
	mul $s4, $s2, 4
	add $t5, $t5, $s4
	lw $t5, 0($t5)
	beq $zero, $t5, L449
	lw $t5, var_1
	add $t5, $t5, 1
	sw $t5, var_1
	mul $t5, $t5, 4
	add $t5, $t6, $t5
	move $s4, $s2
	sw $s4, 0($t5)
	sub $t5, $s2, 1
	mul $s4, $s2, 4
	add $s4, $s3, $s4
	sw $t5, 0($s4)
	b L450
L449:
L450:
	move $s4, $s2
	li $s5, 1
L451:
	lw $t5, var_1
	sle $t4, $s5, $t5
	beq $zero, $t4, L452
	mul $t5, $s5, 4
	add $t5, $t6, $t5
	lw $t5, 0($t5)
	mul $t1, $s4, $t5
	lw $t5, var_0
	sle $t5, $t1, $t5
	and $t1, $t4, $t5
L452:
	beq $zero, $t1, L453
	mul $t5, $s5, 4
	add $t5, $t6, $t5
	lw $t5, 0($t5)
	mul $t5, $s4, $t5
	move $t4, $t5
	lw $t5, var_0
	sgt $t5, $t4, $t5
	beq $zero, $t5, L455
	b L454
	b L456
L455:
L456:
	lw $t5, var_2
	mul $t0, $t4, 4
	add $t5, $t5, $t0
	li $t0, 0
	sw $t0, 0($t5)
	mul $t5, $s5, 4
	add $t5, $t6, $t5
	lw $t5, 0($t5)
	rem $t5, $s4, $t5
	seq $t5, $t5, 0
	beq $zero, $t5, L457
	mul $t5, $s4, 4
	add $t5, $s3, $t5
	lw $t5, 0($t5)
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	lw $s5, 0($s5)
	mul $t5, $t5, $s5
	mul $s5, $t4, 4
	add $s5, $s3, $s5
	sw $t5, 0($s5)
	b L453
	b L458
L457:
	mul $t5, $s4, 4
	add $t5, $s3, $t5
	lw $t5, 0($t5)
	mul $t4, $s5, 4
	add $t4, $t6, $t4
	lw $t4, 0($t4)
	sub $t4, $t4, 1
	mul $t5, $t5, $t4
	mul $t4, $s5, 4
	add $t4, $t6, $t4
	lw $t4, 0($t4)
	mul $t4, $s4, $t4
	mul $t4, $t4, 4
	add $t4, $s3, $t4
	sw $t5, 0($t4)
L458:
L454:
	add $s5, $s5, 1
	b L451
L453:
	mul $t5, $s4, 4
	add $t5, $s3, $t5
	lw $t5, 0($t5)
	move $a0, $t5
	sw $t1, 4($sp)
	sw $s3, 8($sp)
	sw $t6, 12($sp)
	sw $s2, 16($sp)
	jal f_toString
	lw $t1, 4($sp)
	lw $s3, 8($sp)
	lw $t6, 12($sp)
	lw $s2, 16($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L446:
	add $s2, $s2, 1
	b L444
L445:
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
