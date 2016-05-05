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
var_16:	.word	0
var_17:	.word	0
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
	sw $s0, var_15
	li $t4, 0
	sw $t4, var_16
L226:
	lw $t4, var_16
	slt $s0, $t4, $t0
	beq $zero, $s0, L227
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	lw $s0, var_15
	lw $t4, var_16
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	move $t4, $v0
	sw $t4, 0($s0)
	li $s0, 0
	sw $s0, var_17
L229:
	lw $s0, var_17
	slt $s0, $s0, $t0
	beq $zero, $s0, L230
	lw $s0, var_15
	lw $t4, var_16
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	lw $t4, 0($s0)
	lw $s0, var_17
	mul $s0, $s0, 4
	add $s0, $t4, $s0
	li $t4, 0
	sw $t4, 0($s0)
L231:
	lw $s0, var_17
	add $s0, $s0, 1
	sw $s0, var_17
	b L229
L230:
L228:
	lw $t4, var_16
	add $t4, $t4, 1
	sw $t4, var_16
	b L226
L227:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_addList:
	sub $sp, $sp, 12
	sw $ra, 0($sp)
	move $t0, $a0
	move $t4, $a1
	move $a0, $t0
	sw $t0, 4($sp)
	sw $t4, 8($sp)
	jal f_check
	lw $t0, 4($sp)
	lw $t4, 8($sp)
	beq $zero, $v0, L233
	move $a0, $t4
	sw $t0, 4($sp)
	sw $t4, 8($sp)
	jal f_check
	lw $t0, 4($sp)
	lw $t4, 8($sp)
	and $t9, $v0, $v0
L233:
	beq $zero, $t9, L234
	lw $s0, var_15
	mul $s4, $t0, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	mul $s4, $t4, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	seq $s0, $s0, -1
	and $s0, $t9, $s0
L234:
	beq $zero, $s0, L235
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
	lw $s0, var_15
	mul $s4, $t0, 4
	add $s0, $s0, $s4
	lw $s0, 0($s0)
	mul $s4, $t4, 4
	add $s0, $s0, $s4
	sw $t9, 0($s0)
	lw $s0, var_4
	seq $t0, $t0, $s0
	beq $zero, $t0, L236
	lw $s0, var_5
	seq $s0, $t4, $s0
	and $t2, $t0, $s0
L236:
	beq $zero, $t2, L237
	li $t0, 1
	sw $t0, var_11
L237:
L235:
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
	li $a0, 32
	li $v0, 9
	syscall
	move $t0, $v0
	sw $t0, var_13
	li $a0, 36
	li $v0, 9
	syscall
	move $t0, $v0
	sw $t0, var_14
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 106
	jal f_origin
	li $v0, 5
	syscall
	move $t0, $v0
	sw $t0, var_0
	lw $t0, var_0
	sub $t0, $t0, 1
	move $s0, $t0
	sw $s0, var_5
	sw $s0, var_4
	li $t4, 0
	sw $t4, var_16
L238:
	lw $t4, var_16
	lw $t0, var_0
	slt $t0, $t4, $t0
	beq $zero, $t0, L239
	li $s0, 0
	sw $s0, var_17
L241:
	lw $s0, var_17
	lw $t0, var_0
	slt $t0, $s0, $t0
	beq $zero, $t0, L242
	lw $s0, var_15
	lw $t4, var_16
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $s0, var_17
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	li $s0, -1
	sw $s0, 0($t0)
L243:
	lw $s0, var_17
	add $s0, $s0, 1
	sw $s0, var_17
	b L241
L242:
L240:
	lw $t4, var_16
	add $t4, $t4, 1
	sw $t4, var_16
	b L238
L239:
	lw $t0, var_13
	la $t0, 0($t0)
	li $s0, -2
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 0($t0)
	li $s0, -1
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 4($t0)
	li $s0, -2
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 4($t0)
	li $s0, 1
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 8($t0)
	li $s0, 2
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 8($t0)
	li $s0, -1
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 12($t0)
	li $s0, 2
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 12($t0)
	li $s0, 1
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 16($t0)
	li $s0, -1
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 16($t0)
	li $s0, -2
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 20($t0)
	li $s0, -1
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 20($t0)
	li $s0, 2
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 24($t0)
	li $s0, 1
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 24($t0)
	li $s0, -2
	sw $s0, 0($t0)
	lw $t0, var_13
	la $t0, 28($t0)
	li $s0, 1
	sw $s0, 0($t0)
	lw $t0, var_14
	la $t0, 28($t0)
	li $s0, 2
	sw $s0, 0($t0)
L244:
	lw $t0, var_1
	lw $s0, var_10
	sle $t0, $t0, $s0
	beq $zero, $t0, L245
	lw $t9, var_8
	lw $t0, var_1
	mul $t0, $t0, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	move $t4, $t0
	sw $t4, var_6
	lw $t9, var_9
	lw $t0, var_1
	mul $t0, $t0, 4
	add $t0, $t9, $t0
	lw $t0, 0($t0)
	move $t4, $t0
	sw $t4, var_7
	lw $s0, var_15
	lw $t4, var_6
	mul $t0, $t4, 4
	add $t0, $s0, $t0
	lw $t0, 0($t0)
	lw $t4, var_7
	mul $s0, $t4, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	move $s0, $t0
	sw $s0, var_12
	li $s0, 0
	sw $s0, var_17
L246:
	lw $s0, var_17
	slt $t0, $s0, 8
	beq $zero, $t0, L247
	lw $t4, var_6
	lw $t0, var_13
	lw $s0, var_17
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	add $t0, $t4, $t0
	move $a0, $t0
	lw $t4, var_7
	lw $t0, var_14
	lw $s0, var_17
	mul $s0, $s0, 4
	add $t0, $t0, $s0
	lw $t0, 0($t0)
	add $t0, $t4, $t0
	move $a1, $t0
	jal f_addList
L248:
	lw $s0, var_17
	add $s0, $s0, 1
	sw $s0, var_17
	b L246
L247:
	lw $t0, var_11
	seq $t0, $t0, 1
	beq $zero, $t0, L249
	b L245
L249:
	lw $t0, var_1
	add $t0, $t0, 1
	sw $t0, var_1
	b L244
L245:
	lw $t0, var_11
	seq $t0, $t0, 1
	beq $zero, $t0, L250
	lw $s0, var_15
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
L250:
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
	move $s0, $a0
	lw $t0, var_0
	slt $t0, $s0, $t0
	beq $zero, $t0, L232
	sge $s0, $s0, 0
	and $t4, $t0, $s0
L232:
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
