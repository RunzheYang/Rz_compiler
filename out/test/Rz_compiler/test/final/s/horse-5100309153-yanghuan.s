.data
.align 2
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
.text
f_origin:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	move $s0, $v0
	sw $s0, var_13
	li $t4, 0
	sw $t4, var_14
L147:
	lw $t4, var_14
	slt $s0, $t4, $t0
	beq $zero, $s0, L148
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	lw $s0, var_13
	lw $t4, var_14
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	move $t4, $v0
	sw $t4, 0($s0)
	li $s0, 0
	sw $s0, var_15
L150:
	lw $s0, var_15
	slt $s0, $s0, $t0
	beq $zero, $s0, L151
	lw $s0, var_13
	lw $t4, var_14
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	lw $t4, 0($s0)
	lw $s0, var_15
	mul $s0, $s0, 4
	add $s0, $t4, $s0
	li $t4, 0
	sw $t4, 0($s0)
L152:
	lw $s0, var_15
	add $s0, $s0, 1
	sw $s0, var_15
	b L150
L151:
L149:
	lw $t4, var_14
	add $t4, $t4, 1
	sw $t4, var_14
	b L147
L148:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_addList:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t0, $a0
	move $t4, $a1
	move $a0, $t0
	lw $s0, var_0
	move $a1, $s0
	sw $t0, 4($sp)
	sw $t4, 8($sp)
	jal f_check
	lw $t0, 4($sp)
	lw $t4, 8($sp)
	beq $zero, $v0, L154
	move $a0, $t4
	lw $s0, var_0
	move $a1, $s0
	sw $t0, 4($sp)
	sw $t4, 8($sp)
	jal f_check
	lw $t0, 4($sp)
	lw $t4, 8($sp)
	and $t9, $v0, $v0
L154:
	beq $zero, $t9, L155
	lw $s0, var_13
	mul $s4, $t0, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	mul $s4, $t4, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	seq $s0, $s0, -1
	and $s4, $t9, $s0
L155:
	beq $zero, $s4, L156
	lw $s0, var_10
	add $s0, $s0, 1
	sw $s0, var_10
	lw $t9, var_8
	lw $s0, var_10
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	move $t9, $t0
	sw $t9, 0($s0)
	lw $t9, var_9
	lw $s0, var_10
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	move $t9, $t4
	sw $t9, 0($s0)
	lw $s0, var_12
	add $t9, $s0, 1
	lw $s0, var_13
	mul $s4, $t0, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	mul $s4, $t4, 4
	add $s0, $s0, $s4
	sw $t9, 0($s0)
	lw $s0, var_4
	seq $t0, $t0, $s0
	beq $zero, $t0, L157
	lw $s0, var_5
	seq $s0, $t4, $s0
	and $t2, $t0, $s0
L157:
	beq $zero, $t2, L158
	li $t0, 1
	sw $t0, var_11
L158:
L156:
	lw $ra, 0($sp)
	add $sp, $sp, 12
	jr $ra
main:
	li $a0, 48000
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_8
	li $a0, 48000
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_9
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 106
	jal f_origin
	li $v0, 5
	syscall
	move $s0, $v0
	sw $s0, var_0
	lw $s0, var_0
	sub $t0, $s0, 1
	move $s0, $t0
	sw $s0, var_5
	sw $s0, var_4
	li $t4, 0
	sw $t4, var_14
L159:
	lw $t4, var_14
	lw $s0, var_0
	slt $t0, $t4, $s0
	beq $zero, $t0, L160
	li $s0, 0
	sw $s0, var_15
L162:
	lw $s0, var_15
	lw $s0, var_0
	slt $t0, $s0, $s0
	beq $zero, $t0, L163
	lw $s0, var_13
	lw $t4, var_14
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_15
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	li $s0, -1
	sw $s0, 0($t0)
L164:
	lw $s0, var_15
	add $s0, $s0, 1
	sw $s0, var_15
	b L162
L163:
L161:
	lw $t4, var_14
	add $t4, $t4, 1
	sw $t4, var_14
	b L159
L160:
L165:
	lw $t0, var_1
	lw $s0, var_10
	sle $t0, $t0, $s0
	beq $zero, $t0, L166
	lw $t9, var_8
	lw $t0, var_1
	mul $t0, $t0, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	sw $t0, var_6
	lw $t9, var_9
	lw $t0, var_1
	mul $t0, $t0, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	sw $t0, var_7
	lw $s0, var_13
	lw $t0, var_6
	mul $t0, $t0, 4
	add $t0, $s0, $t0
	lw $s0, 0($t0)
	lw $t0, var_7
	mul $t0, $t0, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	move $s0, $t0
	sw $s0, var_12
	lw $t0, var_6
	sub $t0, $t0, 1
	move $a0, $t0
	lw $t0, var_7
	sub $t0, $t0, 2
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	sub $t0, $t0, 1
	move $a0, $t0
	lw $t0, var_7
	add $t0, $t0, 2
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	add $t0, $t0, 1
	move $a0, $t0
	lw $t0, var_7
	sub $t0, $t0, 2
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	add $t0, $t0, 1
	move $a0, $t0
	lw $t0, var_7
	add $t0, $t0, 2
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	sub $t0, $t0, 2
	move $a0, $t0
	lw $t0, var_7
	sub $t0, $t0, 1
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	sub $t0, $t0, 2
	move $a0, $t0
	lw $t0, var_7
	add $t0, $t0, 1
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	add $t0, $t0, 2
	move $a0, $t0
	lw $t0, var_7
	sub $t0, $t0, 1
	move $a1, $t0
	jal f_addList
	lw $t0, var_6
	add $t0, $t0, 2
	move $a0, $t0
	lw $t0, var_7
	add $t0, $t0, 1
	move $a1, $t0
	jal f_addList
	lw $t0, var_11
	seq $t0, $t0, 1
	beq $zero, $t0, L167
	b L166
L167:
	lw $t0, var_1
	add $t0, $t0, 1
	sw $t0, var_1
	b L165
L166:
	lw $t0, var_11
	seq $t0, $t0, 1
	beq $zero, $t0, L168
	lw $s0, var_13
	lw $s0, var_4
	mul $t0, $s0, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_5
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	move $a0, $t0
	jal f_toString
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L168:
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
f_check:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $a1
	slt $s0, $t0, $s0
	beq $zero, $s0, L153
	sge $t0, $t0, 0
	and $t4, $s0, $t0
L153:
	move $v0, $t4
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
