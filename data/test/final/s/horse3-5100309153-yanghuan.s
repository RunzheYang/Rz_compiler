.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
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
var_11:	.word	0
var_12:	.word	0
var_13:	.word	0
var_14:	.word	0
var_15:	.word	0
var_16:	.word	0
var_17:	.word	0
.text
f_origin:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t5, $a0
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	move $s2, $v0
	sw $s2, var_15
	li $s3, 0
	sw $s3, var_16
L270:
	lw $s3, var_16
	slt $s2, $s3, $t5
	beq $zero, $s2, L271
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	lw $s2, var_15
	lw $s3, var_16
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	move $s3, $v0
	sw $s3, 0($s2)
	li $s2, 0
	sw $s2, var_17
L273:
	lw $s2, var_17
	slt $s2, $s2, $t5
	beq $zero, $s2, L274
	lw $s2, var_15
	lw $s3, var_16
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	lw $s3, 0($s2)
	lw $s2, var_17
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	li $s3, 0
	sw $s3, 0($s2)
L275:
	lw $s2, var_17
	add $s2, $s2, 1
	sw $s2, var_17
	b L273
L274:
L272:
	lw $s3, var_16
	add $s3, $s3, 1
	sw $s3, var_16
	b L270
L271:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_addList:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	move $t5, $a0
	move $s3, $a1
	move $a0, $t5
	sw $t5, 4($sp)
	sw $s3, 8($sp)
	jal f_check
	lw $t5, 4($sp)
	lw $s3, 8($sp)
	move $s2, $v0
	beq $zero, $s2, L277
	move $a0, $s3
	sw $t5, 4($sp)
	sw $s3, 8($sp)
	sw $s2, 12($sp)
	jal f_check
	lw $t5, 4($sp)
	lw $s3, 8($sp)
	lw $s2, 12($sp)
	move $t6, $v0
	and $t6, $s2, $t6
L277:
	beq $zero, $t6, L278
	lw $s2, var_15
	mul $s4, $t5, 4
	add $s2, $s2, $s4
	lw $s2, 0($s2)
	mul $s4, $s3, 4
	add $s2, $s2, $s4
	lw $s2, 0($s2)
	seq $s2, $s2, -1
	and $s4, $t6, $s2
L278:
	beq $zero, $s4, L279
	lw $s2, var_10
	add $s2, $s2, 1
	sw $s2, var_10
	lw $t6, var_8
	lw $s2, var_10
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	move $t6, $t5
	sw $t6, 0($s2)
	lw $t6, var_9
	lw $s2, var_10
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	move $t6, $s3
	sw $t6, 0($s2)
	lw $s2, var_12
	add $t6, $s2, 1
	lw $s2, var_15
	mul $s4, $t5, 4
	add $s2, $s2, $s4
	lw $s2, 0($s2)
	mul $s4, $s3, 4
	add $s2, $s2, $s4
	sw $t6, 0($s2)
	lw $s2, var_4
	seq $t5, $t5, $s2
	beq $zero, $t5, L281
	lw $s2, var_5
	seq $s2, $s3, $s2
	and $s5, $t5, $s2
L281:
	beq $zero, $s5, L282
	li $t5, 1
	sw $t5, var_11
	b L283
L282:
L283:
	b L280
L279:
L280:
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
main:
	li $a0, 48000
	li $v0, 9
	syscall
	move $t6, $v0
	sw $t6, var_8
	li $a0, 48000
	li $v0, 9
	syscall
	move $t6, $v0
	sw $t6, var_9
	li $a0, 32
	li $v0, 9
	syscall
	move $t5, $v0
	sw $t5, var_13
	li $a0, 36
	li $v0, 9
	syscall
	move $t5, $v0
	sw $t5, var_14
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 106
	jal f_origin
	li $v0, 5
	syscall
	move $t5, $v0
	sw $t5, var_0
	lw $t5, var_0
	sub $t5, $t5, 1
	move $s2, $t5
	sw $s2, var_5
	sw $s2, var_4
	li $s3, 0
	sw $s3, var_16
L284:
	lw $s3, var_16
	lw $t5, var_0
	slt $t5, $s3, $t5
	beq $zero, $t5, L285
	li $s2, 0
	sw $s2, var_17
L287:
	lw $s2, var_17
	lw $t5, var_0
	slt $t5, $s2, $t5
	beq $zero, $t5, L288
	lw $s2, var_15
	lw $s3, var_16
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s2, var_17
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	li $s2, -1
	sw $s2, 0($t5)
L289:
	lw $s2, var_17
	add $s2, $s2, 1
	sw $s2, var_17
	b L287
L288:
L286:
	lw $s3, var_16
	add $s3, $s3, 1
	sw $s3, var_16
	b L284
L285:
	lw $t5, var_13
	la $t5, 0($t5)
	li $s2, -2
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 0($t5)
	li $s2, -1
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 4($t5)
	li $s2, -2
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 4($t5)
	li $s2, 1
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 8($t5)
	li $s2, 2
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 8($t5)
	li $s2, -1
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 12($t5)
	li $s2, 2
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 12($t5)
	li $s2, 1
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 16($t5)
	li $s2, -1
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 16($t5)
	li $s2, -2
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 20($t5)
	li $s2, -1
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 20($t5)
	li $s2, 2
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 24($t5)
	li $s2, 1
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 24($t5)
	li $s2, -2
	sw $s2, 0($t5)
	lw $t5, var_13
	la $t5, 28($t5)
	li $s2, 1
	sw $s2, 0($t5)
	lw $t5, var_14
	la $t5, 28($t5)
	li $s2, 2
	sw $s2, 0($t5)
L290:
	lw $t5, var_1
	lw $s2, var_10
	sle $t5, $t5, $s2
	beq $zero, $t5, L291
	lw $t6, var_8
	lw $t5, var_1
	mul $t5, $t5, 4
	add $t5, $t6, $t5
	lw $t5, 0($t5)
	move $s3, $t5
	sw $s3, var_6
	lw $t6, var_9
	lw $t5, var_1
	mul $t5, $t5, 4
	add $t5, $t6, $t5
	lw $t5, 0($t5)
	move $s3, $t5
	sw $s3, var_7
	lw $s2, var_15
	lw $s3, var_6
	mul $t5, $s3, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s3, var_7
	mul $s2, $s3, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	move $s2, $t5
	sw $s2, var_12
	li $s2, 0
	sw $s2, var_17
L292:
	lw $s2, var_17
	slt $t5, $s2, 8
	beq $zero, $t5, L293
	lw $s3, var_6
	lw $t5, var_13
	lw $s2, var_17
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	add $t5, $s3, $t5
	move $a0, $t5
	lw $s3, var_7
	lw $t5, var_14
	lw $s2, var_17
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	add $t5, $s3, $t5
	move $a1, $t5
	jal f_addList
L294:
	lw $s2, var_17
	add $s2, $s2, 1
	sw $s2, var_17
	b L292
L293:
	lw $t5, var_11
	seq $t5, $t5, 1
	beq $zero, $t5, L295
	b L291
	b L296
L295:
L296:
	lw $t5, var_1
	add $t5, $t5, 1
	sw $t5, var_1
	b L290
L291:
	lw $t5, var_11
	seq $t5, $t5, 1
	beq $zero, $t5, L297
	lw $s2, var_15
	lw $s2, var_4
	mul $t5, $s2, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	lw $s2, var_5
	mul $s2, $s2, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	b L298
L297:
	la $a0, msg_1
	li $v0, 4
	syscall
L298:
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
f_check:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $s2, $a0
	lw $t5, var_0
	slt $t5, $s2, $t5
	beq $zero, $t5, L276
	sge $s2, $s2, 0
	and $s3, $t5, $s2
L276:
	move $v0, $s3
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
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
