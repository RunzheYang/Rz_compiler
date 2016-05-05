.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	2
msg_1:	.asciiz	", "
	.word	21
msg_2:	.asciiz	" enjoys this work. XD"
	.word	22
msg_3:	.asciiz	" wants to give up!!!!!"
	.word	14
msg_4:	.asciiz	"the leading TA"
	.word	15
msg_5:	.asciiz	"the striking TA"
	.word	2
msg_6:	.asciiz	"MR"
	.word	4
msg_7:	.asciiz	"Mars"
var_0:	.word	100
var_1:	.word	10
.text
f_work:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	move $t5, $a0
	move $s2, $a1
	la $s3, 4($s2)
	lw $s3, 0($s3)
	sle $s3, $s3, 100
	beq $zero, $s3, L104
	move $a0, $t5
	la $a1, msg_1
	sw $s2, 4($sp)
	jal f_stringConcatenate
	lw $s2, 4($sp)
	move $t5, $v0
	la $s3, 0($s2)
	lw $s3, 0($s3)
	move $a0, $t5
	move $a1, $s3
	sw $s2, 4($sp)
	jal f_stringConcatenate
	lw $s2, 4($sp)
	move $t5, $v0
	move $a0, $t5
	la $a1, msg_2
	sw $s2, 4($sp)
	jal f_stringConcatenate
	lw $s2, 4($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	b L105
L104:
	move $a0, $t5
	la $a1, msg_1
	sw $s2, 4($sp)
	jal f_stringConcatenate
	lw $s2, 4($sp)
	move $t5, $v0
	la $s3, 0($s2)
	lw $s3, 0($s3)
	move $a0, $t5
	move $a1, $s3
	sw $s2, 4($sp)
	jal f_stringConcatenate
	lw $s2, 4($sp)
	move $t5, $v0
	move $a0, $t5
	la $a1, msg_3
	sw $s2, 4($sp)
	jal f_stringConcatenate
	lw $s2, 4($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L105:
	la $t5, 4($s2)
	lw $t5, 0($t5)
	lw $s3, var_1
	add $t5, $t5, $s3
	la $s2, 4($s2)
	sw $t5, 0($s2)
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
main:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $a0, 8
	li $v0, 9
	syscall
	move $t5, $v0
	la $s2, 0($t5)
	la $s3, msg_4
	sw $s3, 0($s2)
	la $s2, 4($t5)
	li $s3, 0
	sw $s3, 0($s2)
	li $a0, 8
	li $v0, 9
	syscall
	move $s2, $v0
	la $s3, 0($s2)
	la $t6, msg_5
	sw $t6, 0($s3)
	lw $s3, var_0
	la $t6, 4($s2)
	sw $s3, 0($t6)
	la $a0, msg_6
	move $a1, $t5
	sw $s2, 4($sp)
	jal f_work
	lw $s2, 4($sp)
	la $a0, msg_7
	move $a1, $s2
	sw $s2, 4($sp)
	jal f_work
	lw $s2, 4($sp)
	la $a0, msg_7
	move $a1, $s2
	jal f_work
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
