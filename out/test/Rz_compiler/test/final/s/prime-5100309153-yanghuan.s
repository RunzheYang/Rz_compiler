.data
.align 2
_buffer:	.space	256
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
	move $s3, $a0
	li $s5, 2
	li $s2, 2
L385:
	sle $t6, $s2, $s3
	beq $zero, $t6, L386
	lw $t6, var_6
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	seq $t6, $t6, 1
	beq $zero, $t6, L388
	lw $t6, var_9
	la $t6, 0($t6)
	lw $t6, 0($t6)
	add $t9, $t6, 1
	lw $t6, var_9
	la $t6, 0($t6)
	sw $t9, 0($t6)
	lw $t9, var_7
	lw $t6, var_9
	la $t6, 0($t6)
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $t9, $t6
	move $t9, $s2
	sw $t9, 0($t6)
	lw $t6, var_9
	la $t6, 0($t6)
	lw $t6, 0($t6)
	lw $t9, var_8
	mul $s0, $s2, 4
	add $t9, $t9, $s0
	sw $t6, 0($t9)
	b L389
L388:
L389:
L390:
	mul $t6, $s2, $s5
	sle $t6, $t6, $s3
	beq $zero, $t6, L391
	lw $t6, var_6
	mul $t9, $s2, $s5
	mul $t9, $t9, 4
	add $t6, $t6, $t9
	li $t9, 0
	sw $t9, 0($t6)
	add $s5, $s5, 1
	b L390
L391:
	li $s5, 2
L387:
	add $s2, $s2, 1
	b L385
L386:
	lw $ra, 0($sp)
	add $sp, $sp, 4
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
	sw $s5, var_10
	li $s2, 0
	sw $s2, var_2
L379:
	lw $s2, var_2
	slt $s5, $s2, $s3
	beq $zero, $s5, L380
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s5, $s3
	sw $s5, 0($v0)
	add $t6, $v0, 4
	lw $s5, var_10
	lw $s2, var_2
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	move $s2, $t6
	sw $s2, 0($s5)
	li $s5, 0
	sw $s5, var_3
L382:
	lw $s5, var_3
	slt $s5, $s5, $s3
	beq $zero, $s5, L383
	lw $s5, var_10
	lw $s2, var_2
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s2, 0($s5)
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	li $s2, 0
	sw $s2, 0($s5)
L384:
	lw $s5, var_3
	add $s5, $s5, 1
	sw $s5, var_3
	b L382
L383:
L381:
	lw $s2, var_2
	add $s2, $s2, 1
	sw $s2, var_2
	b L379
L380:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_getResult:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $s3, $a0
	move $s2, $a1
	move $s0, $a2
	lw $s5, var_10
	mul $t6, $s2, 4
	add $s5, $s5, $t6
	lw $s5, 0($s5)
	mul $t6, $s0, 4
	add $s5, $s5, $t6
	lw $s5, 0($s5)
	seq $s5, $s5, -1
	beq $zero, $s5, L392
	lw $t9, var_7
	mul $s5, $s0, 4
	add $s5, $t9, $s5
	lw $s5, 0($s5)
	mul $s5, $s5, 2
	lw $t9, var_7
	mul $t6, $s2, 4
	add $t6, $t9, $t6
	lw $t6, 0($t6)
	sub $s5, $s5, $t6
	sle $s5, $s5, $s3
	beq $zero, $s5, L394
	lw $t6, var_6
	lw $t9, var_7
	mul $s5, $s0, 4
	add $s5, $t9, $s5
	lw $s5, 0($s5)
	mul $s5, $s5, 2
	lw $t9, var_7
	mul $s7, $s2, 4
	add $t9, $t9, $s7
	lw $t9, 0($t9)
	sub $s5, $s5, $t9
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	lw $s5, 0($s5)
	sne $s5, $s5, 0
	beq $zero, $s5, L396
	lw $t9, var_8
	lw $t9, var_7
	mul $s5, $s0, 4
	add $s5, $t9, $s5
	lw $s5, 0($s5)
	mul $s5, $s5, 2
	lw $t9, var_7
	mul $t6, $s2, 4
	add $t6, $t9, $t6
	lw $t6, 0($t6)
	sub $s5, $s5, $t6
	mul $s5, $s5, 4
	add $s5, $t9, $s5
	lw $s5, 0($s5)
	move $a0, $s3
	move $a1, $s0
	move $a2, $s5
	sw $s2, 4($sp)
	sw $s0, 8($sp)
	jal f_getResult
	lw $s2, 4($sp)
	lw $s0, 8($sp)
	move $s3, $v0
	add $s3, $s3, 1
	lw $s5, var_10
	mul $t6, $s2, 4
	add $s5, $s5, $t6
	lw $s5, 0($s5)
	mul $t6, $s0, 4
	add $s5, $s5, $t6
	sw $s3, 0($s5)
	b L397
L396:
L397:
	b L395
L394:
L395:
	b L393
L392:
L393:
	lw $s5, var_10
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	mul $s5, $s0, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	seq $s3, $s3, -1
	beq $zero, $s3, L398
	lw $s5, var_10
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	mul $s5, $s0, 4
	add $s3, $s3, $s5
	li $s5, 1
	sw $s5, 0($s3)
	b L399
L398:
L399:
	lw $s5, var_10
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	mul $s5, $s0, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	move $v0, $s3
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	li $a0, 4008
	li $v0, 9
	syscall
	li $s3, 1001
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t6, $s3
	sw $t6, var_6
	li $a0, 684
	li $v0, 9
	syscall
	li $s3, 170
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t9, $s3
	sw $t9, var_7
	li $a0, 4008
	li $v0, 9
	syscall
	li $s3, 1001
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t9, $s3
	sw $t9, var_8
	li $a0, 8
	li $v0, 9
	syscall
	li $s3, 1
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t6, $s3
	sw $t6, var_9
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s3, 170
	move $a0, $s3
	jal f_origin
	li $s3, 1000
	sw $s3, var_0
	li $v0, 5
	syscall
	move $s3, $v0
	sw $s3, var_1
	li $s3, 0
	sw $s3, var_4
	li $s3, 0
	sw $s3, var_5
	lw $t6, var_9
	la $s3, 0($t6)
	li $s5, 0
	sw $s5, 0($s3)
	li $s2, 0
	sw $s2, var_2
L402:
	lw $s2, var_2
	lw $s3, var_0
	add $s3, $s3, 1
	slt $s3, $s2, $s3
	beq $zero, $s3, L403
	lw $t6, var_6
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $t6, $s3
	li $s5, 1
	sw $s5, 0($s3)
	lw $t9, var_8
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $t9, $s3
	li $s5, 0
	sw $s5, 0($s3)
L404:
	lw $s2, var_2
	add $s3, $s2, 1
	move $s2, $s3
	sw $s2, var_2
	b L402
L403:
	li $s2, 0
	sw $s2, var_2
L405:
	lw $s2, var_2
	lw $s3, var_1
	add $s3, $s3, 1
	slt $s3, $s2, $s3
	beq $zero, $s3, L406
	lw $t9, var_7
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $t9, $s3
	li $s5, 0
	sw $s5, 0($s3)
L407:
	lw $s2, var_2
	add $s3, $s2, 1
	move $s2, $s3
	sw $s2, var_2
	b L405
L406:
	li $s2, 0
	sw $s2, var_2
L408:
	lw $s2, var_2
	lw $s3, var_1
	sle $s3, $s2, $s3
	beq $zero, $s3, L409
	li $s5, 0
	sw $s5, var_3
L411:
	lw $s5, var_3
	lw $s3, var_1
	sle $s3, $s5, $s3
	beq $zero, $s3, L412
	lw $s5, var_10
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	li $s5, -1
	sw $s5, 0($s3)
L413:
	lw $s5, var_3
	add $s3, $s5, 1
	move $s5, $s3
	sw $s5, var_3
	b L411
L412:
L410:
	lw $s2, var_2
	add $s3, $s2, 1
	move $s2, $s3
	sw $s2, var_2
	b L408
L409:
	lw $s3, var_0
	move $a0, $s3
	jal f_getPrime
	lw $t6, var_9
	la $s3, 0($t6)
	lw $s3, 0($s3)
	sw $s3, var_4
	li $s2, 1
	sw $s2, var_2
L414:
	lw $s2, var_2
	lw $s3, var_4
	slt $s3, $s2, $s3
	beq $zero, $s3, L415
	lw $s2, var_2
	add $s3, $s2, 1
	move $s5, $s3
	sw $s5, var_3
L417:
	lw $s5, var_3
	lw $s3, var_4
	sle $s3, $s5, $s3
	beq $zero, $s3, L418
	lw $s5, var_10
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	seq $s3, $s3, -1
	beq $zero, $s3, L420
	lw $s3, var_0
	lw $s2, var_2
	lw $s5, var_3
	move $a0, $s3
	move $a1, $s2
	move $a2, $s5
	jal f_getResult
	move $s3, $v0
	lw $s5, var_10
	lw $s2, var_2
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s2, 0($s5)
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	sw $s3, 0($s5)
	lw $s5, var_10
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $s5, $s3
	lw $s3, 0($s3)
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	sgt $s3, $s3, 1
	beq $zero, $s3, L422
	lw $t9, var_7
	lw $s2, var_2
	mul $s3, $s2, 4
	add $s3, $t9, $s3
	lw $s3, 0($s3)
	lw $t9, var_7
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s5, $t9, $s5
	lw $t6, 0($s5)
	lw $s5, var_10
	lw $s2, var_2
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s2, 0($s5)
	lw $s5, var_3
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	lw $s5, 0($s5)
	move $a0, $s3
	move $a1, $t6
	move $a2, $s5
	jal f_printF
	lw $s3, var_5
	add $s3, $s3, 1
	sw $s3, var_5
	b L423
L422:
L423:
	b L421
L420:
L421:
L419:
	lw $s5, var_3
	add $s3, $s5, 1
	move $s5, $s3
	sw $s5, var_3
	b L417
L418:
L416:
	lw $s2, var_2
	add $s3, $s2, 1
	move $s2, $s3
	sw $s2, var_2
	b L414
L415:
	la $a0, msg_2
	li $v0, 4
	syscall
	lw $s3, var_5
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
f_printF:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	move $s3, $a0
	move $s5, $a1
	move $s2, $a2
	move $a0, $s3
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	sw $s2, 12($sp)
	jal f_toString
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	lw $s2, 12($sp)
	move $t6, $v0
	move $a0, $t6
	li $v0, 4
	syscall
L400:
	sgt $t6, $s2, 0
	beq $zero, $t6, L401
	la $a0, msg_0
	li $v0, 4
	syscall
	move $a0, $s5
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	sw $s2, 12($sp)
	jal f_toString
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	lw $s2, 12($sp)
	move $t6, $v0
	move $a0, $t6
	li $v0, 4
	syscall
	mul $s5, $s5, 2
	sub $s5, $s5, $s3
	add $s3, $s3, $s5
	div $s3, $s3, 2
	sub $s2, $s2, 1
	b L400
L401:
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
