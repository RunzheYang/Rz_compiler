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
	move $t0, $a0
	mul $t0, $t0, 237
	lw $s0, var_0
	rem $t0, $t0, $s0
	move $v0, $t0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_get:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t0, $a0
	lw $s0, var_1
	move $a0, $t0
	sw $s0, 4($sp)
	sw $t0, 8($sp)
	jal f_getHash
	lw $s0, 4($sp)
	lw $t0, 8($sp)
	mul $t4, $v0, 4
	add $s0, $s0, $t4
	lw $s0, 0($s0)
L117:
	la $t4, 0($s0)
	lw $t4, 0($t4)
	sne $t4, $t4, $t0
	beq $zero, $t4, L118
	la $s0, 8($s0)
	lw $s0, 0($s0)
	b L117
L118:
	la $t0, 4($s0)
	lw $t0, 0($t0)
	move $v0, $t0
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $a0, 400
	li $v0, 9
	syscall
	move $s0, $v0
	sw $s0, var_1
	li $t0, 0
L119:
	lw $s0, var_0
	slt $s0, $t0, $s0
	beq $zero, $s0, L120
	lw $s0, var_1
	mul $t4, $t0, 4
	add $s0, $s0, $t4
	li $t4, 0
	sw $t4, 0($s0)
L121:
	add $t0, $t0, 1
	b L119
L120:
	li $t0, 0
L122:
	slt $s0, $t0, 1000
	beq $zero, $s0, L123
	move $a0, $t0
	move $a1, $t0
	sw $t0, 4($sp)
	jal f_put
	lw $t0, 4($sp)
L124:
	add $t0, $t0, 1
	b L122
L123:
	li $t0, 0
L125:
	slt $s0, $t0, 1000
	beq $zero, $s0, L126
	move $a0, $t0
	sw $t0, 4($sp)
	jal f_toString
	lw $t0, 4($sp)
	move $a0, $v0
	sw $t0, 4($sp)
	jal f_stringConcatenate
	lw $t0, 4($sp)
	move $a0, $t0
	sw $t0, 4($sp)
	jal f_get
	lw $t0, 4($sp)
	move $a0, $v0
	sw $t0, 4($sp)
	jal f_toString
	lw $t0, 4($sp)
	la $a0, msg_1
	move $a1, $v0
	sw $t0, 4($sp)
	jal f_stringConcatenate
	lw $t0, 4($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L127:
	add $t0, $t0, 1
	b L125
L126:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 8
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
	move $t0, $a0
	move $t4, $a1
	move $a0, $t0
	sw $t0, 4($sp)
	sw $t4, 8($sp)
	jal f_getHash
	lw $t0, 4($sp)
	lw $t4, 8($sp)
	move $t9, $v0
	lw $s0, var_1
	mul $s4, $t9, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	seq $s0, $s0, 0
	beq $zero, $s0, L113
	li $a0, 12
	li $v0, 9
	syscall
	lw $s0, var_1
	mul $s4, $t9, 4
	add $s0, $s0, $s4
	move $s4, $v0
	sw $s4, 0($s0)
	lw $s0, var_1
	mul $s4, $t9, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	la $s0, 0($s0)
	sw $t0, 0($s0)
	lw $s0, var_1
	mul $t0, $t9, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	la $t0, 4($t0)
	move $s0, $t4
	sw $s0, 0($t0)
	lw $s0, var_1
	mul $t0, $t9, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	la $t0, 8($t0)
	li $s0, 0
	sw $s0, 0($t0)
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
L113:
	lw $s0, var_1
	mul $t9, $t9, 4
	add $s0, $s0, $t9
	lw $s0, 0($s0)
L114:
	la $t9, 0($s0)
	lw $t9, 0($t9)
	sne $t9, $t9, $t0
	beq $zero, $t9, L115
	la $t9, 8($s0)
	lw $t9, 0($t9)
	seq $t9, $t9, 0
	beq $zero, $t9, L116
	li $a0, 12
	li $v0, 9
	syscall
	la $t9, 8($s0)
	move $s4, $v0
	sw $s4, 0($t9)
	la $t9, 8($s0)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	move $s4, $t0
	sw $s4, 0($t9)
	la $t9, 8($s0)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	li $s4, 0
	sw $s4, 0($t9)
L116:
	la $s0, 8($s0)
	lw $s0, 0($s0)
	b L114
L115:
	la $t0, 4($s0)
	move $s0, $t4
	sw $s0, 0($t0)
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
