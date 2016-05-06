.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
.text
main:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $s3, $v0
	sw $s3, var_0
	lw $s3, var_0
	add $s3, $s3, 5
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_2
	li $s5, 0
L546:
	lw $s3, var_0
	sle $s3, $s5, $s3
	beq $zero, $s3, L547
	lw $s3, var_2
	move $s2, $s5
	add $s5, $s5, 1
	mul $s2, $s2, 4
	add $s3, $s3, $s2
	li $s2, 1
	sw $s2, 0($s3)
	b L546
L547:
	lw $s3, var_0
	add $s3, $s3, 5
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $s2, $s3
	lw $s3, var_0
	add $s3, $s3, 5
	mul $s5, $s3, 4
	add $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	sw $s3, 0($v0)
	add $s3, $v0, 4
	move $t6, $s3
	la $s3, 4($s2)
	li $s5, 1
	sw $s5, 0($s3)
	li $s5, 2
L548:
	lw $s3, var_0
	sgt $s3, $s5, $s3
	beq $zero, $s3, L551
	b L549
	b L552
L551:
L552:
	lw $s3, var_2
	mul $t9, $s5, 4
	add $s3, $s3, $t9
	lw $s3, 0($s3)
	beq $zero, $s3, L553
	lw $s3, var_1
	add $s3, $s3, 1
	sw $s3, var_1
	mul $s3, $s3, 4
	add $s3, $t6, $s3
	move $t9, $s5
	sw $t9, 0($s3)
	sub $s3, $s5, 1
	mul $t9, $s5, 4
	add $t9, $s2, $t9
	sw $s3, 0($t9)
	b L554
L553:
L554:
	move $t9, $s5
	li $s0, 1
L555:
	lw $s3, var_1
	sle $s7, $s0, $s3
	beq $zero, $s7, L556
	mul $s3, $s0, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $t0, $t9, $s3
	lw $s3, var_0
	sle $s3, $t0, $s3
	and $s3, $s7, $s3
	b L557
L556:
	li $s3, 0
L557:
	beq $zero, $s3, L558
	mul $s3, $s0, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	mul $s3, $t9, $s3
	move $s7, $s3
	lw $s3, var_0
	sgt $s3, $s7, $s3
	beq $zero, $s3, L560
	b L559
	b L561
L560:
L561:
	lw $s3, var_2
	mul $t0, $s7, 4
	add $s3, $s3, $t0
	li $t0, 0
	sw $t0, 0($s3)
	mul $s3, $s0, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	rem $s3, $t9, $s3
	seq $s3, $s3, 0
	beq $zero, $s3, L562
	mul $s3, $t9, 4
	add $s3, $s2, $s3
	lw $s3, 0($s3)
	mul $s0, $s0, 4
	add $s0, $t6, $s0
	lw $s0, 0($s0)
	mul $s3, $s3, $s0
	mul $s0, $s7, 4
	add $s0, $s2, $s0
	sw $s3, 0($s0)
	b L558
	b L563
L562:
	mul $s3, $t9, 4
	add $s3, $s2, $s3
	lw $s3, 0($s3)
	mul $s7, $s0, 4
	add $s7, $t6, $s7
	lw $s7, 0($s7)
	sub $s7, $s7, 1
	mul $s3, $s3, $s7
	mul $s7, $s0, 4
	add $s7, $t6, $s7
	lw $s7, 0($s7)
	mul $s7, $t9, $s7
	mul $s7, $s7, 4
	add $s7, $s2, $s7
	sw $s3, 0($s7)
L563:
L559:
	add $s0, $s0, 1
	b L555
L558:
	mul $s3, $t9, 4
	add $s3, $s2, $s3
	lw $s3, 0($s3)
	move $a0, $s3
	sw $s2, 4($sp)
	sw $s5, 8($sp)
	sw $t6, 12($sp)
	jal f_toString
	lw $s2, 4($sp)
	lw $s5, 8($sp)
	lw $t6, 12($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L550:
	add $s5, $s5, 1
	b L548
L549:
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
