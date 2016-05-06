.data
.align 2
_buffer:	.space	256
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
	move $s3, $a0
	move $s5, $a1
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s2, 1
	sw $s2, var_5
L383:
	lw $s2, var_5
	sle $s2, $s2, 49
	beq $zero, $s2, L384
	li $t6, 50
	sw $t6, var_6
L386:
	lw $t6, var_6
	lw $s2, var_5
	li $t9, 98
	sub $t9, $t9, $s2
	add $s2, $t9, 1
	sle $s2, $t6, $s2
	beq $zero, $s2, L387
	lw $t6, var_0
	lw $s2, var_5
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	lw $s2, 0($s2)
	lw $t6, var_6
	mul $t6, $t6, 4
	add $s2, $s2, $t6
	li $t6, 1
	sw $t6, 0($s2)
L388:
	lw $t6, var_6
	add $t6, $t6, 1
	sw $t6, var_6
	b L386
L387:
L385:
	lw $s2, var_5
	add $s2, $s2, 1
	sw $s2, var_5
	b L383
L384:
	li $s2, 1
	sw $s2, var_5
L389:
	lw $s2, var_5
	sle $s2, $s2, 49
	beq $zero, $s2, L390
	lw $t6, var_0
	mul $s2, $s3, 4
	add $s2, $t6, $s2
	lw $t6, 0($s2)
	lw $s2, var_5
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	li $t6, 1
	sw $t6, 0($s2)
L391:
	lw $s2, var_5
	add $s2, $s2, 1
	sw $s2, var_5
	b L389
L390:
	li $s2, 50
	sw $s2, var_5
L392:
	lw $s2, var_5
	sle $s3, $s2, 98
	beq $zero, $s3, L393
	lw $t6, var_0
	lw $s2, var_5
	mul $s3, $s2, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $s2, $s5, 4
	add $s3, $s3, $s2
	li $s2, 1
	sw $s2, 0($s3)
L394:
	lw $s2, var_5
	add $s2, $s2, 1
	sw $s2, var_5
	b L392
L393:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_find:
	move $s3, $a0
	move $s5, $a1
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s2, 0
	sw $s2, var_7
	li $t6, 1
	sw $t6, var_8
	li $s2, 1
	sw $s2, var_5
L395:
	lw $s2, var_5
	sle $s2, $s2, $s3
	beq $zero, $s2, L396
	lw $t6, var_2
	lw $s2, var_5
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	li $t6, 0
	sw $t6, 0($s2)
L397:
	lw $s2, var_5
	add $s2, $s2, 1
	sw $s2, var_5
	b L395
L396:
	lw $t9, var_4
	la $s2, 4($t9)
	move $t6, $s5
	sw $t6, 0($s2)
	lw $t6, var_2
	mul $s2, $s5, 4
	add $s2, $t6, $s2
	li $t6, 1
	sw $t6, 0($s2)
	lw $t6, var_3
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	li $s2, 0
	sw $s2, 0($s5)
	li $s5, 0
L398:
	lw $s2, var_7
	lw $t6, var_8
	slt $s2, $s2, $t6
	beq $zero, $s2, L399
	seq $t6, $s5, 0
	and $s2, $s2, $t6
	b L400
L399:
	li $s2, 0
L400:
	beq $zero, $s2, L401
	lw $s2, var_7
	add $s2, $s2, 1
	sw $s2, var_7
	lw $t9, var_4
	lw $s2, var_7
	mul $s2, $s2, 4
	add $s2, $t9, $s2
	lw $s2, 0($s2)
	sw $s2, var_5
	li $s0, 1
	sw $s0, var_6
L402:
	lw $s0, var_6
	sle $s2, $s0, $s3
	beq $zero, $s2, L403
	lw $t6, var_0
	lw $s2, var_5
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	lw $s2, 0($s2)
	lw $s0, var_6
	mul $t6, $s0, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
	sgt $s2, $s2, 0
	beq $zero, $s2, L405
	lw $t6, var_2
	lw $s0, var_6
	mul $t9, $s0, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	and $s2, $s2, $t6
	b L406
L405:
	li $s2, 0
L406:
	beq $zero, $s2, L407
	lw $t6, var_2
	lw $s0, var_6
	mul $s2, $s0, 4
	add $s2, $t6, $s2
	li $t6, 1
	sw $t6, 0($s2)
	lw $t6, var_8
	add $t6, $t6, 1
	sw $t6, var_8
	lw $s0, var_6
	lw $t9, var_4
	lw $t6, var_8
	mul $s2, $t6, 4
	add $s2, $t9, $s2
	move $t6, $s0
	sw $t6, 0($s2)
	lw $s2, var_5
	lw $t6, var_3
	lw $s0, var_6
	mul $t9, $s0, 4
	add $t6, $t6, $t9
	sw $s2, 0($t6)
	lw $t6, var_8
	seq $s2, $t6, $s3
	beq $zero, $s2, L409
	li $s5, 1
	b L410
L409:
L410:
	b L408
L407:
L408:
L404:
	lw $s0, var_6
	add $s0, $s0, 1
	sw $s0, var_6
	b L402
L403:
	b L398
L401:
	move $v0, $s5
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_improve:
	move $s3, $a0
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sw $s3, var_5
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
L411:
	lw $s5, var_3
	lw $s3, var_5
	mul $s3, $s3, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	sgt $s3, $s3, 0
	beq $zero, $s3, L412
	lw $s5, var_3
	lw $s3, var_5
	mul $s3, $s3, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	sw $s3, var_6
	lw $s5, var_0
	lw $s3, var_6
	mul $s3, $s3, 4
	add $s3, $s5, $s3
	lw $s5, 0($s3)
	lw $s3, var_5
	mul $s3, $s3, 4
	add $s3, $s5, $s3
	lw $s5, 0($s3)
	sub $s5, $s5, 1
	sw $s5, 0($s3)
	lw $s5, var_0
	lw $s3, var_5
	mul $s3, $s3, 4
	add $s3, $s5, $s3
	lw $s5, 0($s3)
	lw $s3, var_6
	mul $s3, $s3, 4
	add $s3, $s5, $s3
	lw $s5, 0($s3)
	add $s5, $s5, 1
	sw $s5, 0($s3)
	lw $s3, var_6
	sw $s3, var_5
	b L411
L412:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_origin:
	move $s3, $a0
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $s5, $v0, 4
	sw $s5, var_0
	li $s2, 0
	sw $s2, var_5
L377:
	lw $s2, var_5
	slt $s5, $s2, $s3
	beq $zero, $s5, L378
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $t6, $v0, 4
	lw $s5, var_0
	lw $s2, var_5
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	move $s2, $t6
	sw $s2, 0($s5)
	li $s5, 0
	sw $s5, var_6
L380:
	lw $s5, var_6
	slt $s5, $s5, $s3
	beq $zero, $s5, L381
	lw $s5, var_0
	lw $s2, var_5
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s2, 0($s5)
	lw $s5, var_6
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	li $s2, 0
	sw $s2, 0($s5)
L382:
	lw $s5, var_6
	add $s5, $s5, 1
	sw $s5, var_6
	b L380
L381:
L379:
	lw $s2, var_5
	add $s2, $s2, 1
	sw $s2, var_5
	b L377
L378:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 444
	li $v0, 9
	syscall
	li $s3, 110
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_2
	li $a0, 444
	li $v0, 9
	syscall
	li $s3, 110
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_3
	li $a0, 444
	li $v0, 9
	syscall
	li $s3, 110
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_4
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	li $s3, 110
	move $a0, $s3
	jal f_origin
	li $s3, 99
	li $s5, 100
	li $s2, 0
	move $a0, $s3
	move $a1, $s5
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	sw $s2, 12($sp)
	jal f_build
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	lw $s2, 12($sp)
L413:
	move $a0, $s5
	move $a1, $s3
	move $a2, $s2
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	sw $s2, 12($sp)
	jal f_find
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	lw $s2, 12($sp)
	move $t6, $v0
	sgt $t6, $t6, 0
	beq $zero, $t6, L414
	move $a0, $s5
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	sw $s2, 12($sp)
	jal f_improve
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	lw $s2, 12($sp)
	b L413
L414:
	lw $s3, var_1
	move $a0, $s3
	jal f_toString
	move $s3, $v0
	move $a0, $s3
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
