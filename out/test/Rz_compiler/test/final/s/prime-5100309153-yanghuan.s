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
	move $s3, $a0
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s5, 2
	li $s2, 2
L475:
	sle $t6, $s2, $s3
	beq $zero, $t6, L476
	lw $t6, var_6
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	seq $t6, $t6, 1
	beq $zero, $t6, L478
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
	b L479
L478:
L479:
L480:
	mul $t6, $s2, $s5
	sle $t6, $t6, $s3
	beq $zero, $t6, L481
	lw $t6, var_6
	mul $t9, $s2, $s5
	mul $t9, $t9, 4
	add $t6, $t6, $t9
	li $t9, 0
	sw $t9, 0($t6)
	add $s5, $s5, 1
	b L480
L481:
	li $s5, 2
L477:
	add $s2, $s2, 1
	b L475
L476:
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
	sw $s5, var_10
	li $s2, 0
	sw $s2, var_2
L469:
	lw $s2, var_2
	slt $s5, $s2, $s3
	beq $zero, $s5, L470
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
L472:
	lw $s5, var_3
	slt $s5, $s5, $s3
	beq $zero, $s5, L473
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
L474:
	lw $s5, var_3
	add $s5, $s5, 1
	sw $s5, var_3
	b L472
L473:
L471:
	lw $s2, var_2
	add $s2, $s2, 1
	sw $s2, var_2
	b L469
L470:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_getResult:
	move $s3, $a0
	move $s5, $a1
	move $s2, $a2
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	lw $t6, var_10
	mul $t9, $s5, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	seq $t6, $t6, -1
	beq $zero, $t6, L482
	lw $t6, var_7
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t9, $t6, 2
	lw $t6, var_7
	mul $s0, $s5, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	sub $t6, $t9, $t6
	sle $t6, $t6, $s3
	beq $zero, $t6, L484
	lw $t9, var_6
	lw $t6, var_7
	mul $s0, $s2, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $t6, 2
	lw $t6, var_7
	mul $s7, $s5, 4
	add $t6, $t6, $s7
	lw $t6, 0($t6)
	sub $t6, $s0, $t6
	mul $t6, $t6, 4
	add $t6, $t9, $t6
	lw $t6, 0($t6)
	sne $t6, $t6, 0
	beq $zero, $t6, L486
	lw $t9, var_8
	lw $t6, var_7
	mul $s0, $s2, 4
	add $t6, $t6, $s0
	lw $t6, 0($t6)
	mul $s0, $t6, 2
	lw $t6, var_7
	mul $s7, $s5, 4
	add $t6, $t6, $s7
	lw $t6, 0($t6)
	sub $t6, $s0, $t6
	mul $t6, $t6, 4
	add $t6, $t9, $t6
	lw $t6, 0($t6)
	move $a0, $s3
	move $a1, $s2
	move $a2, $t6
	sw $s5, 4($sp)
	sw $s2, 8($sp)
	jal f_getResult
	lw $s5, 4($sp)
	lw $s2, 8($sp)
	move $s3, $v0
	add $s3, $s3, 1
	lw $t6, var_10
	mul $t9, $s5, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	sw $s3, 0($t6)
	b L487
L486:
L487:
	b L485
L484:
L485:
	b L483
L482:
L483:
	lw $t6, var_10
	mul $s3, $s5, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $t6, $s2, 4
	add $s3, $s3, $t6
	lw $s3, 0($s3)
	seq $s3, $s3, -1
	beq $zero, $s3, L488
	lw $t6, var_10
	mul $s3, $s5, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $t6, $s2, 4
	add $s3, $s3, $t6
	li $t6, 1
	sw $t6, 0($s3)
	b L489
L488:
L489:
	lw $t6, var_10
	mul $s3, $s5, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $s5, $s2, 4
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
	sw $s3, var_6
	li $a0, 684
	li $v0, 9
	syscall
	li $s3, 170
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_7
	li $a0, 4008
	li $v0, 9
	syscall
	li $s3, 1001
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_8
	li $a0, 8
	li $v0, 9
	syscall
	li $s3, 1
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_9
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
	lw $s3, var_9
	la $s3, 0($s3)
	li $s5, 0
	sw $s5, 0($s3)
	li $s5, 0
	sw $s5, var_2
L492:
	lw $s5, var_2
	lw $s3, var_0
	add $s3, $s3, 1
	slt $s3, $s5, $s3
	beq $zero, $s3, L493
	lw $s3, var_6
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	li $s5, 1
	sw $s5, 0($s3)
	lw $s3, var_8
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	li $s5, 0
	sw $s5, 0($s3)
L494:
	lw $s5, var_2
	add $s3, $s5, 1
	move $s5, $s3
	sw $s5, var_2
	b L492
L493:
	li $s5, 0
	sw $s5, var_2
L495:
	lw $s5, var_2
	lw $s3, var_1
	add $s3, $s3, 1
	slt $s3, $s5, $s3
	beq $zero, $s3, L496
	lw $s3, var_7
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	li $s5, 0
	sw $s5, 0($s3)
L497:
	lw $s5, var_2
	add $s3, $s5, 1
	move $s5, $s3
	sw $s5, var_2
	b L495
L496:
	li $s5, 0
	sw $s5, var_2
L498:
	lw $s5, var_2
	lw $s3, var_1
	sle $s3, $s5, $s3
	beq $zero, $s3, L499
	li $s2, 0
	sw $s2, var_3
L501:
	lw $s2, var_3
	lw $s3, var_1
	sle $s3, $s2, $s3
	beq $zero, $s3, L502
	lw $s3, var_10
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	lw $s2, var_3
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	li $s5, -1
	sw $s5, 0($s3)
L503:
	lw $s2, var_3
	add $s3, $s2, 1
	move $s2, $s3
	sw $s2, var_3
	b L501
L502:
L500:
	lw $s5, var_2
	add $s3, $s5, 1
	move $s5, $s3
	sw $s5, var_2
	b L498
L499:
	lw $s3, var_0
	move $a0, $s3
	jal f_getPrime
	lw $s3, var_9
	la $s3, 0($s3)
	lw $s3, 0($s3)
	sw $s3, var_4
	li $s5, 1
	sw $s5, var_2
L504:
	lw $s5, var_2
	lw $s3, var_4
	slt $s3, $s5, $s3
	beq $zero, $s3, L505
	lw $s5, var_2
	add $s3, $s5, 1
	move $s2, $s3
	sw $s2, var_3
L507:
	lw $s2, var_3
	lw $s3, var_4
	sle $s3, $s2, $s3
	beq $zero, $s3, L508
	lw $s3, var_10
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	lw $s2, var_3
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	seq $s3, $s3, -1
	beq $zero, $s3, L510
	lw $s3, var_0
	lw $s5, var_2
	lw $s2, var_3
	move $a0, $s3
	move $a1, $s5
	move $a2, $s2
	jal f_getResult
	move $t6, $v0
	lw $s3, var_10
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	lw $s2, var_3
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	move $s5, $t6
	sw $s5, 0($s3)
	lw $s3, var_10
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	lw $s2, var_3
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	sgt $s3, $s3, 1
	beq $zero, $s3, L512
	lw $s3, var_7
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $t6, 0($s3)
	lw $s3, var_7
	lw $s2, var_3
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	lw $t9, 0($s3)
	lw $s3, var_10
	lw $s5, var_2
	mul $s5, $s5, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	lw $s2, var_3
	mul $s5, $s2, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	move $a0, $t6
	move $a1, $t9
	move $a2, $s3
	jal f_printF
	lw $s3, var_5
	add $s3, $s3, 1
	sw $s3, var_5
	b L513
L512:
L513:
	b L511
L510:
L511:
L509:
	lw $s2, var_3
	add $s3, $s2, 1
	move $s2, $s3
	sw $s2, var_3
	b L507
L508:
L506:
	lw $s5, var_2
	add $s3, $s5, 1
	move $s5, $s3
	sw $s5, var_2
	b L504
L505:
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
	move $s3, $a0
	move $s5, $a1
	move $s2, $a2
	sub $sp, $sp, 16
	sw $ra, 0($sp)
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
L490:
	sgt $t6, $s2, 0
	beq $zero, $t6, L491
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
	b L490
L491:
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
