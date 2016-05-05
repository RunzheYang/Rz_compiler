.data
.align 2
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
var_4:	.word	0
.text
f_search:
	sub $sp, $sp, 24
	sw $ra, 0($sp)
	move $t5, $a0
	move $s2, $a1
	move $s3, $a2
	sgt $t6, $s2, 0
	bne $zero, $t6, L305
	slt $s4, $s2, 0
	or $s4, $t6, $s4
L305:
	bne $zero, $s4, L306
	seq $t6, $t5, 0
	or $s5, $s4, $t6
L306:
	bne $zero, $s5, L307
	lw $t6, var_0
	sub $s4, $t5, 1
	mul $s4, $s4, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s4, 0($t6)
	lw $t6, var_0
	sub $t4, $t5, 1
	mul $t4, $t4, 4
	add $t6, $t6, $t4
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s4, $s4, $t6
	lw $t6, var_0
	sub $t4, $t5, 1
	mul $t4, $t4, 4
	add $t6, $t6, $t4
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s4, $t6
	seq $t6, $t6, 15
	or $t4, $s5, $t6
L307:
	beq $zero, $t4, L308
	seq $t6, $t5, 2
	beq $zero, $t6, L310
	seq $s4, $s2, 2
	and $t1, $t6, $s4
L310:
	beq $zero, $t1, L311
	li $t5, 45
	sub $t5, $t5, $s3
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	sw $t5, 0($s2)
	lw $t6, var_0
	la $t5, 0($t6)
	lw $t5, 0($t5)
	la $t5, 0($t5)
	lw $t5, 0($t5)
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	add $t5, $t5, $s2
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	add $t5, $t5, $s2
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 4($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 8($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	seq $s2, $s2, $t5
	beq $zero, $s2, L313
	lw $t6, var_0
	la $s3, 8($t6)
	lw $s3, 0($s3)
	la $s3, 0($s3)
	lw $s3, 0($s3)
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s3, $s3, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $s3, $s3, $t6
	seq $s3, $s3, $t5
	and $t0, $s2, $s3
L313:
	beq $zero, $t0, L314
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 0($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	lw $t6, var_0
	la $s3, 8($t6)
	lw $s3, 0($s3)
	la $s3, 0($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	seq $s2, $s2, $t5
	and $t2, $t0, $s2
L314:
	beq $zero, $t2, L315
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 4($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	lw $t6, var_0
	la $s3, 8($t6)
	lw $s3, 0($s3)
	la $s3, 4($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	seq $s2, $s2, $t5
	and $s6, $t2, $s2
L315:
	beq $zero, $s6, L316
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 8($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	lw $t6, var_0
	la $s3, 8($t6)
	lw $s3, 0($s3)
	la $s3, 8($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	seq $s2, $s2, $t5
	and $t3, $s6, $s2
L316:
	beq $zero, $t3, L317
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 4($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	lw $t6, var_0
	la $s3, 8($t6)
	lw $s3, 0($s3)
	la $s3, 8($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	seq $s2, $s2, $t5
	and $t7, $t3, $s2
L317:
	beq $zero, $t7, L318
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $s3, 4($t6)
	lw $s3, 0($s3)
	la $s3, 4($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	lw $t6, var_0
	la $s3, 0($t6)
	lw $s3, 0($s3)
	la $s3, 8($s3)
	lw $s3, 0($s3)
	add $s2, $s2, $s3
	seq $t5, $s2, $t5
	and $s0, $t7, $t5
L318:
	beq $zero, $s0, L319
	lw $t5, var_2
	la $t5, 0($t5)
	lw $t5, 0($t5)
	add $s2, $t5, 1
	lw $t5, var_2
	la $t5, 0($t5)
	sw $s2, 0($t5)
	li $s4, 0
L321:
	sle $t5, $s4, 2
	beq $zero, $t5, L322
	li $t5, 0
L324:
	sle $s2, $t5, 2
	beq $zero, $s2, L325
	lw $t6, var_0
	mul $s2, $s4, 4
	add $s2, $t6, $s2
	lw $s2, 0($s2)
	mul $s3, $t5, 4
	add $s2, $s2, $s3
	lw $s2, 0($s2)
	move $a0, $s2
	sw $s4, 4($sp)
	sw $t5, 8($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $t5, 8($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L326:
	add $t5, $t5, 1
	b L324
L325:
	la $a0, msg_1
	li $v0, 4
	syscall
L323:
	add $s4, $s4, 1
	b L321
L322:
	la $a0, msg_1
	li $v0, 4
	syscall
	b L320
L319:
L320:
	b L312
L311:
	seq $t6, $s2, 2
	beq $zero, $t6, L327
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t6, 0($t6)
	li $s4, 15
	sub $s4, $s4, $t6
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	sub $s4, $s4, $t6
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	sw $s4, 0($t6)
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	sgt $s4, $t6, 0
	beq $zero, $s4, L329
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	slt $t6, $t6, 10
	and $t9, $s4, $t6
L329:
	beq $zero, $t9, L330
	lw $s5, var_1
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s5, $t6
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	and $t8, $t9, $t6
L330:
	beq $zero, $t8, L331
	lw $s5, var_1
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s5, $t6
	li $s4, 1
	sw $s4, 0($t6)
	seq $t6, $s2, 2
	beq $zero, $t6, L333
	add $t6, $t5, 1
	move $a0, $t6
	li $a1, 0
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	add $s3, $s3, $t6
	move $a2, $s3
	sw $t5, 12($sp)
	sw $s2, 16($sp)
	jal f_search
	lw $t5, 12($sp)
	lw $s2, 16($sp)
	b L334
L333:
	move $a0, $t5
	add $t6, $s2, 1
	move $a1, $t6
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	add $s3, $s3, $t6
	move $a2, $s3
	sw $t5, 12($sp)
	sw $s2, 16($sp)
	jal f_search
	lw $t5, 12($sp)
	lw $s2, 16($sp)
L334:
	lw $s5, var_1
	lw $t6, var_0
	mul $t5, $t5, 4
	add $t5, $t6, $t5
	lw $t5, 0($t5)
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	mul $t5, $t5, 4
	add $t5, $s5, $t5
	li $s2, 0
	sw $s2, 0($t5)
	b L332
L331:
L332:
	b L328
L327:
	li $s4, 1
L335:
	sle $t6, $s4, 9
	beq $zero, $t6, L336
	lw $s5, var_1
	mul $t6, $s4, 4
	add $t6, $s5, $t6
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	beq $zero, $t6, L338
	lw $s5, var_1
	mul $t6, $s4, 4
	add $t6, $s5, $t6
	li $s5, 1
	sw $s5, 0($t6)
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	move $s5, $s4
	sw $s5, 0($t6)
	seq $t6, $s2, 2
	beq $zero, $t6, L340
	add $t6, $t5, 1
	move $a0, $t6
	li $a1, 0
	add $t6, $s3, $s4
	move $a2, $t6
	sw $t5, 12($sp)
	sw $s2, 16($sp)
	sw $s3, 20($sp)
	sw $s4, 4($sp)
	jal f_search
	lw $t5, 12($sp)
	lw $s2, 16($sp)
	lw $s3, 20($sp)
	lw $s4, 4($sp)
	b L341
L340:
	move $a0, $t5
	add $t6, $s2, 1
	move $a1, $t6
	add $t6, $s3, $s4
	move $a2, $t6
	sw $t5, 12($sp)
	sw $s2, 16($sp)
	sw $s3, 20($sp)
	sw $s4, 4($sp)
	jal f_search
	lw $t5, 12($sp)
	lw $s2, 16($sp)
	lw $s3, 20($sp)
	lw $s4, 4($sp)
L341:
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	li $s5, 0
	sw $s5, 0($t6)
	lw $s5, var_1
	mul $t6, $s4, 4
	add $t6, $s5, $t6
	li $s5, 0
	sw $s5, 0($t6)
	b L339
L338:
L339:
L337:
	add $s4, $s4, 1
	b L335
L336:
L328:
L312:
	b L309
L308:
L309:
	lw $ra, 0($sp)
	add $sp, $sp, 24
	jr $ra
f_origin:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t5, $a0
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	move $t6, $v0
	sw $t6, var_0
	li $s2, 0
	sw $s2, var_3
L299:
	lw $s2, var_3
	slt $s2, $s2, $t5
	beq $zero, $s2, L300
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	lw $t6, var_0
	lw $s2, var_3
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	move $s3, $v0
	sw $s3, 0($s2)
	li $s2, 0
	sw $s2, var_4
L302:
	lw $s2, var_4
	slt $s2, $s2, $t5
	beq $zero, $s2, L303
	lw $t6, var_0
	lw $s2, var_3
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	lw $s3, 0($s2)
	lw $s2, var_4
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	li $s3, 0
	sw $s3, 0($s2)
L304:
	lw $s2, var_4
	add $s2, $s2, 1
	sw $s2, var_4
	b L302
L303:
L301:
	lw $s2, var_3
	add $s2, $s2, 1
	sw $s2, var_3
	b L299
L300:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 40
	li $v0, 9
	syscall
	move $s5, $v0
	sw $s5, var_1
	li $a0, 4
	li $v0, 9
	syscall
	move $t5, $v0
	sw $t5, var_2
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 3
	jal f_origin
	li $a0, 0
	li $a1, 0
	li $a2, 0
	jal f_search
	lw $t5, var_2
	la $t5, 0($t5)
	lw $t5, 0($t5)
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
