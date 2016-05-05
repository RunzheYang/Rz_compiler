.data
.align 2
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
var_4:	.word	0
.text
f_search:
	sub $sp, $sp, 24
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $a1
	move $t4, $a2
	sgt $t9, $s0, 0
	bne $zero, $t9, L257
	slt $s4, $s0, 0
	or $s4, $t9, $s4
L257:
	bne $zero, $s4, L258
	seq $t9, $t0, 0
	or $t2, $s4, $t9
L258:
	bne $zero, $t2, L259
	lw $t9, var_0
	sub $s4, $t0, 1
	mul $s4, $s4, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $s4, 0($t9)
	lw $t9, var_0
	sub $t7, $t0, 1
	mul $t7, $t7, 4
	add $t9, $t9, $t7
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $s4, $s4, $t9
	lw $t9, var_0
	sub $t7, $t0, 1
	mul $t7, $t7, 4
	add $t9, $t9, $t7
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $s4, $t9
	seq $t9, $t9, 15
	or $t7, $t2, $t9
L259:
	beq $zero, $t7, L260
	seq $t9, $t0, 2
	beq $zero, $t9, L261
	seq $s4, $s0, 2
	and $s5, $t9, $s4
L261:
	beq $zero, $s5, L262
	li $s4, 45
	sub $s4, $s4, $t4
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	sw $s4, 0($t9)
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $s4, 0($t9)
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $s4, $s4, $t9
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $s4, $t9
	move $s4, $t9
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t2, 0($t9)
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $t2, $t2, $t9
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $t2, $t9
	seq $t2, $t9, $s4
	beq $zero, $t2, L263
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t7, 0($t9)
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $t7, $t7, $t9
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $t7, $t9
	seq $t9, $t9, $s4
	and $s1, $t2, $t9
L263:
	beq $zero, $s1, L264
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t2, 0($t9)
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t9, 0($t9)
	add $t2, $t2, $t9
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t9, 0($t9)
	add $t9, $t2, $t9
	seq $t9, $t9, $s4
	and $t8, $s1, $t9
L264:
	beq $zero, $t8, L265
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t2, 0($t9)
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $t2, $t2, $t9
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $t9, $t2, $t9
	seq $t9, $t9, $s4
	and $s6, $t8, $t9
L265:
	beq $zero, $s6, L266
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t2, 0($t9)
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t2, $t2, $t9
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $t2, $t9
	seq $t9, $t9, $s4
	and $t3, $s6, $t9
L266:
	beq $zero, $t3, L267
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t2, 0($t9)
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $t2, $t2, $t9
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $t2, $t9
	seq $t9, $t9, $s4
	and $t1, $t3, $t9
L267:
	beq $zero, $t1, L268
	lw $t9, var_0
	la $t9, 8($t9)
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t2, 0($t9)
	lw $t9, var_0
	la $t9, 4($t9)
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	add $t2, $t2, $t9
	lw $t9, var_0
	la $t9, 0($t9)
	lw $t9, 0($t9)
	la $t9, 8($t9)
	lw $t9, 0($t9)
	add $t9, $t2, $t9
	seq $t9, $t9, $s4
	and $t5, $t1, $t9
L268:
	beq $zero, $t5, L269
	lw $t9, var_2
	la $t9, 0($t9)
	lw $t9, 0($t9)
	add $s4, $t9, 1
	lw $t9, var_2
	la $t9, 0($t9)
	sw $s4, 0($t9)
	li $s4, 0
L270:
	sle $t9, $s4, 2
	beq $zero, $t9, L271
	li $t2, 0
L273:
	sle $t9, $t2, 2
	beq $zero, $t9, L274
	lw $t9, var_0
	mul $t7, $s4, 4
	add $t9, $t9, $t7
	lw $t9, 0($t9)
	mul $t7, $t2, 4
	add $t9, $t9, $t7
	lw $t9, 0($t9)
	move $a0, $t9
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t0, 12($sp)
	sw $s0, 16($sp)
	sw $t4, 20($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t0, 12($sp)
	lw $s0, 16($sp)
	lw $t4, 20($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L275:
	add $t2, $t2, 1
	b L273
L274:
	la $a0, msg_1
	li $v0, 4
	syscall
L272:
	add $s4, $s4, 1
	b L270
L271:
	la $a0, msg_1
	li $v0, 4
	syscall
L269:
L262:
	seq $t9, $s0, 2
	beq $zero, $t9, L276
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	la $t9, 0($t9)
	lw $t9, 0($t9)
	li $s4, 15
	sub $s4, $s4, $t9
	lw $t9, var_0
	mul $t2, $t0, 4
	add $t9, $t9, $t2
	lw $t9, 0($t9)
	la $t9, 4($t9)
	lw $t9, 0($t9)
	sub $s4, $s4, $t9
	lw $t9, var_0
	mul $t2, $t0, 4
	add $t9, $t9, $t2
	lw $t9, 0($t9)
	mul $t2, $s0, 4
	add $t9, $t9, $t2
	sw $s4, 0($t9)
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $s4, $s0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	sgt $s4, $t9, 0
	beq $zero, $s4, L277
	lw $t9, var_0
	mul $t2, $t0, 4
	add $t9, $t9, $t2
	lw $t9, 0($t9)
	mul $t2, $s0, 4
	add $t9, $t9, $t2
	lw $t9, 0($t9)
	slt $t9, $t9, 10
	and $s2, $s4, $t9
L277:
	beq $zero, $s2, L278
	lw $t2, var_1
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $s4, $s0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $t9, $t9, 4
	add $t9, $t2, $t9
	lw $t9, 0($t9)
	seq $t9, $t9, 0
	and $t6, $s2, $t9
L278:
	beq $zero, $t6, L279
	lw $t2, var_1
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $s4, $s0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $t9, $t9, 4
	add $t9, $t2, $t9
	li $s4, 1
	sw $s4, 0($t9)
	seq $t9, $s0, 2
	beq $zero, $t9, L280
	add $t9, $t0, 1
	move $a0, $t9
	li $a1, 0
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $s4, $s0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	add $t9, $t4, $t9
	move $a2, $t9
	sw $t0, 12($sp)
	sw $s0, 16($sp)
	sw $t4, 20($sp)
	jal f_search
	lw $t0, 12($sp)
	lw $s0, 16($sp)
	lw $t4, 20($sp)
L280:
	move $a0, $t0
	add $t9, $s0, 1
	move $a1, $t9
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $s4, $s0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	add $t9, $t4, $t9
	move $a2, $t9
	sw $t0, 12($sp)
	sw $s0, 16($sp)
	sw $t4, 20($sp)
	jal f_search
	lw $t0, 12($sp)
	lw $s0, 16($sp)
	lw $t4, 20($sp)
	lw $t2, var_1
	lw $t9, var_0
	mul $s4, $t0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $s4, $s0, 4
	add $t9, $t9, $s4
	lw $t9, 0($t9)
	mul $t9, $t9, 4
	add $t9, $t2, $t9
	li $s4, 0
	sw $s4, 0($t9)
L279:
L276:
	li $s4, 1
L281:
	sle $t9, $s4, 9
	beq $zero, $t9, L282
	lw $t2, var_1
	mul $t9, $s4, 4
	add $t9, $t2, $t9
	lw $t9, 0($t9)
	seq $t9, $t9, 0
	beq $zero, $t9, L284
	lw $t2, var_1
	mul $t9, $s4, 4
	add $t9, $t2, $t9
	li $t2, 1
	sw $t2, 0($t9)
	lw $t9, var_0
	mul $t2, $t0, 4
	add $t9, $t9, $t2
	lw $t9, 0($t9)
	mul $t2, $s0, 4
	add $t9, $t9, $t2
	move $t2, $s4
	sw $t2, 0($t9)
	seq $t9, $s0, 2
	beq $zero, $t9, L285
	add $t9, $t0, 1
	move $a0, $t9
	li $a1, 0
	add $t9, $t4, $s4
	move $a2, $t9
	sw $s4, 4($sp)
	sw $t0, 12($sp)
	sw $s0, 16($sp)
	sw $t4, 20($sp)
	jal f_search
	lw $s4, 4($sp)
	lw $t0, 12($sp)
	lw $s0, 16($sp)
	lw $t4, 20($sp)
L285:
	move $a0, $t0
	add $t9, $s0, 1
	move $a1, $t9
	add $t9, $t4, $s4
	move $a2, $t9
	sw $s4, 4($sp)
	sw $t0, 12($sp)
	sw $s0, 16($sp)
	sw $t4, 20($sp)
	jal f_search
	lw $s4, 4($sp)
	lw $t0, 12($sp)
	lw $s0, 16($sp)
	lw $t4, 20($sp)
	lw $t9, var_0
	mul $t2, $t0, 4
	add $t9, $t9, $t2
	lw $t9, 0($t9)
	mul $t2, $s0, 4
	add $t9, $t9, $t2
	li $t2, 0
	sw $t2, 0($t9)
	lw $t2, var_1
	mul $t9, $s4, 4
	add $t9, $t2, $t9
	li $t2, 0
	sw $t2, 0($t9)
L284:
L283:
	add $s4, $s4, 1
	b L281
L282:
L260:
	lw $ra, 0($sp)
	add $sp, $sp, 24
	jr $ra
f_origin:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_0
	li $s0, 0
	sw $s0, var_3
L251:
	lw $s0, var_3
	slt $s0, $s0, $t0
	beq $zero, $s0, L252
	mul $s0, $t0, 4
	add $a0, $zero, $s0
	li $v0, 9
	syscall
	lw $t9, var_0
	lw $s0, var_3
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	move $t4, $v0
	sw $t4, 0($s0)
	li $s0, 0
	sw $s0, var_4
L254:
	lw $s0, var_4
	slt $s0, $s0, $t0
	beq $zero, $s0, L255
	lw $t9, var_0
	lw $s0, var_3
	mul $s0, $s0, 4
	add $s0, $t9, $s0
	lw $t4, 0($s0)
	lw $s0, var_4
	mul $s0, $s0, 4
	add $s0, $t4, $s0
	li $t4, 0
	sw $t4, 0($s0)
L256:
	lw $s0, var_4
	add $s0, $s0, 1
	sw $s0, var_4
	b L254
L255:
L253:
	lw $s0, var_3
	add $s0, $s0, 1
	sw $s0, var_3
	b L251
L252:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 40
	li $v0, 9
	syscall
	move $t2, $v0
	sw $t2, var_1
	li $a0, 4
	li $v0, 9
	syscall
	move $t9, $v0
	sw $t9, var_2
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 3
	jal f_origin
	li $a0, 0
	li $a1, 0
	li $a2, 0
	jal f_search
	lw $t9, var_2
	la $t0, 0($t9)
	lw $t0, 0($t0)
	move $a0, $t0
	jal f_toString
	move $a0, $v0
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
