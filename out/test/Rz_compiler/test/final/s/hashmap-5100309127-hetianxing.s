.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	"\n"
	.word	1
msg_1:	.asciiz	" "
var_0:	.word	100
var_1:	.word	0
.text
f_getHash:
	move $s3, $a0
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	mul $s3, $s3, 237
	lw $s5, var_0
	rem $s3, $s3, $s5
	move $v0, $s3
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_get:
	move $s3, $a0
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	lw $s5, var_1
	move $a0, $s3
	sw $s5, var_1
	sw $s3, 4($sp)
	jal f_getHash
	lw $s5, var_1
	lw $s3, 4($sp)
	move $s2, $v0
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s5, 0($s5)
L140:
	la $s2, 0($s5)
	lw $s2, 0($s2)
	sne $s2, $s2, $s3
	beq $zero, $s2, L141
	la $s5, 8($s5)
	lw $s5, 0($s5)
	b L140
L141:
	la $s3, 4($s5)
	lw $s3, 0($s3)
	move $v0, $s3
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
main:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	li $a0, 404
	li $v0, 9
	syscall
	li $s3, 100
	sw $s3, 0($v0)
	add $s3, $v0, 4
	sw $s3, var_1
	li $s5, 0
L142:
	lw $s3, var_0
	slt $s3, $s5, $s3
	beq $zero, $s3, L143
	lw $s3, var_1
	mul $s2, $s5, 4
	add $s3, $s3, $s2
	li $s2, 0
	sw $s2, 0($s3)
L144:
	add $s5, $s5, 1
	b L142
L143:
	li $s5, 0
L145:
	slt $s3, $s5, 1000
	beq $zero, $s3, L146
	move $a0, $s5
	move $a1, $s5
	sw $s5, 4($sp)
	jal f_put
	lw $s5, 4($sp)
L147:
	add $s5, $s5, 1
	b L145
L146:
	li $s5, 0
L148:
	slt $s3, $s5, 1000
	beq $zero, $s3, L149
	move $a0, $s5
	sw $s5, 4($sp)
	jal f_toString
	lw $s5, 4($sp)
	move $s3, $v0
	move $a0, $s3
	la $a1, msg_1
	sw $s5, 4($sp)
	jal f_str.stringConcatenate
	lw $s5, 4($sp)
	move $s3, $v0
	move $a0, $s5
	sw $s3, 8($sp)
	sw $s5, 4($sp)
	jal f_get
	lw $s3, 8($sp)
	lw $s5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	sw $s3, 8($sp)
	sw $s5, 4($sp)
	jal f_toString
	lw $s3, 8($sp)
	lw $s5, 4($sp)
	move $s2, $v0
	move $a0, $s3
	move $a1, $s2
	sw $s5, 4($sp)
	jal f_str.stringConcatenate
	lw $s5, 4($sp)
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L150:
	add $s5, $s5, 1
	b L148
L149:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	b main_end
main_end:
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
f_put:
	move $s3, $a0
	move $s5, $a1
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $a0, $s3
	sw $s3, 4($sp)
	sw $s5, 8($sp)
	jal f_getHash
	lw $s3, 4($sp)
	lw $s5, 8($sp)
	move $s2, $v0
	lw $t6, var_1
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	beq $zero, $t6, L134
	li $a0, 12
	li $v0, 9
	syscall
	lw $t6, var_1
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	move $t9, $v0
	sw $t9, 0($t6)
	lw $t6, var_1
	mul $t9, $s2, 4
	add $t6, $t6, $t9
	lw $t6, 0($t6)
	la $t6, 0($t6)
	sw $s3, 0($t6)
	lw $t6, var_1
	mul $s3, $s2, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	la $s3, 4($s3)
	sw $s5, 0($s3)
	lw $t6, var_1
	mul $s3, $s2, 4
	add $s3, $t6, $s3
	lw $s3, 0($s3)
	la $s3, 8($s3)
	li $s5, 0
	sw $s5, 0($s3)
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	b L135
L134:
L135:
	lw $t6, var_1
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	lw $s2, 0($s2)
L136:
	la $t6, 0($s2)
	lw $t6, 0($t6)
	sne $t6, $t6, $s3
	beq $zero, $t6, L137
	la $t6, 8($s2)
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	beq $zero, $t6, L138
	li $a0, 12
	li $v0, 9
	syscall
	la $t6, 8($s2)
	move $t9, $v0
	sw $t9, 0($t6)
	la $t6, 8($s2)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	move $t9, $s3
	sw $t9, 0($t6)
	la $t6, 8($s2)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	li $t9, 0
	sw $t9, 0($t6)
	b L139
L138:
L139:
	la $s2, 8($s2)
	lw $s2, 0($s2)
	b L136
L137:
	la $s3, 4($s2)
	sw $s5, 0($s3)
	lw $ra, 0($sp)
	add $sp, $sp, 12
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
