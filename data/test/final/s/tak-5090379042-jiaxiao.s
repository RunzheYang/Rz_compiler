.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
.text
main:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $t5, $v0
	li $v0, 5
	syscall
	move $s2, $v0
	li $v0, 5
	syscall
	move $s3, $v0
	move $a0, $t5
	move $a1, $s2
	move $a2, $s3
	jal f_tak
	move $t5, $v0
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
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
f_tak:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	move $t5, $a0
	move $s2, $a1
	move $s3, $a2
	slt $t6, $s2, $t5
	beq $zero, $t6, L461
	sub $t6, $t5, 1
	move $a0, $t6
	move $a1, $s2
	move $a2, $s3
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	jal f_tak
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	move $t6, $v0
	move $a0, $t6
	sub $t6, $s2, 1
	move $a0, $t6
	move $a1, $s3
	move $a2, $t5
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	jal f_tak
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	move $t6, $v0
	move $a1, $t6
	sub $s3, $s3, 1
	move $a0, $s3
	move $a1, $t5
	move $a2, $s2
	jal f_tak
	move $t5, $v0
	move $a2, $t5
	jal f_tak
	move $t5, $v0
	add $t5, $t5, 1
	move $v0, $t5
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
	b L462
L461:
	move $v0, $s3
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
L462:
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
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
