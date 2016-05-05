.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	1
msg_1:	.asciiz	" "
var_0:	.word	100
var_1:	.word	0
.text
f_getHash:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t5, $a0
	mul $t5, $t5, 237
	lw $s2, var_0
	rem $t5, $t5, $s2
	move $v0, $t5
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_get:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t5, $a0
	lw $s2, var_1
	move $a0, $t5
	sw $s2, 4($sp)
	sw $t5, 8($sp)
	jal f_getHash
	lw $s2, 4($sp)
	lw $t5, 8($sp)
	move $s3, $v0
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	lw $s2, 0($s2)
L135:
	la $s3, 0($s2)
	lw $s3, 0($s3)
	sne $s3, $s3, $t5
	beq $zero, $s3, L136
	la $s2, 8($s2)
	lw $s2, 0($s2)
	b L135
L136:
	la $t5, 4($s2)
	lw $t5, 0($t5)
	move $v0, $t5
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	li $a0, 400
	li $v0, 9
	syscall
	move $s2, $v0
	sw $s2, var_1
	li $t5, 0
L137:
	lw $s2, var_0
	slt $s2, $t5, $s2
	beq $zero, $s2, L138
	lw $s2, var_1
	mul $s3, $t5, 4
	add $s2, $s2, $s3
	li $s3, 0
	sw $s3, 0($s2)
L139:
	add $t5, $t5, 1
	b L137
L138:
	li $t5, 0
L140:
	slt $s2, $t5, 1000
	beq $zero, $s2, L141
	move $a0, $t5
	move $a1, $t5
	sw $t5, 4($sp)
	jal f_put
	lw $t5, 4($sp)
L142:
	add $t5, $t5, 1
	b L140
L141:
	li $t5, 0
L143:
	slt $s2, $t5, 1000
	beq $zero, $s2, L144
	move $a0, $t5
	sw $t5, 4($sp)
	jal f_toString
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	la $a1, msg_1
	sw $t5, 4($sp)
	jal f_stringConcatenate
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $t5
	sw $s2, 8($sp)
	sw $t5, 4($sp)
	jal f_get
	lw $s2, 8($sp)
	lw $t5, 4($sp)
	move $s3, $v0
	move $a0, $s3
	sw $s2, 8($sp)
	sw $t5, 4($sp)
	jal f_toString
	lw $s2, 8($sp)
	lw $t5, 4($sp)
	move $s3, $v0
	move $a0, $s2
	move $a1, $s3
	sw $t5, 4($sp)
	jal f_stringConcatenate
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L145:
	add $t5, $t5, 1
	b L143
L144:
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
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t5, $a0
	move $s3, $a1
	move $a0, $t5
	sw $t5, 4($sp)
	sw $s3, 8($sp)
	jal f_getHash
	lw $t5, 4($sp)
	lw $s3, 8($sp)
	move $s2, $v0
	move $t6, $s2
	lw $s2, var_1
	mul $s4, $t6, 4
	add $s2, $s2, $s4
	lw $s2, 0($s2)
	seq $s2, $s2, 0
	beq $zero, $s2, L129
	li $a0, 12
	li $v0, 9
	syscall
	lw $s2, var_1
	mul $s4, $t6, 4
	add $s2, $s2, $s4
	move $s4, $v0
	sw $s4, 0($s2)
	lw $s2, var_1
	mul $s4, $t6, 4
	add $s2, $s2, $s4
	lw $s2, 0($s2)
	la $s2, 0($s2)
	sw $t5, 0($s2)
	lw $s2, var_1
	mul $t5, $t6, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	la $t5, 4($t5)
	move $s2, $s3
	sw $s2, 0($t5)
	lw $s2, var_1
	mul $t5, $t6, 4
	add $t5, $s2, $t5
	lw $t5, 0($t5)
	la $t5, 8($t5)
	li $s2, 0
	sw $s2, 0($t5)
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	b L130
L129:
L130:
	lw $s2, var_1
	mul $t6, $t6, 4
	add $s2, $s2, $t6
	lw $s2, 0($s2)
L131:
	la $t6, 0($s2)
	lw $t6, 0($t6)
	sne $t6, $t6, $t5
	beq $zero, $t6, L132
	la $t6, 8($s2)
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	beq $zero, $t6, L133
	li $a0, 12
	li $v0, 9
	syscall
	la $t6, 8($s2)
	move $s4, $v0
	sw $s4, 0($t6)
	la $t6, 8($s2)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	move $s4, $t5
	sw $s4, 0($t6)
	la $t6, 8($s2)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	li $s4, 0
	sw $s4, 0($t6)
	b L134
L133:
L134:
	la $s2, 8($s2)
	lw $s2, 0($s2)
	b L131
L132:
	la $t5, 4($s2)
	move $s2, $s3
	sw $s2, 0($t5)
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
