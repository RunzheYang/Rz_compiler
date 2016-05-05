.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	1
msg_1:	.asciiz	" "
	.word	7
msg_2:	.asciiz	"Total: "
var_0:	.word	15000
var_1:	.word	0
var_2:	.word	0
.text
main:
	li $a0, 60004
	li $v0, 9
	syscall
	move $t0, $v0
	sw $t0, var_1
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	li $s0, 1
L389:
	lw $t0, var_0
	sle $t0, $s0, $t0
	beq $zero, $t0, L390
	lw $t0, var_1
	mul $t4, $s0, 4
	add $t0, $t0, $t4
	li $t4, 1
	sw $t4, 0($t0)
L391:
	add $s0, $s0, 1
	b L389
L390:
	li $s0, 2
L392:
	lw $t0, var_0
	sle $t0, $s0, $t0
	beq $zero, $t0, L393
	lw $t0, var_1
	mul $t4, $s0, 4
	add $t0, $t0, $t4
	lw $t0, 0($t0)
	beq $zero, $t0, L395
	li $t4, 2
	sgt $t9, $s0, 3
	beq $zero, $t9, L396
	lw $t0, var_1
	sub $s4, $s0, 2
	mul $s4, $s4, 4
	add $t0, $t0, $s4
	lw $t0, 0($t0)
	and $s4, $t9, $t0
L396:
	beq $zero, $s4, L397
	lw $t0, var_2
	add $t0, $t0, 1
	sw $t0, var_2
	sub $t0, $s0, 2
	move $a0, $t0
	sw $s4, 4($sp)
	sw $t4, 8($sp)
	sw $s0, 12($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $t4, 8($sp)
	lw $s0, 12($sp)
	move $a0, $v0
	sw $s4, 4($sp)
	sw $t4, 8($sp)
	sw $s0, 12($sp)
	jal f_stringConcatenate
	lw $s4, 4($sp)
	lw $t4, 8($sp)
	lw $s0, 12($sp)
	move $a0, $s0
	sw $s4, 4($sp)
	sw $t4, 8($sp)
	sw $s0, 12($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $t4, 8($sp)
	lw $s0, 12($sp)
	la $a0, msg_1
	move $a1, $v0
	sw $s4, 4($sp)
	sw $t4, 8($sp)
	sw $s0, 12($sp)
	jal f_stringConcatenate
	lw $s4, 4($sp)
	lw $t4, 8($sp)
	lw $s0, 12($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L397:
L398:
	mul $t9, $s0, $t4
	lw $t0, var_0
	sle $t0, $t9, $t0
	beq $zero, $t0, L399
	lw $t0, var_1
	mul $t9, $s0, $t4
	mul $t9, $t9, 4
	add $t0, $t0, $t9
	li $t9, 0
	sw $t9, 0($t0)
	add $t4, $t4, 1
	b L398
L399:
L395:
L394:
	add $s0, $s0, 1
	b L392
L393:
	lw $t0, var_2
	move $a0, $t0
	jal f_toString
	la $a0, msg_2
	move $a1, $v0
	jal f_stringConcatenate
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 16
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
