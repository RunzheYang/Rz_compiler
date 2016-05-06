	.data
	.word 1
_static_190:
	.asciiz "\n"
	.align 2
	.word 3
_static_191:
	.asciiz "bad"
	.align 2
	.word 4
_static_192:
	.asciiz "good"
	.align 2
	.data
_buffer:
	.word 0
	.text
_buffer_init:
	li $a0, 256
	li $v0, 9
	syscall
	sw $v0, _buffer
	jr $ra
	.text
main:
	jal _buffer_init
	add $fp, $zero, $sp
	jal _func_main
	move $a0, $v0
	li $v0, 17
	syscall
_func_____built_in_string_less:
	sw $fp, -216($sp)
	add $fp, $sp, -4
	add $sp, $fp, -220
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	move $11, $10
	lw $12, -4($fp)
	sub $13, $12, 4
	lw $14, 0($13)
	sgt $15, $11, $14
	sw $9, -24($fp)
	sw $10, -28($fp)
	sw $11, -8($fp)
	sw $13, -32($fp)
	sw $14, -36($fp)
	sw $15, -40($fp)
	beqz $15, _end_if_318
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	move $11, $10
	sw $9, -44($fp)
	sw $10, -48($fp)
	sw $11, -8($fp)
_end_if_318:
	nop
	li $8, 0
	move $9, $8
	sw $9, -12($fp)
_begin_loop_230:
	lw $8, -12($fp)
	lw $9, -8($fp)
	slt $10, $8, $9
	sw $10, -56($fp)
	beqz $10, _end_loop_230
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	move $12, $11
	lw $13, -4($fp)
	add $14, $13, $9
	lb $15, 0($14)
	move $16, $15
	sne $17, $12, $16
	sw $9, -12($fp)
	sw $10, -60($fp)
	sw $11, -64($fp)
	sw $12, -16($fp)
	sw $14, -68($fp)
	sw $15, -72($fp)
	sw $16, -20($fp)
	sw $17, -76($fp)
	beqz $17, _end_if_319
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -80($fp)
	b _end_func_____built_in_string_less
_end_if_319:
	nop
_continue_loop230:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_230
_end_loop_230:
	nop
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -8($fp)
	slt $12, $11, $10
	move $v0, $12
	sw $9, -84($fp)
	sw $10, -88($fp)
	sw $12, -92($fp)
	b _end_func_____built_in_string_less
_end_func_____built_in_string_less:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -212($fp)
	jr $ra

_func_____built_in_string_equal:
	sw $fp, -192($sp)
	add $fp, $sp, -4
	add $sp, $fp, -196
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sne $14, $10, $13
	sw $9, -16($fp)
	sw $10, -20($fp)
	sw $12, -24($fp)
	sw $13, -28($fp)
	sw $14, -32($fp)
	beqz $14, _end_if_320
	li $8, 0
	move $v0, $8
	b _end_func_____built_in_string_equal
_end_if_320:
	nop
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	move $11, $10
	li $12, 0
	move $13, $12
	sw $9, -36($fp)
	sw $10, -40($fp)
	sw $11, -12($fp)
	sw $13, -8($fp)
_begin_loop_231:
	lw $8, -8($fp)
	lw $9, -12($fp)
	slt $10, $8, $9
	sw $10, -48($fp)
	beqz $10, _end_loop_231
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sne $15, $11, $14
	sw $9, -8($fp)
	sw $10, -52($fp)
	sw $11, -56($fp)
	sw $13, -60($fp)
	sw $14, -64($fp)
	sw $15, -68($fp)
	beqz $15, _end_if_321
	li $8, 0
	move $v0, $8
	b _end_func_____built_in_string_equal
_end_if_321:
	nop
_continue_loop231:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_231
_end_loop_231:
	nop
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_equal
_end_func_____built_in_string_equal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -188($fp)
	jr $ra

_func_____built_in_string_inequal:
	sw $fp, -192($sp)
	add $fp, $sp, -4
	add $sp, $fp, -196
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sne $14, $10, $13
	sw $9, -16($fp)
	sw $10, -20($fp)
	sw $12, -24($fp)
	sw $13, -28($fp)
	sw $14, -32($fp)
	beqz $14, _end_if_322
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_322:
	nop
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	move $11, $10
	li $12, 0
	move $13, $12
	sw $9, -36($fp)
	sw $10, -40($fp)
	sw $11, -12($fp)
	sw $13, -8($fp)
_begin_loop_232:
	lw $8, -8($fp)
	lw $9, -12($fp)
	slt $10, $8, $9
	sw $10, -48($fp)
	beqz $10, _end_loop_232
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sne $15, $11, $14
	sw $9, -8($fp)
	sw $10, -52($fp)
	sw $11, -56($fp)
	sw $13, -60($fp)
	sw $14, -64($fp)
	sw $15, -68($fp)
	beqz $15, _end_if_323
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_323:
	nop
_continue_loop232:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_232
_end_loop_232:
	nop
	li $8, 0
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_func_____built_in_string_inequal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -188($fp)
	jr $ra

_func_____built_in_string_greater:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)

	lw $8, -4($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_____built_in_string_less
	sw $v0, -8($fp)
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_____built_in_string_greater
_end_func_____built_in_string_greater:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_string_less_equal:
	sw $fp, -224($sp)
	add $fp, $sp, -4
	add $sp, $fp, -228
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	move $11, $10
	lw $12, -4($fp)
	sub $13, $12, 4
	lw $14, 0($13)
	sgt $15, $11, $14
	sw $9, -24($fp)
	sw $10, -28($fp)
	sw $11, -8($fp)
	sw $13, -32($fp)
	sw $14, -36($fp)
	sw $15, -40($fp)
	beqz $15, _end_if_324
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	move $11, $10
	sw $9, -44($fp)
	sw $10, -48($fp)
	sw $11, -8($fp)
_end_if_324:
	nop
	li $8, 0
	move $9, $8
	sw $9, -12($fp)
_begin_loop_233:
	lw $8, -12($fp)
	lw $9, -8($fp)
	slt $10, $8, $9
	sw $10, -56($fp)
	beqz $10, _end_loop_233
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	move $12, $11
	lw $13, -4($fp)
	add $14, $13, $9
	lb $15, 0($14)
	move $16, $15
	sne $17, $12, $16
	sw $9, -12($fp)
	sw $10, -60($fp)
	sw $11, -64($fp)
	sw $12, -16($fp)
	sw $14, -68($fp)
	sw $15, -72($fp)
	sw $16, -20($fp)
	sw $17, -76($fp)
	beqz $17, _end_if_325
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_325:
	nop
_continue_loop233:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_233
_end_loop_233:
	nop
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sle $14, $10, $13
	move $v0, $14
	sw $9, -84($fp)
	sw $10, -88($fp)
	sw $12, -92($fp)
	sw $13, -96($fp)
	sw $14, -100($fp)
	b _end_func_____built_in_string_less_equal
_end_func_____built_in_string_less_equal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -220($fp)
	jr $ra

_func_____built_in_string_greater_equal:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)

	lw $8, -4($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_____built_in_string_less_equal
	sw $v0, -8($fp)
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_____built_in_string_greater_equal
_end_func_____built_in_string_greater_equal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_println:
	sw $fp, -128($sp)
	add $fp, $sp, -4
	add $sp, $fp, -132
	sw $ra, 0($sp)

	lw $8, 0($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_190
	move $9, $8
	li $v0, 4
	move $a0, $9
	sw $9, -4($fp)
	syscall
_end_func_____built_in_println:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_main:
	sw $fp, -176($sp)
	add $fp, $sp, -4
	add $sp, $fp, -180
	sw $ra, 0($sp)
	li $8, 4
	move $9, $8
	li $10, 5
	move $11, $10
	seq $12, $9, $11
	xor $13, $12, 1#!!!!
	sw $9, 0($fp)
	sw $11, -4($fp)
	sw $12, -20($fp)
	sw $13, -24($fp)
	beqz $13, _else_326
	la $8, _static_192
	move $9, $8
	li $v0, 4
	move $a0, $9
	sw $9, -32($fp)
	syscall

	la $8, _static_190
	li $v0, 4
	move $a0, $8

	syscall
	b _end_if_326
_else_326:
	la $8, _static_191
	move $9, $8
	li $v0, 4
	move $a0, $9
	sw $9, -28($fp)
	syscall

	la $8, _static_190
	li $v0, 4
	move $a0, $8

	syscall
_end_if_326:
	nop
	li $8, 0
	move $9, $8
	xor $10, $9, 1#!!!!
	sw $10, -4($sp)
	sw $9, -8($fp)
	sw $10, -44($fp)
jal _func_____built_in_toString
	sw $v0, -48($fp)

	lw $8, -48($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_190
	li $v0, 4
	move $a0, $8

	syscall
	li $8, 0
	move $v0, $8
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -172($fp)
	jr $ra

	.text
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

# string arg in $a0, left in $a1, right in $a2
###### Checked ######
# used $a0, $a1, $t0, $t1, $t2, $t3, $t4, $v0,
_func_____built_in_substring:
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	lw $a2, -12($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	move $t0, $a0

	sub $t1, $a2, $a1
	add $t1, $t1, 1		# $t1 is the length of the substring
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4

	add $a0, $t0, $a1
	add $t2, $t0, $a2
	lb $t3, 1($t2)		# store the ori_begin + right + 1 char in $t3
	sb $zero, 1($t2)	# change it to 0 for the convenience of copying
	move $a1, $v0
	move $t4, $v0
	jal _string_copy
	move $v0, $t4
	sb $t3, 1($t2)

	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

# count the length of given string in $a0
###### Checked ######
# used $v0, $v1, $a0
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

# non arg, string in $v0
###### Checked ######
# used $a0, $a1, $v0, $t0
_func_____built_in_getString:
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	lw $a0, _buffer
	li $a1, 255
	li $v0, 8
	syscall

	jal _count_string_length

	move $a1, $v0			# now $a1 contains the length of the string
	add $a0, $v0, 5			# total required space = length + 1('\0') + 1 word(record the length of the string)
	li $v0, 9
	syscall
	sw $a1, 0($v0)
	add $v0, $v0, 4
	lw $a0, _buffer
	move $a1, $v0
	move $t0, $v0
	jal _string_copy
	move $v0, $t0

	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

# string arg in $a0
###### Checked ######
# used $t0, $t1, $t2, $v0
_func_____built_in_parseInt:
	lw $a0, -4($sp)
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

# string1 in $a0, string2 in $a1
###### Checked ######
# used $a0, $a1, $t0, $t1, $t2, $t3, $t4, $t5, $v0
_func_____built_in_string_concatenate:
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	move $t2, $a0
	move $t3, $a1

	lw $t0, -4($a0)		# $t0 is the length of lhs
	lw $t1, -4($a1)		# $t1 is the length of rhs
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
	# add $a1, $a1, 1
	jal _string_copy

	move $v0, $t4
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

_func_____built_in_toString:
	# subu $sp, $sp, 4
	# sw $ra, 0($sp)
	# first count the #digits
	lw $a0, -4($sp)
	li $t0, 0			# $t0 = 0 if the number is a negnum
	bgez $a0, _skip_set_less_than_zero
	li $t0, 1			# now $t0 must be 1
	neg $a0, $a0
	_skip_set_less_than_zero:
	beqz $a0, _set_zero

	li $t1, 0			# the #digits is in $t1
	move $t2, $a0
	move $t3, $a0
	li $t5, 10

	_begin_count_digit:
	div $t2, $t5
	mflo $v0			# get the quotient
	mfhi $v1			# get the remainder
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
	add $v1, $v1, 48	# in ascii 48 = '0'
	sb $v1, 0($t1)
	sub $t1, $t1, 1
	mflo $t3
	# bge $t1, $v0, _continue_toString
	bnez $t3, _continue_toString

	beqz $t0, _skip_place_neg
	li $v1, 45
	sb $v1, 0($t1)
	_skip_place_neg:
	# lw $ra, 0($sp)
	# addu $sp, $sp, 4
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
