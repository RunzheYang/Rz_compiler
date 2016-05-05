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
	move $t0, $v0
	sw $t0, var_0
	lw $t0, var_0
	add $t0, $t0, 5
	mul $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $t0, $v0
	sw $t0, var_2
	li $s0, 0
L374:
	lw $t0, var_0
	sle $t0, $s0, $t0
	beq $zero, $t0, L375
	lw $t0, var_2
	move $t4, $s0
	add $s0, $s0, 1
	mul $t4, $t4, 4
	add $t0, $t0, $t4
	li $t4, 1
	sw $t4, 0($t0)
	b L374
L375:
	lw $t0, var_0
	add $t0, $t0, 5
	mul $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $t4, $v0
	lw $t0, var_0
	add $t0, $t0, 5
	mul $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $t9, $v0
	la $t0, 4($t4)
	li $s0, 1
	sw $s0, 0($t0)
	li $s0, 2
L376:
	lw $t0, var_0
	sgt $t0, $s0, $t0
	beq $zero, $t0, L379
	b L377
L379:
	lw $t0, var_2
	mul $s4, $s0, 4
	add $t0, $t0, $s4
	lw $t0, 0($t0)
	beq $zero, $t0, L380
	lw $t0, var_1
	add $t0, $t0, 1
	sw $t0, var_1
	mul $t0, $t0, 4
	add $t0, $t9, $t0
	move $s4, $s0
	sw $s4, 0($t0)
	sub $t0, $s0, 1
	mul $s4, $s0, 4
	add $s4, $t4, $s4
	sw $t0, 0($s4)
L380:
	move $s4, $s0
	li $t2, 1
L381:
	lw $t0, var_1
	sle $t7, $t2, $t0
	beq $zero, $t7, L382
	mul $t0, $t2, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	mul $s5, $s4, $t0
	lw $t0, var_0
	sle $t0, $s5, $t0
	and $s5, $t7, $t0
L382:
	beq $zero, $s5, L383
	mul $t0, $t2, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	mul $t0, $s4, $t0
	move $t7, $t0
	lw $t0, var_0
	sgt $t0, $t7, $t0
	beq $zero, $t0, L385
	b L384
L385:
	lw $t0, var_2
	mul $s1, $t7, 4
	add $t0, $t0, $s1
	li $s1, 0
	sw $s1, 0($t0)
	mul $t0, $t2, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	rem $t0, $s4, $t0
	seq $t0, $t0, 0
	beq $zero, $t0, L386
	mul $t0, $s4, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	mul $t2, $t2, 4
	add $t2, $t9, $t2
	lw $t2, 0($t2)
	mul $t0, $t0, $t2
	mul $t2, $t7, 4
	add $t2, $t4, $t2
	sw $t0, 0($t2)
	b L383
L386:
	mul $t0, $s4, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	mul $t7, $t2, 4
	add $t7, $t9, $t7
	lw $t7, 0($t7)
	sub $t7, $t7, 1
	mul $t0, $t0, $t7
	mul $t7, $t2, 4
	add $t7, $t9, $t7
	lw $t7, 0($t7)
	mul $t7, $s4, $t7
	mul $t7, $t7, 4
	add $t7, $t4, $t7
	sw $t0, 0($t7)
L384:
	add $t2, $t2, 1
	b L381
L383:
	mul $t0, $s4, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	move $a0, $t0
	sw $s5, 4($sp)
	sw $t4, 8($sp)
	sw $t9, 12($sp)
	sw $s0, 16($sp)
	jal f_toString
	lw $s5, 4($sp)
	lw $t4, 8($sp)
	lw $t9, 12($sp)
	lw $s0, 16($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L378:
	add $s0, $s0, 1
	b L376
L377:
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
