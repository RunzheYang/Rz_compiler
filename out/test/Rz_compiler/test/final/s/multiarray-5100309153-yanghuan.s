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
	move $t0, $a0
	move $a0, $t0
	jal f_toString
	move $a0, $v0
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
	move $t0, $v0
	sw $t0, var_0
	li $a0, 20
	li $v0, 9
	syscall
	move $s0, $v0
	sw $s0, var_3
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $t4, 0
	sw $t4, var_1
L286:
	lw $t4, var_1
	slt $t0, $t4, 4
	beq $zero, $t0, L287
	li $a0, 44
	li $v0, 9
	syscall
	lw $t0, var_0
	lw $t4, var_1
	mul $s0, $t4, 4
	add $t0, $t0, $s0
	move $s0, $v0
	sw $s0, 0($t0)
L288:
	lw $t4, var_1
	add $t4, $t4, 1
	sw $t4, var_1
	b L286
L287:
	li $t4, 0
	sw $t4, var_1
L289:
	lw $t4, var_1
	slt $t0, $t4, 4
	beq $zero, $t0, L290
	li $t0, 0
	sw $t0, var_2
L292:
	lw $t0, var_2
	slt $t0, $t0, 10
	beq $zero, $t0, L293
	lw $t0, var_0
	lw $t4, var_1
	mul $s0, $t4, 4
	add $t0, $t0, $s0
	lw $s0, 0($t0)
	lw $t0, var_2
	mul $t0, $t0, 4
	add $t0, $s0, $t0
	li $s0, 888
	sw $s0, 0($t0)
L294:
	lw $t0, var_2
	add $t0, $t0, 1
	sw $t0, var_2
	b L292
L293:
L291:
	lw $t4, var_1
	add $t4, $t4, 1
	sw $t4, var_1
	b L289
L290:
	li $t4, 0
	sw $t4, var_1
L295:
	lw $t4, var_1
	slt $t0, $t4, 5
	beq $zero, $t0, L296
	li $a0, 8
	li $v0, 9
	syscall
	lw $s0, var_3
	lw $t4, var_1
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	move $s0, $v0
	sw $s0, 0($t0)
	lw $s0, var_3
	lw $t4, var_1
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	la $t0, 0($t0)
	li $s0, -1
	sw $s0, 0($t0)
L297:
	lw $t4, var_1
	add $t4, $t4, 1
	sw $t4, var_1
	b L295
L296:
	lw $t0, var_0
	la $t0, 12($t0)
	lw $t0, 0($t0)
	la $t0, 36($t0)
	lw $t0, 0($t0)
	move $a0, $t0
	jal f_printNum
	li $t4, 0
	sw $t4, var_1
L298:
	lw $t4, var_1
	sle $t0, $t4, 3
	beq $zero, $t0, L299
	li $t0, 0
	sw $t0, var_2
L301:
	lw $t0, var_2
	sle $t0, $t0, 9
	beq $zero, $t0, L302
	lw $t4, var_1
	mul $s0, $t4, 10
	lw $t0, var_2
	add $s0, $s0, $t0
	lw $t0, var_0
	lw $t4, var_1
	mul $t4, $t4, 4
	add $t0, $t0, $t4
	lw $t4, 0($t0)
	lw $t0, var_2
	mul $t0, $t0, 4
	add $t0, $t4, $t0
	sw $s0, 0($t0)
L303:
	lw $t0, var_2
	add $t0, $t0, 1
	sw $t0, var_2
	b L301
L302:
L300:
	lw $t4, var_1
	add $t4, $t4, 1
	sw $t4, var_1
	b L298
L299:
	li $t4, 0
	sw $t4, var_1
L304:
	lw $t4, var_1
	sle $t0, $t4, 3
	beq $zero, $t0, L305
	li $t0, 0
	sw $t0, var_2
L307:
	lw $t0, var_2
	sle $t0, $t0, 9
	beq $zero, $t0, L308
	lw $t0, var_0
	lw $t4, var_1
	mul $s0, $t4, 4
	add $t0, $t0, $s0
	lw $s0, 0($t0)
	lw $t0, var_2
	mul $t0, $t0, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	move $a0, $t0
	jal f_printNum
L309:
	lw $t0, var_2
	add $t0, $t0, 1
	sw $t0, var_2
	b L307
L308:
L306:
	lw $t4, var_1
	add $t4, $t4, 1
	sw $t4, var_1
	b L304
L305:
	lw $t0, var_0
	la $t0, 8($t0)
	lw $t0, 0($t0)
	la $t0, 40($t0)
	li $s0, 0
	sw $s0, 0($t0)
	lw $t0, var_0
	la $t0, 8($t0)
	lw $t0, 0($t0)
	la $t0, 40($t0)
	lw $t0, 0($t0)
	move $a0, $t0
	jal f_printNum
	lw $s0, var_3
	la $t0, 0($s0)
	lw $t0, 0($t0)
	la $t0, 0($t0)
	li $s0, -2
	sw $s0, 0($t0)
	lw $s0, var_3
	lw $t0, var_0
	la $t0, 8($t0)
	lw $t0, 0($t0)
	la $t0, 40($t0)
	lw $t0, 0($t0)
	mul $t0, $t0, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	la $t0, 0($t0)
	li $s0, -10
	sw $s0, 0($t0)
	lw $s0, var_3
	la $t0, 0($s0)
	lw $t0, 0($t0)
	la $t0, 0($t0)
	lw $t0, 0($t0)
	move $a0, $t0
	jal f_printNum
	lw $s0, var_3
	la $t0, 4($s0)
	lw $t0, 0($t0)
	la $t0, 0($t0)
	lw $t0, 0($t0)
	move $a0, $t0
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
