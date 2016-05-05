.data
.align 2
_buffer:	.space	256
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
	move $s3, $a0
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $s5, $v0, 4
	sw $s5, var_15
	li $s2, 0
	sw $s2, var_16
L270:
	lw $s2, var_16
	slt $s5, $s2, $s3
	beq $zero, $s5, L271
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $t6, $v0, 4
	lw $s5, var_15
	lw $s2, var_16
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	move $s2, $t6
	sw $s2, 0($s5)
	li $s5, 0
	sw $s5, var_17
L273:
	lw $s5, var_17
	slt $s5, $s5, $s3
	beq $zero, $s5, L274
	lw $s5, var_15
	lw $s2, var_16
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s2, 0($s5)
	lw $s5, var_17
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	li $s2, 0
	sw $s2, 0($s5)
L275:
	lw $s5, var_17
	add $s5, $s5, 1
	sw $s5, var_17
	b L273
L274:
L272:
	lw $s2, var_16
	add $s2, $s2, 1
	sw $s2, var_16
	b L270
L271:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_addList:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	move $s3, $a0
	move $s2, $a1
	move $a0, $s3
	sw $s3, 4($sp)
	sw $s2, 8($sp)
	jal f_check
	lw $s3, 4($sp)
	lw $s2, 8($sp)
	move $s5, $v0
	beq $zero, $s5, L277
	move $a0, $s2
	sw $s3, 4($sp)
	sw $s2, 8($sp)
	sw $s5, 12($sp)
	jal f_check
	lw $s3, 4($sp)
	lw $s2, 8($sp)
	lw $s5, 12($sp)
	move $t6, $v0
	and $t6, $s5, $t6
L277:
	beq $zero, $t6, L278
	lw $s5, var_15
	mul $t9, $s3, 4
	add $s5, $s5, $t9
	lw $s5, 0($s5)
	mul $t9, $s2, 4
	add $s5, $s5, $t9
	lw $s5, 0($s5)
	seq $s5, $s5, -1
	and $t9, $t6, $s5
L278:
	beq $zero, $t9, L279
	lw $s5, var_10
	add $s5, $s5, 1
	sw $s5, var_10
	lw $t6, var_8
	lw $s5, var_10
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	move $t6, $s3
	sw $t6, 0($s5)
	lw $t6, var_9
	lw $s5, var_10
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	move $t6, $s2
	sw $t6, 0($s5)
	lw $s5, var_12
	add $t6, $s5, 1
	lw $s5, var_15
	mul $t9, $s3, 4
	add $s5, $s5, $t9
	lw $s5, 0($s5)
	mul $t9, $s2, 4
	add $s5, $s5, $t9
	sw $t6, 0($s5)
	lw $s5, var_4
	seq $s3, $s3, $s5
	beq $zero, $s3, L281
	lw $s5, var_5
	seq $s5, $s2, $s5
	and $s0, $s3, $s5
L281:
	beq $zero, $s0, L282
	li $s3, 1
	sw $s3, var_11
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
	li $a0, 48004
	li $v0, 9
	syscall
	li $s3, 12000
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t6, $s3
	sw $t6, var_8
	li $a0, 48004
	li $v0, 9
	syscall
	li $s3, 12000
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t6, $s3
	sw $t6, var_9
	li $a0, 36
	li $v0, 9
	syscall
	li $s3, 8
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_13
	li $a0, 40
	li $v0, 9
	syscall
	li $s3, 9
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_14
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s3, 106
	move $a0, $s3
	jal f_origin
	li $v0, 5
	syscall
	move $s3, $v0
	sw $s3, var_0
	lw $s3, var_0
	sub $s3, $s3, 1
	move $s5, $s3
	sw $s5, var_5
	sw $s5, var_4
	li $s2, 0
	sw $s2, var_16
L284:
	lw $s2, var_16
	lw $s3, var_0
	slt $s3, $s2, $s3
	beq $zero, $s3, L285
	li $s5, 0
	sw $s5, var_17
L287:
	lw $s5, var_17
	lw $s3, var_0
	slt $s3, $s5, $s3
	beq $zero, $s3, L288
	lw $s5, var_15
	lw $s2, var_16
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	lw $s5, var_17
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	li $s5, -1
	sw $s5, 0($s3)
L289:
	lw $s5, var_17
	add $s5, $s5, 1
	sw $s5, var_17
	b L287
L288:
L286:
	lw $s2, var_16
	add $s2, $s2, 1
	sw $s2, var_16
	b L284
L285:
	lw $s3, var_13
	la $s3, 0($s3)
	li $s5, -2
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 0($s3)
	li $s5, -1
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 4($s3)
	li $s5, -2
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 4($s3)
	li $s5, 1
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 8($s3)
	li $s5, 2
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 8($s3)
	li $s5, -1
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 12($s3)
	li $s5, 2
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 12($s3)
	li $s5, 1
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 16($s3)
	li $s5, -1
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 16($s3)
	li $s5, -2
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 20($s3)
	li $s5, -1
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 20($s3)
	li $s5, 2
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 24($s3)
	li $s5, 1
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 24($s3)
	li $s5, -2
	sw $s5, 0($s3)
	lw $s3, var_13
	la $s3, 28($s3)
	li $s5, 1
	sw $s5, 0($s3)
	lw $s3, var_14
	la $s3, 28($s3)
	li $s5, 2
	sw $s5, 0($s3)
L290:
	lw $s3, var_1
	lw $s5, var_10
	sle $s3, $s3, $s5
	beq $zero, $s3, L291
	lw $t6, var_8
	lw $s3, var_1
	mul $s3, $s3, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	move $s2, $s3
	sw $s2, var_6
	lw $t6, var_9
	lw $s3, var_1
	mul $s3, $s3, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	move $s2, $s3
	sw $s2, var_7
	lw $s5, var_15
	lw $s2, var_6
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	lw $s2, var_7
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	move $s5, $s3
	sw $s5, var_12
	li $s5, 0
	sw $s5, var_17
L292:
	lw $s5, var_17
	slt $s3, $s5, 8
	beq $zero, $s3, L293
	lw $s2, var_6
	lw $s3, var_13
	lw $s5, var_17
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	add $t6, $s2, $s3
	lw $s2, var_7
	lw $s3, var_14
	lw $s5, var_17
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	add $s3, $s2, $s3
	move $a0, $t6
	move $a1, $s3
	jal f_addList
L294:
	lw $s5, var_17
	add $s5, $s5, 1
	sw $s5, var_17
	b L292
L293:
	lw $s3, var_11
	seq $s3, $s3, 1
	beq $zero, $s3, L295
	b L291
	b L296
L295:
L296:
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	b L290
L291:
	lw $s3, var_11
	seq $s3, $s3, 1
	beq $zero, $s3, L297
	lw $s5, var_15
	lw $s5, var_4
	mul $s3, $s5, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	lw $s5, var_5
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	move $a0, $s3
	jal f_toString
	move $s3, $v0
	move $a0, $s3
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
	move $s5, $a0
	lw $s3, var_0
	slt $s3, $s5, $s3
	beq $zero, $s3, L276
	sge $s5, $s5, 0
	and $s2, $s3, $s5
L276:
	move $v0, $s2
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
