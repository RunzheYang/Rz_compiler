.data
.align 2
_buffer:	.space	256
	.word	2
msg_0:	.asciiz	" O"
	.word	2
msg_1:	.asciiz	" ."
	.word	1
msg_2:	.asciiz	"\n"
	.word	0
msg_3:	.asciiz	""
var_0:	.word	8
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
.text
f_printBoard:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s3, 0
L515:
	lw $s5, var_0
	slt $s5, $s3, $s5
	beq $zero, $s5, L516
	li $s2, 0
L518:
	lw $s5, var_0
	slt $s5, $s2, $s5
	beq $zero, $s5, L519
	lw $s5, var_2
	mul $t6, $s3, 4
	add $s5, $s5, $t6
	lw $s5, 0($s5)
	seq $s5, $s5, $s2
	beq $zero, $s5, L521
	la $a0, msg_0
	li $v0, 4
	syscall
	b L522
L521:
	la $a0, msg_1
	li $v0, 4
	syscall
L522:
L520:
	add $s2, $s2, 1
	b L518
L519:
	la $a0, msg_3
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
L517:
	add $s3, $s3, 1
	b L515
L516:
	la $a0, msg_3
	li $v0, 4
	syscall
	la $a0, msg_2
	li $v0, 4
	syscall
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_search:
	move $s3, $a0
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	lw $s5, var_0
	seq $s5, $s3, $s5
	beq $zero, $s5, L523
	jal f_printBoard
	b L524
L523:
	li $s2, 0
L525:
	lw $s5, var_0
	slt $s5, $s2, $s5
	beq $zero, $s5, L526
	lw $s5, var_1
	mul $t6, $s2, 4
	add $s5, $s5, $t6
	lw $s5, 0($s5)
	seq $s5, $s5, 0
	beq $zero, $s5, L528
	lw $t6, var_3
	la $t6, 0($t6)
	lw $t6, 0($t6)
	add $t9, $s2, $s3
	mul $t9, $t9, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	and $t9, $s5, $t6
	b L529
L528:
	li $t9, 0
L529:
	beq $zero, $t9, L530
	lw $t6, var_3
	la $s5, 4($t6)
	lw $t6, 0($s5)
	lw $s5, var_0
	add $s5, $s2, $s5
	sub $s5, $s5, 1
	sub $s5, $s5, $s3
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	lw $s5, 0($s5)
	seq $s5, $s5, 0
	and $s5, $t9, $s5
	b L531
L530:
	li $s5, 0
L531:
	beq $zero, $s5, L532
	lw $t6, var_3
	la $s5, 4($t6)
	lw $t6, 0($s5)
	lw $s5, var_0
	add $s5, $s2, $s5
	sub $s5, $s5, 1
	sub $s5, $s5, $s3
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	li $t9, 1
	sw $t9, 0($s5)
	lw $t6, var_3
	la $s5, 0($t6)
	lw $s5, 0($s5)
	add $t6, $s2, $s3
	mul $t6, $t6, 4
	add $s5, $s5, $t6
	move $t6, $t9
	sw $t6, 0($s5)
	lw $s5, var_1
	mul $t9, $s2, 4
	add $s5, $s5, $t9
	sw $t6, 0($s5)
	lw $s5, var_2
	mul $t6, $s3, 4
	add $s5, $s5, $t6
	move $t6, $s2
	sw $t6, 0($s5)
	add $s5, $s3, 1
	move $a0, $s5
	sw $s3, 4($sp)
	sw $s2, 8($sp)
	jal f_search
	lw $s3, 4($sp)
	lw $s2, 8($sp)
	lw $t6, var_3
	la $s5, 4($t6)
	lw $t6, 0($s5)
	lw $s5, var_0
	add $s5, $s2, $s5
	sub $s5, $s5, 1
	sub $s5, $s5, $s3
	mul $s5, $s5, 4
	add $s5, $t6, $s5
	li $t9, 0
	sw $t9, 0($s5)
	lw $t6, var_3
	la $s5, 0($t6)
	lw $s5, 0($s5)
	add $t6, $s2, $s3
	mul $t6, $t6, 4
	add $s5, $s5, $t6
	move $t6, $t9
	sw $t6, 0($s5)
	lw $s5, var_1
	mul $t9, $s2, 4
	add $s5, $s5, $t9
	sw $t6, 0($s5)
	b L533
L532:
L533:
L527:
	add $s2, $s2, 1
	b L525
L526:
L524:
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	li $a0, 36
	li $v0, 9
	syscall
	li $s3, 8
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_1
	li $a0, 36
	li $v0, 9
	syscall
	li $s3, 8
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_2
	li $a0, 12
	li $v0, 9
	syscall
	li $s3, 2
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_3
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $s5, 0
L534:
	slt $s3, $s5, 2
	beq $zero, $s3, L535
	li $a0, 64
	li $v0, 9
	syscall
	li $s3, 15
	sw $s3, 0($v0)
	add $s2, $v0, 4
	lw $s3, var_3
	mul $t6, $s5, 4
	add $s3, $s3, $t6
	sw $s2, 0($s3)
L536:
	add $s5, $s5, 1
	b L534
L535:
	li $s3, 0
	move $a0, $s3
	jal f_search
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
