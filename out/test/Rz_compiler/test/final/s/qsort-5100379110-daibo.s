.data
.align 2
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	10000
.text
f_qsrt:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t5, $a0
	move $s2, $a1
	move $s3, $t5
	move $t6, $s2
	lw $s4, var_0
	add $s5, $t5, $s2
	div $s5, $s5, 2
	mul $s5, $s5, 4
	add $s4, $s4, $s5
	lw $s4, 0($s4)
	move $s5, $s4
L359:
	sle $s4, $s3, $t6
	beq $zero, $s4, L360
L361:
	lw $s4, var_0
	mul $t4, $s3, 4
	add $s4, $s4, $t4
	lw $s4, 0($s4)
	slt $s4, $s4, $s5
	beq $zero, $s4, L362
	add $s3, $s3, 1
	b L361
L362:
L363:
	lw $s4, var_0
	mul $t4, $t6, 4
	add $s4, $s4, $t4
	lw $s4, 0($s4)
	sgt $s4, $s4, $s5
	beq $zero, $s4, L364
	sub $t6, $t6, 1
	b L363
L364:
	sle $s4, $s3, $t6
	beq $zero, $s4, L365
	lw $s4, var_0
	mul $t4, $s3, 4
	add $s4, $s4, $t4
	lw $s4, 0($s4)
	move $t4, $s4
	lw $s4, var_0
	mul $t1, $t6, 4
	add $s4, $s4, $t1
	lw $t1, 0($s4)
	lw $s4, var_0
	mul $t0, $s3, 4
	add $s4, $s4, $t0
	sw $t1, 0($s4)
	lw $s4, var_0
	mul $t1, $t6, 4
	add $s4, $s4, $t1
	sw $t4, 0($s4)
	add $s3, $s3, 1
	sub $t6, $t6, 1
L365:
	b L359
L360:
	slt $s4, $t5, $t6
	beq $zero, $s4, L366
	move $a0, $t5
	move $a1, $t6
	sw $s2, 4($sp)
	sw $s3, 8($sp)
	jal f_qsrt
	lw $s2, 4($sp)
	lw $s3, 8($sp)
L366:
	slt $t5, $s3, $s2
	beq $zero, $t5, L367
	move $a0, $s3
	move $a1, $s2
	jal f_qsrt
L367:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	li $a0, 40400
	li $v0, 9
	syscall
	move $s4, $v0
	sw $s4, var_0
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $t5, 1
L368:
	lw $s2, var_1
	sle $s2, $t5, $s2
	beq $zero, $s2, L369
	lw $s2, var_1
	add $s2, $s2, 1
	sub $s2, $s2, $t5
	lw $s4, var_0
	mul $s3, $t5, 4
	add $s3, $s4, $s3
	sw $s2, 0($s3)
L370:
	add $t5, $t5, 1
	b L368
L369:
	li $a0, 1
	lw $s2, var_1
	move $a1, $s2
	jal f_qsrt
	li $t5, 1
L371:
	lw $s2, var_1
	sle $s2, $t5, $s2
	beq $zero, $s2, L372
	lw $s4, var_0
	mul $s2, $t5, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	move $a0, $s2
	sw $t5, 4($sp)
	jal f_toString
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L373:
	add $t5, $t5, 1
	b L371
L372:
	la $a0, msg_1
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 8
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
