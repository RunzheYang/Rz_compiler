.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
var_4:	.word	0
var_5:	.word	0
var_6:	.word	0
var_7:	.word	0
var_8:	.word	0
.text
f_build:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $a1
	li $t4, 1
	sw $t4, var_5
L292:
	lw $t4, var_5
	sle $t4, $t4, 49
	beq $zero, $t4, L293
	li $t9, 50
	sw $t9, var_6
L295:
	lw $t9, var_6
	lw $t4, var_5
	li $s4, 98
	sub $s4, $s4, $t4
	add $t4, $s4, 1
	sle $t4, $t9, $t4
	beq $zero, $t4, L296
	lw $t9, var_0
	lw $t4, var_5
	mul $t4, $t4, 4
	add $t4, $t9, $t4
	lw $t4, 0($t4)
	lw $t9, var_6
	mul $t9, $t9, 4
	add $t4, $t4, $t9
	li $t9, 1
	sw $t9, 0($t4)
L297:
	lw $t9, var_6
	add $t9, $t9, 1
	sw $t9, var_6
	b L295
L296:
L294:
	lw $t4, var_5
	add $t4, $t4, 1
	sw $t4, var_5
	b L292
L293:
	li $t4, 1
	sw $t4, var_5
L298:
	lw $t4, var_5
	sle $t4, $t4, 49
	beq $zero, $t4, L299
	lw $t9, var_0
	mul $t4, $t0, 4
	add $t4, $t9, $t4
	lw $t9, 0($t4)
	lw $t4, var_5
	mul $t4, $t4, 4
	add $t4, $t9, $t4
	li $t9, 1
	sw $t9, 0($t4)
L300:
	lw $t4, var_5
	add $t4, $t4, 1
	sw $t4, var_5
	b L298
L299:
	li $t4, 50
	sw $t4, var_5
L301:
	lw $t4, var_5
	sle $t0, $t4, 98
	beq $zero, $t0, L302
	lw $t9, var_0
	lw $t4, var_5
	mul $t0, $t4, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	mul $t4, $s0, 4
	add $t0, $t0, $t4
	li $t4, 1
	sw $t4, 0($t0)
L303:
	lw $t4, var_5
	add $t4, $t4, 1
	sw $t4, var_5
	b L301
L302:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_find:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $a1
	li $t4, 0
	sw $t4, var_7
	li $s4, 1
	sw $s4, var_8
	li $t4, 1
	sw $t4, var_5
L304:
	lw $t4, var_5
	sle $t4, $t4, $t0
	beq $zero, $t4, L305
	lw $s4, var_2
	lw $t4, var_5
	mul $t4, $t4, 4
	add $t4, $s4, $t4
	li $t9, 0
	sw $t9, 0($t4)
L306:
	lw $t4, var_5
	add $t4, $t4, 1
	sw $t4, var_5
	b L304
L305:
	lw $t2, var_4
	la $t4, 4($t2)
	move $t9, $s0
	sw $t9, 0($t4)
	lw $s4, var_2
	mul $t4, $s0, 4
	add $t4, $s4, $t4
	li $t9, 1
	sw $t9, 0($t4)
	lw $s4, var_3
	mul $s0, $s0, 4
	add $s0, $s4, $s0
	li $t4, 0
	sw $t4, 0($s0)
	li $s0, 0
L307:
	lw $t4, var_7
	lw $s4, var_8
	slt $t4, $t4, $s4
	beq $zero, $t4, L308
	seq $t9, $s0, 0
	and $t7, $t4, $t9
L308:
	beq $zero, $t7, L309
	lw $t4, var_7
	add $t4, $t4, 1
	sw $t4, var_7
	lw $t2, var_4
	lw $t4, var_7
	mul $t4, $t4, 4
	add $t4, $t2, $t4
	lw $t4, 0($t4)
	sw $t4, var_5
	li $t9, 1
	sw $t9, var_6
L310:
	lw $t9, var_6
	sle $t4, $t9, $t0
	beq $zero, $t4, L311
	lw $t9, var_0
	lw $t4, var_5
	mul $t4, $t4, 4
	add $t4, $t9, $t4
	lw $t4, 0($t4)
	lw $t9, var_6
	mul $t9, $t9, 4
	add $t4, $t4, $t9
	lw $t4, 0($t4)
	sgt $t4, $t4, 0
	beq $zero, $t4, L313
	lw $s4, var_2
	lw $t9, var_6
	mul $t9, $t9, 4
	add $t9, $s4, $t9
	lw $t9, 0($t9)
	seq $t9, $t9, 0
	and $s5, $t4, $t9
L313:
	beq $zero, $s5, L314
	lw $s4, var_2
	lw $t9, var_6
	mul $t4, $t9, 4
	add $t4, $s4, $t4
	li $t9, 1
	sw $t9, 0($t4)
	lw $s4, var_8
	add $s4, $s4, 1
	sw $s4, var_8
	lw $t9, var_6
	lw $t2, var_4
	lw $s4, var_8
	mul $t4, $s4, 4
	add $t4, $t2, $t4
	sw $t9, 0($t4)
	lw $t4, var_5
	lw $s4, var_3
	lw $t9, var_6
	mul $t9, $t9, 4
	add $t9, $s4, $t9
	sw $t4, 0($t9)
	lw $s4, var_8
	seq $t4, $s4, $t0
	beq $zero, $t4, L315
	li $s0, 1
L315:
L314:
L312:
	lw $t9, var_6
	add $t9, $t9, 1
	sw $t9, var_6
	b L310
L311:
	b L307
L309:
	move $v0, $s0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_improve:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	move $t4, $t0
	sw $t4, var_5
	lw $t0, var_1
	add $t0, $t0, 1
	sw $t0, var_1
L316:
	lw $s4, var_3
	lw $t4, var_5
	mul $t0, $t4, 4
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	sgt $t0, $t0, 0
	beq $zero, $t0, L317
	lw $s4, var_3
	lw $t4, var_5
	mul $t0, $t4, 4
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	move $t9, $t0
	sw $t9, var_6
	lw $t9, var_0
	lw $t9, var_6
	mul $t0, $t9, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	lw $t4, var_5
	mul $s0, $t4, 4
	add $t0, $t0, $s0
	lw $s0, 0($t0)
	sub $s0, $s0, 1
	sw $s0, 0($t0)
	lw $t9, var_0
	lw $t4, var_5
	mul $t0, $t4, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	lw $t9, var_6
	mul $s0, $t9, 4
	add $t0, $t0, $s0
	lw $s0, 0($t0)
	add $s0, $s0, 1
	sw $s0, 0($t0)
	lw $t9, var_6
	move $t4, $t9
	sw $t4, var_5
	b L316
L317:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_origin:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_0
	li $t4, 0
	sw $t4, var_5
L286:
	lw $t4, var_5
	slt $s0, $t4, $t0
	beq $zero, $s0, L287
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	lw $t9, var_0
	lw $t4, var_5
	mul $s0, $t4, 4
	add $s0, $t9, $s0
	move $t4, $v0
	sw $t4, 0($s0)
	li $t9, 0
	sw $t9, var_6
L289:
	lw $t9, var_6
	slt $s0, $t9, $t0
	beq $zero, $s0, L290
	lw $t9, var_0
	lw $t4, var_5
	mul $s0, $t4, 4
	add $s0, $t9, $s0
	lw $s0, 0($s0)
	lw $t9, var_6
	mul $t4, $t9, 4
	add $s0, $s0, $t4
	li $t4, 0
	sw $t4, 0($s0)
L291:
	lw $t9, var_6
	add $t9, $t9, 1
	sw $t9, var_6
	b L289
L290:
L288:
	lw $t4, var_5
	add $t4, $t4, 1
	sw $t4, var_5
	b L286
L287:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 440
	li $v0, 9
	syscall
	move $s4, $v0
	sw $s4, var_2
	li $a0, 440
	li $v0, 9
	syscall
	move $s4, $v0
	sw $s4, var_3
	li $a0, 440
	li $v0, 9
	syscall
	move $t2, $v0
	sw $t2, var_4
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	li $a0, 110
	jal f_origin
	li $t0, 99
	li $s0, 100
	li $t4, 0
	move $a0, $t0
	move $a1, $s0
	sw $t0, 4($sp)
	sw $s0, 8($sp)
	sw $t4, 12($sp)
	jal f_build
	lw $t0, 4($sp)
	lw $s0, 8($sp)
	lw $t4, 12($sp)
L318:
	move $a0, $s0
	move $a1, $t0
	move $a2, $t4
	sw $t0, 4($sp)
	sw $s0, 8($sp)
	sw $t4, 12($sp)
	jal f_find
	lw $t0, 4($sp)
	lw $s0, 8($sp)
	lw $t4, 12($sp)
	sgt $t9, $v0, 0
	beq $zero, $t9, L319
	move $a0, $s0
	sw $t0, 4($sp)
	sw $s0, 8($sp)
	sw $t4, 12($sp)
	jal f_improve
	lw $t0, 4($sp)
	lw $s0, 8($sp)
	lw $t4, 12($sp)
	b L318
L319:
	lw $t0, var_1
	move $a0, $t0
	jal f_toString
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
