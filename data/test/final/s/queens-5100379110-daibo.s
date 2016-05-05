.data
.align 2
msg_0:	.asciiz	" O"
msg_1:	.asciiz	" ."
msg_2:	.asciiz	"\n"
msg_3:	.asciiz	""
var_0:	.word	8
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
.text
f_printBoard:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $t0, 0
L408:
	lw $s0, var_0
	slt $s0, $t0, $s0
	beq $zero, $s0, L409
	li $t4, 0
L411:
	lw $s0, var_0
	slt $s0, $t4, $s0
	beq $zero, $s0, L412
	lw $s0, var_2
	mul $t9, $t0, 4
	add $s0, $s0, $t9
	lw $s0, 0($s0)
	seq $s0, $s0, $t4
	beq $zero, $s0, L414
	la $a0, msg_0
	li $v0, 4
	syscall
L414:
	la $a0, msg_1
	li $v0, 4
	syscall
L413:
	add $t4, $t4, 1
	b L411
L412:
	la $a0, msg_3
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
L410:
	add $t0, $t0, 1
	b L408
L409:
	la $a0, msg_3
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
f_search:
	sub $sp, $sp, 20
	sw $ra, 0($sp)
	move $t0, $a0
	lw $s0, var_0
	seq $s0, $t0, $s0
	beq $zero, $s0, L415
	sw $t0, 4($sp)
	jal f_printBoard
	lw $t0, 4($sp)
L415:
	li $t4, 0
L416:
	lw $s0, var_0
	slt $s0, $t4, $s0
	beq $zero, $s0, L417
	lw $s0, var_1
	mul $t9, $t4, 4
	add $s0, $s0, $t9
	lw $s0, 0($s0)
	seq $s0, $s0, 0
	beq $zero, $s0, L419
	lw $t9, var_3
	la $t9, 0($t9)
	lw $t9, 0($t9)
	add $s4, $t4, $t0
	mul $s4, $s4, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	seq $t9, $t9, 0
	and $s4, $s0, $t9
L419:
	beq $zero, $s4, L420
	lw $t9, var_3
	la $s0, 4($t9)
	lw $t9, 0($s0)
	lw $s0, var_0
	add $s0, $t4, $s0
	sub $s0, $s0, 1
	sub $s0, $s0, $t0
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	lw $s0, 0($s0)
	seq $s0, $s0, 0
	and $t2, $s4, $s0
L420:
	beq $zero, $t2, L421
	lw $t9, var_3
	la $s0, 4($t9)
	lw $t9, 0($s0)
	lw $s0, var_0
	add $s0, $t4, $s0
	sub $s0, $s0, 1
	sub $s0, $s0, $t0
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	li $t7, 1
	sw $t7, 0($s0)
	lw $t9, var_3
	la $s0, 0($t9)
	lw $s0, 0($s0)
	add $t9, $t4, $t0
	mul $t9, $t9, 4
	add $s0, $s0, $t9
	move $t9, $t7
	sw $t9, 0($s0)
	lw $s0, var_1
	mul $t7, $t4, 4
	add $s0, $s0, $t7
	sw $t9, 0($s0)
	lw $s0, var_2
	mul $t9, $t0, 4
	add $s0, $s0, $t9
	move $t9, $t4
	sw $t9, 0($s0)
	add $s0, $t0, 1
	move $a0, $s0
	sw $t2, 8($sp)
	sw $t0, 4($sp)
	sw $t4, 12($sp)
	sw $s4, 16($sp)
	jal f_search
	lw $t2, 8($sp)
	lw $t0, 4($sp)
	lw $t4, 12($sp)
	lw $s4, 16($sp)
	lw $t9, var_3
	la $s0, 4($t9)
	lw $t9, 0($s0)
	lw $s0, var_0
	add $s0, $t4, $s0
	sub $s0, $s0, 1
	sub $s0, $s0, $t0
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	li $t7, 0
	sw $t7, 0($s0)
	lw $t9, var_3
	la $s0, 0($t9)
	lw $s0, 0($s0)
	add $t9, $t4, $t0
	mul $t9, $t9, 4
	add $s0, $s0, $t9
	move $t9, $t7
	sw $t9, 0($s0)
	lw $s0, var_1
	mul $t7, $t4, 4
	add $s0, $s0, $t7
	sw $t9, 0($s0)
L421:
L418:
	add $t4, $t4, 1
	b L416
L417:
main:
	li $a0, 32
	li $v0, 9
	syscall
	move $s0, $v0
	sw $s0, var_1
	li $a0, 32
	li $v0, 9
	syscall
	move $s0, $v0
	sw $s0, var_2
	li $a0, 8
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_3
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $t0, 0
L422:
	slt $s0, $t0, 2
	beq $zero, $s0, L423
	li $a0, 60
	li $v0, 9
	syscall
	lw $t9, var_3
	mul $s0, $t0, 4
	add $s0, $t9, $s0
	move $t4, $v0
	sw $t4, 0($s0)
L424:
	add $t0, $t0, 1
	b L422
L423:
	li $a0, 0
	jal f_search
	li $v0, 0
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
