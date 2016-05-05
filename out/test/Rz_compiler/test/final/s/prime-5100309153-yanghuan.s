.data
.align 2
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
	.word	7
msg_2:	.asciiz	"Total: "
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
var_4:	.word	0
var_5:	.word	0
var_6:	.word	0
var_7:	.word	0
var_8:	.word	0
var_9:	.word	0
var_10:	.word	0
.text
f_getPrime:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	li $s0, 2
	li $t4, 2
L327:
	sle $t9, $t4, $t0
	beq $zero, $t9, L328
	lw $t9, var_6
	mul $s4, $t4, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	seq $t9, $t9, 1
	beq $zero, $t9, L330
	lw $t9, var_9
	la $t9, 0($t9)
	lw $t9, 0($t9)
	add $s4, $t9, 1
	lw $t9, var_9
	la $t9, 0($t9)
	sw $s4, 0($t9)
	lw $s4, var_7
	lw $t9, var_9
	la $t9, 0($t9)
	lw $t9, 0($t9)
	mul $t9, $t9, 4
	add $t9, $s4, $t9
	move $s4, $t4
	sw $s4, 0($t9)
	lw $t9, var_9
	la $t9, 0($t9)
	lw $t9, 0($t9)
	lw $s4, var_8
	mul $t2, $t4, 4
	add $s4, $s4, $t2
	sw $t9, 0($s4)
L330:
L331:
	mul $t9, $t4, $s0
	sle $t9, $t9, $t0
	beq $zero, $t9, L332
	lw $t9, var_6
	mul $s4, $t4, $s0
	mul $s4, $s4, 4
	add $t9, $t9, $s4
	li $s4, 0
	sw $s4, 0($t9)
	add $s0, $s0, 1
	b L331
L332:
	li $s0, 2
L329:
	add $t4, $t4, 1
	b L327
L328:
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
	move $s0, $v0
	sw $s0, var_10
	li $t4, 0
	sw $t4, var_2
L321:
	lw $t4, var_2
	slt $s0, $t4, $t0
	beq $zero, $s0, L322
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	lw $s0, var_10
	lw $t4, var_2
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	move $t4, $v0
	sw $t4, 0($s0)
	li $s0, 0
	sw $s0, var_3
L324:
	lw $s0, var_3
	slt $s0, $s0, $t0
	beq $zero, $s0, L325
	lw $s0, var_10
	lw $t4, var_2
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	lw $t4, 0($s0)
	lw $s0, var_3
	mul $s0, $s0, 4
	add $s0, $t4, $s0
	li $t4, 0
	sw $t4, 0($s0)
L326:
	lw $s0, var_3
	add $s0, $s0, 1
	sw $s0, var_3
	b L324
L325:
L323:
	lw $t4, var_2
	add $t4, $t4, 1
	sw $t4, var_2
	b L321
L322:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_getResult:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t0, $a0
	move $t4, $a1
	move $t2, $a2
	lw $s0, var_10
	mul $t9, $t4, 4
	add $s0, $s0, $t9
	lw $s0, 0($s0)
	mul $t9, $t2, 4
	add $s0, $s0, $t9
	lw $s0, 0($s0)
	seq $s0, $s0, -1
	beq $zero, $s0, L333
	lw $s4, var_7
	mul $s0, $t2, 4
	add $s0, $s4, $s0
	lw $s0, 0($s0)
	mul $s0, $s0, 2
	lw $s4, var_7
	mul $t9, $t4, 4
	add $t9, $s4, $t9
	lw $t9, 0($t9)
	sub $s0, $s0, $t9
	sle $s0, $s0, $t0
	beq $zero, $s0, L334
	lw $t9, var_6
	lw $s4, var_7
	mul $s0, $t2, 4
	add $s0, $s4, $s0
	lw $s0, 0($s0)
	mul $s0, $s0, 2
	lw $s4, var_7
	mul $t7, $t4, 4
	add $s4, $s4, $t7
	lw $s4, 0($s4)
	sub $s0, $s0, $s4
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	lw $s0, 0($s0)
	sne $s0, $s0, 0
	beq $zero, $s0, L335
	move $a0, $t0
	move $a1, $t2
	lw $s4, var_8
	lw $s4, var_7
	mul $t0, $t2, 4
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	mul $t0, $t0, 2
	lw $s4, var_7
	mul $s0, $t4, 4
	add $s0, $s4, $s0
	lw $s0, 0($s0)
	sub $t0, $t0, $s0
	mul $t0, $t0, 4
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	move $a2, $t0
	sw $t4, 4($sp)
	sw $t2, 8($sp)
	jal f_getResult
	lw $t4, 4($sp)
	lw $t2, 8($sp)
	add $t0, $v0, 1
	lw $s0, var_10
	mul $t9, $t4, 4
	add $s0, $s0, $t9
	lw $s0, 0($s0)
	mul $t9, $t2, 4
	add $s0, $s0, $t9
	sw $t0, 0($s0)
L335:
L334:
L333:
	lw $s0, var_10
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	mul $s0, $t2, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	seq $t0, $t0, -1
	beq $zero, $t0, L336
	lw $s0, var_10
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	mul $s0, $t2, 4
	add $t0, $t0, $s0
	li $s0, 1
	sw $s0, 0($t0)
L336:
	lw $s0, var_10
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	mul $s0, $t2, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	move $v0, $t0
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	li $a0, 4004
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_6
	li $a0, 680
	li $v0, 9
	syscall
	move $s4, $v0
	sw $s4, var_7
	li $a0, 4004
	li $v0, 9
	syscall
	move $s4, $v0
	sw $s4, var_8
	li $a0, 4
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_9
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 170
	jal f_origin
	li $t0, 1000
	sw $t0, var_0
	li $v0, 5
	syscall
	move $t0, $v0
	sw $t0, var_1
	li $t0, 0
	sw $t0, var_4
	li $t0, 0
	sw $t0, var_5
	lw $t9, var_9
	la $t0, 0($t9)
	li $s0, 0
	sw $s0, 0($t0)
	li $t4, 0
	sw $t4, var_2
L339:
	lw $t4, var_2
	lw $t0, var_0
	add $t0, $t0, 1
	slt $t0, $t4, $t0
	beq $zero, $t0, L340
	lw $t9, var_6
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $t9, $t0
	li $s0, 1
	sw $s0, 0($t0)
	lw $s4, var_8
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s4, $t0
	li $s0, 0
	sw $s0, 0($t0)
L341:
	lw $t4, var_2
	add $t0, $t4, 1
	move $t4, $t0
	sw $t4, var_2
	b L339
L340:
	li $t4, 0
	sw $t4, var_2
L342:
	lw $t4, var_2
	lw $t0, var_1
	add $t0, $t0, 1
	slt $t0, $t4, $t0
	beq $zero, $t0, L343
	lw $s4, var_7
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s4, $t0
	li $s0, 0
	sw $s0, 0($t0)
L344:
	lw $t4, var_2
	add $t0, $t4, 1
	move $t4, $t0
	sw $t4, var_2
	b L342
L343:
	li $t4, 0
	sw $t4, var_2
L345:
	lw $t4, var_2
	lw $t0, var_1
	sle $t0, $t4, $t0
	beq $zero, $t0, L346
	li $s0, 0
	sw $s0, var_3
L348:
	lw $s0, var_3
	lw $t0, var_1
	sle $t0, $s0, $t0
	beq $zero, $t0, L349
	lw $s0, var_10
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_3
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	li $s0, -1
	sw $s0, 0($t0)
L350:
	lw $s0, var_3
	add $t0, $s0, 1
	move $s0, $t0
	sw $s0, var_3
	b L348
L349:
L347:
	lw $t4, var_2
	add $t0, $t4, 1
	move $t4, $t0
	sw $t4, var_2
	b L345
L346:
	lw $t0, var_0
	move $a0, $t0
	jal f_getPrime
	lw $t9, var_9
	la $t0, 0($t9)
	lw $t0, 0($t0)
	sw $t0, var_4
	li $t4, 1
	sw $t4, var_2
L351:
	lw $t4, var_2
	lw $t0, var_4
	slt $t0, $t4, $t0
	beq $zero, $t0, L352
	lw $t4, var_2
	add $t0, $t4, 1
	move $s0, $t0
	sw $s0, var_3
L354:
	lw $s0, var_3
	lw $t0, var_4
	sle $t0, $s0, $t0
	beq $zero, $t0, L355
	lw $s0, var_10
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_3
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	seq $t0, $t0, -1
	beq $zero, $t0, L357
	lw $t0, var_0
	move $a0, $t0
	lw $t4, var_2
	move $a1, $t4
	lw $s0, var_3
	move $a2, $s0
	jal f_getResult
	lw $s0, var_10
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_3
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	move $s0, $v0
	sw $s0, 0($t0)
	lw $s0, var_10
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_3
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	sgt $t0, $t0, 1
	beq $zero, $t0, L358
	lw $s4, var_7
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	move $a0, $t0
	lw $s4, var_7
	lw $s0, var_3
	mul $t0, $s0, 4
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	move $a1, $t0
	lw $s0, var_10
	lw $t4, var_2
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_3
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	move $a2, $t0
	jal f_printF
	lw $t0, var_5
	add $t0, $t0, 1
	sw $t0, var_5
L358:
L357:
L356:
	lw $s0, var_3
	add $t0, $s0, 1
	move $s0, $t0
	sw $s0, var_3
	b L354
L355:
L353:
	lw $t4, var_2
	add $t0, $t4, 1
	move $t4, $t0
	sw $t4, var_2
	b L351
L352:
	la $a0, msg_2
	li $v0, 4
	syscall
	lw $t0, var_5
	move $a0, $t0
	jal f_toString
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_1
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
f_printF:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $a1
	move $t4, $a2
	move $a0, $t0
	sw $t0, 4($sp)
	sw $s0, 8($sp)
	sw $t4, 12($sp)
	jal f_toString
	lw $t0, 4($sp)
	lw $s0, 8($sp)
	lw $t4, 12($sp)
	move $a0, $v0
	li $v0, 4
	syscall
L337:
	sgt $t9, $t4, 0
	beq $zero, $t9, L338
	la $a0, msg_0
	li $v0, 4
	syscall
	move $a0, $s0
	sw $t0, 4($sp)
	sw $s0, 8($sp)
	sw $t4, 12($sp)
	jal f_toString
	lw $t0, 4($sp)
	lw $s0, 8($sp)
	lw $t4, 12($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	mul $s0, $s0, 2
	sub $s0, $s0, $t0
	add $t0, $t0, $s0
	div $t0, $t0, 2
	sub $t4, $t4, 1
	b L337
L338:
	la $a0, msg_1
	li $v0, 4
	syscall
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
