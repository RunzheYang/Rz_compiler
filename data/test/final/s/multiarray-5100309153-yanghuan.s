.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
.text
f_printNum:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t5, $a0
	move $a0, $t5
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
main:
	li $a0, 16
	li $v0, 9
	syscall
	move $t5, $v0
	sw $t5, var_0
	li $a0, 20
	li $v0, 9
	syscall
	move $s2, $v0
	sw $s2, var_3
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s3, 0
	sw $s3, var_1
L342:
	lw $s3, var_1
	slt $t5, $s3, 4
	beq $zero, $t5, L343
	li $a0, 44
	li $v0, 9
	syscall
	lw $t5, var_0
	lw $s3, var_1
	mul $s2, $s3, 4
	add $t5, $t5, $s2
	move $s2, $v0
	sw $s2, 0($t5)
L344:
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	b L342
L343:
	li $s3, 0
	sw $s3, var_1
L345:
	lw $s3, var_1
	slt $t5, $s3, 4
	beq $zero, $t5, L346
	li $t5, 0
	sw $t5, var_2
L348:
	lw $t5, var_2
	slt $t5, $t5, 10
	beq $zero, $t5, L349
	lw $t5, var_0
	lw $s3, var_1
	mul $s2, $s3, 4
	add $t5, $t5, $s2
	lw $s2, 0($t5)
	lw $t5, var_2
	mul $t5, $t5, 4
	add $t5, $s2, $t5
	li $s2, 888
	sw $s2, 0($t5)
L350:
	lw $t5, var_2
	add $t5, $t5, 1
	sw $t5, var_2
	b L348
L349:
L347:
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	b L345
L346:
	li $s3, 0
	sw $s3, var_1
L351:
	lw $s3, var_1
	slt $t5, $s3, 5
	beq $zero, $t5, L352
	li $a0, 8
	li $v0, 9
	syscall
	lw $s2, var_3
	lw $s3, var_1
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	move $s2, $v0
	sw $s2, 0($t5)
	lw $s2, var_3
	lw $s3, var_1
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	la $t5, 0($t5)
	li $s2, -1
	sw $s2, 0($t5)
L353:
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	b L351
L352:
	lw $t5, var_0
	la $t5, 12($t5)
	lw $t5, 0($t5)
	la $t5, 36($t5)
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_printNum
	li $s3, 0
	sw $s3, var_1
L354:
	lw $s3, var_1
	sle $t5, $s3, 3
	beq $zero, $t5, L355
	li $t5, 0
	sw $t5, var_2
L357:
	lw $t5, var_2
	sle $t5, $t5, 9
	beq $zero, $t5, L358
	lw $s3, var_1
	mul $s2, $s3, 10
	lw $t5, var_2
	add $s2, $s2, $t5
	lw $t5, var_0
	lw $s3, var_1
	mul $s3, $s3, 4
	add $t5, $t5, $s3
	lw $s3, 0($t5)
	lw $t5, var_2
	mul $t5, $t5, 4
	add $t5, $s3, $t5
	sw $s2, 0($t5)
L359:
	lw $t5, var_2
	add $t5, $t5, 1
	sw $t5, var_2
	b L357
L358:
L356:
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	b L354
L355:
	li $s3, 0
	sw $s3, var_1
L360:
	lw $s3, var_1
	sle $t5, $s3, 3
	beq $zero, $t5, L361
	li $t5, 0
	sw $t5, var_2
L363:
	lw $t5, var_2
	sle $t5, $t5, 9
	beq $zero, $t5, L364
	lw $t5, var_0
	lw $s3, var_1
	mul $s2, $s3, 4
	add $t5, $t5, $s2
	lw $s2, 0($t5)
	lw $t5, var_2
	mul $t5, $t5, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_printNum
L365:
	lw $t5, var_2
	add $t5, $t5, 1
	sw $t5, var_2
	b L363
L364:
L362:
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	b L360
L361:
	lw $t5, var_0
	la $t5, 8($t5)
	lw $t5, 0($t5)
	la $t5, 40($t5)
	li $s2, 0
	sw $s2, 0($t5)
	lw $t5, var_0
	la $t5, 8($t5)
	lw $t5, 0($t5)
	la $t5, 40($t5)
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_printNum
	lw $s2, var_3
	la $t5, 0($s2)
	lw $t5, 0($t5)
	la $t5, 0($t5)
	li $s2, -2
	sw $s2, 0($t5)
	lw $s2, var_3
	lw $t5, var_0
	la $t5, 8($t5)
	lw $t5, 0($t5)
	la $t5, 40($t5)
	lw $t5, 0($t5)
	mul $t5, $t5, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	la $t5, 0($t5)
	li $s2, -10
	sw $s2, 0($t5)
	lw $s2, var_3
	la $t5, 0($s2)
	lw $t5, 0($t5)
	la $t5, 0($t5)
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_printNum
	lw $s2, var_3
	la $t5, 4($s2)
	lw $t5, 0($t5)
	la $t5, 0($t5)
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_printNum
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
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
