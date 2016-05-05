.data
.align 2
_buffer:	.space	256
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
	move $s3, $a0
	move $s5, $a1
	move $s2, $a2
	sgt $t6, $s5, 0
	bne $zero, $t6, L305
	slt $t9, $s5, 0
	or $t9, $t6, $t9
L305:
	bne $zero, $t9, L306
	seq $t6, $s3, 0
	or $s0, $t9, $t6
L306:
	bne $zero, $s0, L307
	lw $t6, var_0
	sub $t9, $s3, 1
	mul $t9, $t9, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t9, 0($t6)
	lw $t6, var_0
	sub $s7, $s3, 1
	mul $s7, $s7, 4
	add $t6, $t6, $s7
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $t9, $t9, $t6
	lw $t6, var_0
	sub $s7, $s3, 1
	mul $s7, $s7, 4
	add $t6, $t6, $s7
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $t9, $t6
	seq $t6, $t6, 15
	or $s7, $s0, $t6
L307:
	beq $zero, $s7, L308
	seq $t6, $s3, 2
	beq $zero, $t6, L310
	seq $t9, $s5, 2
	and $t0, $t6, $t9
L310:
	beq $zero, $t0, L311
	li $s3, 45
	sub $s3, $s3, $s2
	lw $t6, var_0
	la $s5, 8($t6)
	lw $s5, 0($s5)
	la $s5, 8($s5)
	sw $s3, 0($s5)
	lw $t6, var_0
	la $s3, 0($t6)
	lw $s3, 0($s3)
	la $s3, 0($s3)
	lw $s3, 0($s3)
	lw $t6, var_0
	la $s5, 0($t6)
	lw $s5, 0($s5)
	la $s5, 4($s5)
	lw $s5, 0($s5)
	add $s3, $s3, $s5
	lw $t6, var_0
	la $s5, 0($t6)
	lw $s5, 0($s5)
	la $s5, 8($s5)
	lw $s5, 0($s5)
	add $s3, $s3, $s5
	lw $t6, var_0
	la $s5, 4($t6)
	lw $s5, 0($s5)
	la $s5, 0($s5)
	lw $s5, 0($s5)
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	seq $s5, $s5, $s3
	beq $zero, $s5, L313
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s2, $s2, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $s2, $s2, $t6
	seq $s2, $s2, $s3
	and $t3, $s5, $s2
L313:
	beq $zero, $t3, L314
	lw $t6, var_0
	la $s5, 0($t6)
	lw $s5, 0($s5)
	la $s5, 0($s5)
	lw $s5, 0($s5)
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 0($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	seq $s5, $s5, $s3
	and $s4, $t3, $s5
L314:
	beq $zero, $s4, L315
	lw $t6, var_0
	la $s5, 0($t6)
	lw $s5, 0($s5)
	la $s5, 4($s5)
	lw $s5, 0($s5)
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	seq $s5, $s5, $s3
	and $t4, $s4, $s5
L315:
	beq $zero, $t4, L316
	lw $t6, var_0
	la $s5, 0($t6)
	lw $s5, 0($s5)
	la $s5, 8($s5)
	lw $s5, 0($s5)
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	seq $s5, $s5, $s3
	and $t1, $t4, $s5
L316:
	beq $zero, $t1, L317
	lw $t6, var_0
	la $s5, 0($t6)
	lw $s5, 0($s5)
	la $s5, 0($s5)
	lw $s5, 0($s5)
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	lw $t6, var_0
	la $s2, 8($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	seq $s5, $s5, $s3
	and $s1, $t1, $s5
L317:
	beq $zero, $s1, L318
	lw $t6, var_0
	la $s5, 8($t6)
	lw $s5, 0($s5)
	la $s5, 0($s5)
	lw $s5, 0($s5)
	lw $t6, var_0
	la $s2, 4($t6)
	lw $s2, 0($s2)
	la $s2, 4($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	lw $t6, var_0
	la $s2, 0($t6)
	lw $s2, 0($s2)
	la $s2, 8($s2)
	lw $s2, 0($s2)
	add $s5, $s5, $s2
	seq $s3, $s5, $s3
	and $t8, $s1, $s3
L318:
	beq $zero, $t8, L319
	lw $s3, var_2
	la $s3, 0($s3)
	lw $s3, 0($s3)
	add $s5, $s3, 1
	lw $s3, var_2
	la $s3, 0($s3)
	sw $s5, 0($s3)
	li $t9, 0
L321:
	sle $s3, $t9, 2
	beq $zero, $s3, L322
	li $s3, 0
L324:
	sle $s5, $s3, 2
	beq $zero, $s5, L325
	lw $t6, var_0
	mul $s5, $t9, 4
	add $s5, $t6, $s5
	lw $s5, 0($s5)
	mul $s2, $s3, 4
	add $s5, $s5, $s2
	lw $s5, 0($s5)
	move $a0, $s5
	sw $t9, 4($sp)
	sw $s3, 8($sp)
	jal f_toString
	lw $t9, 4($sp)
	lw $s3, 8($sp)
	move $s5, $v0
	move $a0, $s5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L326:
	add $s3, $s3, 1
	b L324
L325:
	la $a0, msg_1
	li $v0, 4
	syscall
L323:
	add $t9, $t9, 1
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
	seq $t6, $s5, 2
	beq $zero, $t6, L327
	lw $t6, var_0
	mul $t9, $s3, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t6, 0($t6)
	li $t9, 15
	sub $t9, $t9, $t6
	lw $t6, var_0
	mul $s0, $s3, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	sub $t9, $t9, $t6
	lw $t6, var_0
	mul $s0, $s3, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $s5, 4
	add $t6, $t6, $s0
	sw $t9, 0($t6)
	lw $t6, var_0
	mul $t9, $s3, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t9, $s5, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	sgt $t9, $t6, 0
	beq $zero, $t9, L329
	lw $t6, var_0
	mul $s0, $s3, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $s5, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	slt $t6, $t6, 10
	and $t7, $t9, $t6
L329:
	beq $zero, $t7, L330
	lw $s0, var_1
	lw $t6, var_0
	mul $t9, $s3, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t9, $s5, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s0, $t6
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	and $t5, $t7, $t6
L330:
	beq $zero, $t5, L331
	lw $s0, var_1
	lw $t6, var_0
	mul $t9, $s3, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t9, $s5, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s0, $t6
	li $t9, 1
	sw $t9, 0($t6)
	seq $t6, $s5, 2
	beq $zero, $t6, L333
	add $t9, $s3, 1
	li $s0, 0
	lw $t6, var_0
	mul $s7, $s3, 4
	add $t6, $t6, $s7
	lw $t6, 0($t6)
	mul $s7, $s5, 4
	add $t6, $t6, $s7
	lw $t6, 0($t6)
	add $s2, $s2, $t6
	move $a0, $t9
	move $a1, $s0
	move $a2, $s2
	sw $s3, 12($sp)
	sw $s5, 16($sp)
	jal f_search
	lw $s3, 12($sp)
	lw $s5, 16($sp)
	b L334
L333:
	add $t9, $s5, 1
	lw $t6, var_0
	mul $s0, $s3, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $s5, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	add $s2, $s2, $t6
	move $a0, $s3
	move $a1, $t9
	move $a2, $s2
	sw $s3, 12($sp)
	sw $s5, 16($sp)
	jal f_search
	lw $s3, 12($sp)
	lw $s5, 16($sp)
L334:
	lw $s0, var_1
	lw $t6, var_0
	mul $s3, $s3, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	mul $s3, $s3, 4
	add $s3, $s0, $s3
	li $s5, 0
	sw $s5, 0($s3)
	b L332
L331:
L332:
	b L328
L327:
	li $t9, 1
L335:
	sle $t6, $t9, 9
	beq $zero, $t6, L336
	lw $s0, var_1
	mul $t6, $t9, 4
	add $t6, $s0, $t6
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	beq $zero, $t6, L338
	lw $s0, var_1
	mul $t6, $t9, 4
	add $t6, $s0, $t6
	li $s0, 1
	sw $s0, 0($t6)
	lw $t6, var_0
	mul $s0, $s3, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $s5, 4
	add $t6, $t6, $s0
	move $s0, $t9
	sw $s0, 0($t6)
	seq $t6, $s5, 2
	beq $zero, $t6, L340
	add $t6, $s3, 1
	li $s0, 0
	add $s7, $s2, $t9
	move $a0, $t6
	move $a1, $s0
	move $a2, $s7
	sw $t9, 4($sp)
	sw $s3, 12($sp)
	sw $s5, 16($sp)
	sw $s2, 20($sp)
	jal f_search
	lw $t9, 4($sp)
	lw $s3, 12($sp)
	lw $s5, 16($sp)
	lw $s2, 20($sp)
	b L341
L340:
	add $t6, $s5, 1
	add $s0, $s2, $t9
	move $a0, $s3
	move $a1, $t6
	move $a2, $s0
	sw $t9, 4($sp)
	sw $s3, 12($sp)
	sw $s5, 16($sp)
	sw $s2, 20($sp)
	jal f_search
	lw $t9, 4($sp)
	lw $s3, 12($sp)
	lw $s5, 16($sp)
	lw $s2, 20($sp)
L341:
	lw $t6, var_0
	mul $s0, $s3, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $s5, 4
	add $t6, $t6, $s0
	li $s0, 0
	sw $s0, 0($t6)
	lw $s0, var_1
	mul $t6, $t9, 4
	add $t6, $s0, $t6
	li $s0, 0
	sw $s0, 0($t6)
	b L339
L338:
L339:
L337:
	add $t9, $t9, 1
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
	move $s3, $a0
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $s5, $v0, 4
	move $t6, $s5
	sw $t6, var_0
	li $s5, 0
	sw $s5, var_3
L299:
	lw $s5, var_3
	slt $s5, $s5, $s3
	beq $zero, $s5, L300
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $s2, $v0, 4
	lw $t6, var_0
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	sw $s2, 0($s5)
	li $s5, 0
	sw $s5, var_4
L302:
	lw $s5, var_4
	slt $s5, $s5, $s3
	beq $zero, $s5, L303
	lw $t6, var_0
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	lw $s2, 0($s5)
	lw $s5, var_4
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	li $s2, 0
	sw $s2, 0($s5)
L304:
	lw $s5, var_4
	add $s5, $s5, 1
	sw $s5, var_4
	b L302
L303:
L301:
	lw $s5, var_3
	add $s5, $s5, 1
	sw $s5, var_3
	b L299
L300:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 44
	li $v0, 9
	syscall
	li $s3, 10
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $s0, $s3
	sw $s0, var_1
	li $a0, 8
	li $v0, 9
	syscall
	li $s3, 1
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_2
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s3, 3
	move $a0, $s3
	jal f_origin
	li $s3, 0
	li $s5, 0
	li $s2, 0
	move $a0, $s3
	move $a1, $s5
	move $a2, $s2
	jal f_search
	lw $s3, var_2
	la $s3, 0($s3)
	lw $s3, 0($s3)
	move $a0, $s3
	jal f_toString
	move $s3, $v0
	move $a0, $s3
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
f_str.stringConcatenate:
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
f_str.substring:
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	sub $t1, $a2, $a1
	add $t1, $t1, 1
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4
	add $a0, $t0, $a1
	add $t2, $t0, $a2
	lb $t3, 1($t2)
	sb $zero, 1($t2)
	move $a1, $v0
	move $t4, $v0
	jal _string_copy
	move $v0, $t4
	sb $t3, 1($t2)
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra
f_str.parseInt:
	li $v0, 0
	move $t0, $a0
	li $t2, 1
	_count_number_pos:
	lb $t1, 0($t0)
	bgt $t1, 57, _begin_parse_int
	blt $t1, 48, _begin_parse_int
	add $t0, $t0, 1
	j _count_number_pos
	_begin_parse_int:
	sub $t0, $t0, 1
	_parsing_int:
	blt $t0, $a0, _finish_parse_int
	lb $t1, 0($t0)
	sub $t1, $t1, 48
	mul $t1, $t1, $t2
	add $v0, $v0, $t1
	mul $t2, $t2, 10
	sub $t0, $t0, 1
	j _parsing_int
	_finish_parse_int:
	jr $ra
f_str.ord:
	add $a0, $a0, $a1
	lb $v0, 0($a0)
	jr $ra
f_getString:
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	la $a0, _buffer
	li $a1, 255
	li $v0, 8
	syscall
	jal _count_string_length
	move $a1, $v0
	add $a0, $v0, 5
	li $v0, 9
	syscall
	sw $a1, 0($v0)
	add $v0, $v0, 4
	la $a0, _buffer
	move $a1, $v0
	move $t0, $v0
	jal _string_copy
	move $v0, $t0
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra
_count_string_length:
	move $v0, $a0
	_begin_count_string_length:
	lb $v1, 0($a0)
	beqz $v1, _exit_count_string_length
	add $a0, $a0, 1
	j _begin_count_string_length
	_exit_count_string_length:
	sub $v0, $a0, $v0
	jr $ra
