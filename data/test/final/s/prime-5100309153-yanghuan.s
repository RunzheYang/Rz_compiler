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
	move $t5, $a0
	li $s2, 2
	li $s3, 2
L327:
	sle $t6, $s3, $t5
	beq $zero, $t6, L328
	lw $t6, var_6
	mul $s4, $s3, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	seq $t6, $t6, 1
	beq $zero, $t6, L330
	lw $t6, var_9
	la $t6, 0($t6)
	lw $t6, 0($t6)
	add $s4, $t6, 1
	lw $t6, var_9
	la $t6, 0($t6)
	sw $s4, 0($t6)
	lw $s4, var_7
	lw $t6, var_9
	la $t6, 0($t6)
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s4, $t6
	move $s4, $s3
	sw $s4, 0($t6)
	lw $t6, var_9
	la $t6, 0($t6)
	lw $t6, 0($t6)
	lw $s4, var_8
	mul $s5, $s3, 4
	add $s4, $s4, $s5
	sw $t6, 0($s4)
L330:
L331:
	mul $t6, $s3, $s2
	sle $t6, $t6, $t5
	beq $zero, $t6, L332
	lw $t6, var_6
	mul $s4, $s3, $s2
	mul $s4, $s4, 4
	add $t6, $t6, $s4
	li $s4, 0
	sw $s4, 0($t6)
	add $s2, $s2, 1
	b L331
L332:
	li $s2, 2
L329:
	add $s3, $s3, 1
	b L327
L328:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_origin:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t5, $a0
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	move $s2, $v0
	sw $s2, var_10
	li $s3, 0
	sw $s3, var_2
L321:
	lw $s3, var_2
	slt $s2, $s3, $t5
	beq $zero, $s2, L322
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	lw $s2, var_10
	lw $s3, var_2
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	move $s3, $v0
	sw $s3, 0($s2)
	li $s2, 0
	sw $s2, var_3
L324:
	lw $s2, var_3
	slt $s2, $s2, $t5
	beq $zero, $s2, L325
	lw $s2, var_10
	lw $s3, var_2
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	lw $s3, 0($s2)
	lw $s2, var_3
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	li $s3, 0
	sw $s3, 0($s2)
L326:
	lw $s2, var_3
	add $s2, $s2, 1
	sw $s2, var_3
	b L324
L325:
L323:
	lw $s3, var_2
	add $s3, $s3, 1
	sw $s3, var_2
	b L321
L322:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_getResult:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t5, $a0
	move $s3, $a1
	move $s5, $a2
	lw $s2, var_10
	mul $t6, $s3, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
	mul $t6, $s5, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
	seq $s2, $s2, -1
	beq $zero, $s2, L333
	lw $s4, var_7
	mul $s2, $s5, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	mul $s2, $s2, 2
	lw $s4, var_7
	mul $t6, $s3, 4
	add $t6, $s4, $t6
	lw $t6, 0($t6)
	sub $s2, $s2, $t6
	sle $s2, $s2, $t5
	beq $zero, $s2, L334
	lw $t6, var_6
	lw $s4, var_7
	mul $s2, $s5, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	mul $s2, $s2, 2
	lw $s4, var_7
	mul $t4, $s3, 4
	add $s4, $s4, $t4
	lw $s4, 0($s4)
	sub $s2, $s2, $s4
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	lw $s2, 0($s2)
	sne $s2, $s2, 0
	beq $zero, $s2, L335
	move $a0, $t5
	move $a1, $s5
	lw $s4, var_8
	lw $s4, var_7
	mul $t5, $s5, 4
	add $t5, $s4, $t5
	lw $t5, 0($t5)
	mul $t5, $t5, 2
	lw $s4, var_7
	mul $s2, $s3, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $t5, $t5, $s2
	mul $t5, $t5, 4
	add $t5, $s4, $t5
	lw $t5, 0($t5)
	move $a2, $t5
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	jal f_getResult
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	move $t5, $v0
	add $t5, $t5, 1
	lw $s2, var_10
	mul $t6, $s3, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
	mul $t6, $s5, 4
	add $s2, $s2, $t6
	sw $t5, 0($s2)
L335:
L334:
L333:
	lw $s2, var_10
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	seq $t5, $t5, -1
	beq $zero, $t5, L336
	lw $s2, var_10
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	li $s2, 1
	sw $s2, 0($t5)
L336:
	lw $s2, var_10
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	move $v0, $t5
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
	move $t6, $v0
	sw $t6, var_6
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
	move $t6, $v0
	sw $t6, var_9
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 170
	jal f_origin
	li $t5, 1000
	sw $t5, var_0
	li $v0, 5
	syscall
	move $t5, $v0
	sw $t5, var_1
	li $t5, 0
	sw $t5, var_4
	li $t5, 0
	sw $t5, var_5
	lw $t6, var_9
	la $t5, 0($t6)
	li $s2, 0
	sw $s2, 0($t5)
	li $s3, 0
	sw $s3, var_2
L339:
	lw $s3, var_2
	lw $t5, var_0
	add $t5, $t5, 1
	slt $t5, $s3, $t5
	beq $zero, $t5, L340
	lw $t6, var_6
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $t6, $t5
	li $s2, 1
	sw $s2, 0($t5)
	lw $s4, var_8
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s4, $t5
	li $s2, 0
	sw $s2, 0($t5)
L341:
	lw $s3, var_2
	add $t5, $s3, 1
	move $s3, $t5
	sw $s3, var_2
	b L339
L340:
	li $s3, 0
	sw $s3, var_2
L342:
	lw $s3, var_2
	lw $t5, var_1
	add $t5, $t5, 1
	slt $t5, $s3, $t5
	beq $zero, $t5, L343
	lw $s4, var_7
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s4, $t5
	li $s2, 0
	sw $s2, 0($t5)
L344:
	lw $s3, var_2
	add $t5, $s3, 1
	move $s3, $t5
	sw $s3, var_2
	b L342
L343:
	li $s3, 0
	sw $s3, var_2
L345:
	lw $s3, var_2
	lw $t5, var_1
	sle $t5, $s3, $t5
	beq $zero, $t5, L346
	li $s2, 0
	sw $s2, var_3
L348:
	lw $s2, var_3
	lw $t5, var_1
	sle $t5, $s2, $t5
	beq $zero, $t5, L349
	lw $s2, var_10
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s2, var_3
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	li $s2, -1
	sw $s2, 0($t5)
L350:
	lw $s2, var_3
	add $t5, $s2, 1
	move $s2, $t5
	sw $s2, var_3
	b L348
L349:
L347:
	lw $s3, var_2
	add $t5, $s3, 1
	move $s3, $t5
	sw $s3, var_2
	b L345
L346:
	lw $t5, var_0
	move $a0, $t5
	jal f_getPrime
	lw $t6, var_9
	la $t5, 0($t6)
	lw $t5, 0($t5)
	sw $t5, var_4
	li $s3, 1
	sw $s3, var_2
L351:
	lw $s3, var_2
	lw $t5, var_4
	slt $t5, $s3, $t5
	beq $zero, $t5, L352
	lw $s3, var_2
	add $t5, $s3, 1
	move $s2, $t5
	sw $s2, var_3
L354:
	lw $s2, var_3
	lw $t5, var_4
	sle $t5, $s2, $t5
	beq $zero, $t5, L355
	lw $s2, var_10
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s2, var_3
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	seq $t5, $t5, -1
	beq $zero, $t5, L357
	lw $t5, var_0
	move $a0, $t5
	lw $s3, var_2
	move $a1, $s3
	lw $s2, var_3
	move $a2, $s2
	jal f_getResult
	move $t5, $v0
	lw $s2, var_10
	lw $s3, var_2
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	lw $s3, 0($s2)
	lw $s2, var_3
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	sw $t5, 0($s2)
	lw $s2, var_10
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s2, var_3
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	sgt $t5, $t5, 1
	beq $zero, $t5, L358
	lw $s4, var_7
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s4, $t5
	lw $t5, 0($t5)
	move $a0, $t5
	lw $s4, var_7
	lw $s2, var_3
	mul $t5, $s2, 4
	add $t5, $s4, $t5
	lw $t5, 0($t5)
	move $a1, $t5
	lw $s2, var_10
	lw $s3, var_2
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s2, var_3
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	move $a2, $t5
	jal f_printF
	lw $t5, var_5
	add $t5, $t5, 1
	sw $t5, var_5
L358:
L357:
L356:
	lw $s2, var_3
	add $t5, $s2, 1
	move $s2, $t5
	sw $s2, var_3
	b L354
L355:
L353:
	lw $s3, var_2
	add $t5, $s3, 1
	move $s3, $t5
	sw $s3, var_2
	b L351
L352:
	la $a0, msg_2
	li $v0, 4
	syscall
	lw $t5, var_5
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
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
	move $t5, $a0
	move $s2, $a1
	move $s3, $a2
	move $a0, $t5
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	jal f_toString
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	move $t6, $v0
	move $a0, $t6
	li $v0, 4
	syscall
L337:
	sgt $t6, $s3, 0
	beq $zero, $t6, L338
	la $a0, msg_0
	li $v0, 4
	syscall
	move $a0, $s2
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	jal f_toString
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	move $t6, $v0
	move $a0, $t6
	li $v0, 4
	syscall
	mul $s2, $s2, 2
	sub $s2, $s2, $t5
	add $t5, $t5, $s2
	div $t5, $t5, 2
	sub $s3, $s3, 1
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
