.data
.align 2
	.word	12
msg_0:	.asciiz	"I have done "
	.word	14
msg_1:	.asciiz	" little things"
	.word	1
msg_2:	.asciiz	"\n"
	.word	10
msg_3:	.asciiz	"too young!"
	.word	8
msg_4:	.asciiz	"\"hahaha\""
	.word	27
msg_5:	.asciiz	"four scores and seven years"
	.word	26
msg_6:	.asciiz	"45 best songs in the world"
.text
main:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 12
	li $v0, 9
	syscall
	la $a0, msg_0
	jal f_toString
	move $t5, $v0
	la $a0, msg_0
	move $a1, $t5
	jal f_stringConcatenate
	move $t5, $v0
	move $a0, $t5
	la $a1, msg_1
	jal f_stringConcatenate
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_3
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
	move $t5, $v0
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
	move $t5, $v0
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
	move $t5, $v0
	move $v0, $t5
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