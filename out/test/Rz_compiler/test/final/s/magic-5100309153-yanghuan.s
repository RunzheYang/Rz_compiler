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
	move $t5, $a0
	move $s2, $a1
	move $s3, $a2
	sgt $t6, $s2, 0
	bne $zero, $t6, L257
	slt $s4, $s2, 0
	or $s4, $t6, $s4
L257:
	bne $zero, $s4, L258
	seq $t6, $t5, 0
	or $s5, $s4, $t6
L258:
	bne $zero, $s5, L259
	lw $t6, var_0
	sub $s4, $t5, 1
	mul $s4, $s4, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s4, 0($t6)
	lw $t6, var_0
	sub $t4, $t5, 1
	mul $t4, $t4, 4
	add $t6, $t6, $t4
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s4, $s4, $t6
	lw $t6, var_0
	sub $t4, $t5, 1
	mul $t4, $t4, 4
	add $t6, $t6, $t4
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s4, $t6
	seq $t6, $t6, 15
	or $t4, $s5, $t6
L259:
	beq $zero, $t4, L260
	seq $t6, $t5, 2
	beq $zero, $t6, L261
	seq $s4, $s2, 2
	and $t1, $t6, $s4
L261:
	beq $zero, $t1, L262
	li $s4, 45
	sub $s4, $s4, $s3
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	sw $s4, 0($t6)
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s4, 0($t6)
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s4, $s4, $t6
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s4, $t6
	move $s4, $t6
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s5, 0($t6)
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s5, $s5, $t6
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s5, $t6
	seq $s5, $t6, $s4
	beq $zero, $s5, L263
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t4, 0($t6)
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $t4, $t4, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $t4, $t6
	seq $t6, $t6, $s4
	and $t0, $s5, $t6
L263:
	beq $zero, $t0, L264
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s5, 0($t6)
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t6, 0($t6)
	add $s5, $s5, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t6, 0($t6)
	add $t6, $s5, $t6
	seq $t6, $t6, $s4
	and $t2, $t0, $t6
L264:
	beq $zero, $t2, L265
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $s5, 0($t6)
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s5, $s5, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $t6, $s5, $t6
	seq $t6, $t6, $s4
	and $s6, $t2, $t6
L265:
	beq $zero, $s6, L266
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $s5, 0($t6)
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $s5, $s5, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s5, $t6
	seq $t6, $t6, $s4
	and $t3, $s6, $t6
L266:
	beq $zero, $t3, L267
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s5, 0($t6)
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s5, $s5, $t6
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s5, $t6
	seq $t6, $t6, $s4
	and $t7, $t3, $t6
L267:
	beq $zero, $t7, L268
	lw $t6, var_0
	la $t6, 8($t6)
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $s5, 0($t6)
	lw $t6, var_0
	la $t6, 4($t6)
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	add $s5, $s5, $t6
	lw $t6, var_0
	la $t6, 0($t6)
	lw $t6, 0($t6)
	la $t6, 8($t6)
	lw $t6, 0($t6)
	add $t6, $s5, $t6
	seq $t6, $t6, $s4
	and $s0, $t7, $t6
L268:
	beq $zero, $s0, L269
	lw $t6, var_2
	la $t6, 0($t6)
	lw $t6, 0($t6)
	add $s4, $t6, 1
	lw $t6, var_2
	la $t6, 0($t6)
	sw $s4, 0($t6)
	li $s4, 0
L270:
	sle $t6, $s4, 2
	beq $zero, $t6, L271
	li $s5, 0
L273:
	sle $t6, $s5, 2
	beq $zero, $t6, L274
	lw $t6, var_0
	mul $t4, $s4, 4
	add $t6, $t6, $t4
	lw $t6, 0($t6)
	mul $t4, $s5, 4
	add $t6, $t6, $t4
	lw $t6, 0($t6)
	move $a0, $t6
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $s5, 20($sp)
	jal f_toString
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s4, 16($sp)
	lw $s5, 20($sp)
	move $t6, $v0
	move $a0, $t6
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L275:
	add $s5, $s5, 1
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
	seq $t6, $s2, 2
	beq $zero, $t6, L276
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	la $t6, 0($t6)
	lw $t6, 0($t6)
	li $s4, 15
	sub $s4, $s4, $t6
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	la $t6, 4($t6)
	lw $t6, 0($t6)
	sub $s4, $s4, $t6
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	sw $s4, 0($t6)
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	sgt $s4, $t6, 0
	beq $zero, $s4, L277
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	slt $t6, $t6, 10
	and $t9, $s4, $t6
L277:
	beq $zero, $t9, L278
	lw $s5, var_1
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s5, $t6
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	and $t8, $t9, $t6
L278:
	beq $zero, $t8, L279
	lw $s5, var_1
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s5, $t6
	li $s4, 1
	sw $s4, 0($t6)
	seq $t6, $s2, 2
	beq $zero, $t6, L280
	add $t6, $t5, 1
	move $a0, $t6
	li $a1, 0
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	add $t6, $s3, $t6
	move $a2, $t6
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	jal f_search
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
L280:
	move $a0, $t5
	add $t6, $s2, 1
	move $a1, $t6
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	add $t6, $s3, $t6
	move $a2, $t6
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	jal f_search
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s5, var_1
	lw $t6, var_0
	mul $s4, $t5, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $s4, $s2, 4
	add $t6, $t6, $s4
	lw $t6, 0($t6)
	mul $t6, $t6, 4
	add $t6, $s5, $t6
	li $s4, 0
	sw $s4, 0($t6)
L279:
L276:
	li $s4, 1
L281:
	sle $t6, $s4, 9
	beq $zero, $t6, L282
	lw $s5, var_1
	mul $t6, $s4, 4
	add $t6, $s5, $t6
	lw $t6, 0($t6)
	seq $t6, $t6, 0
	beq $zero, $t6, L284
	lw $s5, var_1
	mul $t6, $s4, 4
	add $t6, $s5, $t6
	li $s5, 1
	sw $s5, 0($t6)
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	move $s5, $s4
	sw $s5, 0($t6)
	seq $t6, $s2, 2
	beq $zero, $t6, L285
	add $t6, $t5, 1
	move $a0, $t6
	li $a1, 0
	add $t6, $s3, $s4
	move $a2, $t6
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	jal f_search
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s4, 16($sp)
L285:
	move $a0, $t5
	add $t6, $s2, 1
	move $a1, $t6
	add $t6, $s3, $s4
	move $a2, $t6
	sw $t5, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	jal f_search
	lw $t5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s4, 16($sp)
	lw $t6, var_0
	mul $s5, $t5, 4
	add $t6, $t6, $s5
	lw $t6, 0($t6)
	mul $s5, $s2, 4
	add $t6, $t6, $s5
	li $s5, 0
	sw $s5, 0($t6)
	lw $s5, var_1
	mul $t6, $s4, 4
	add $t6, $s5, $t6
	li $s5, 0
	sw $s5, 0($t6)
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
	move $t5, $a0
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	move $t6, $v0
	sw $t6, var_0
	li $s2, 0
	sw $s2, var_3
L251:
	lw $s2, var_3
	slt $s2, $s2, $t5
	beq $zero, $s2, L252
	mul $s2, $t5, 4
	add $a0, $zero, $s2
	li $v0, 9
	syscall
	lw $t6, var_0
	lw $s2, var_3
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	move $s3, $v0
	sw $s3, 0($s2)
	li $s2, 0
	sw $s2, var_4
L254:
	lw $s2, var_4
	slt $s2, $s2, $t5
	beq $zero, $s2, L255
	lw $t6, var_0
	lw $s2, var_3
	mul $s2, $s2, 4
	add $s2, $t6, $s2
	lw $s3, 0($s2)
	lw $s2, var_4
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	li $s3, 0
	sw $s3, 0($s2)
L256:
	lw $s2, var_4
	add $s2, $s2, 1
	sw $s2, var_4
	b L254
L255:
L253:
	lw $s2, var_3
	add $s2, $s2, 1
	sw $s2, var_3
	b L251
L252:
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 40
	li $v0, 9
	syscall
	move $s5, $v0
	sw $s5, var_1
	li $a0, 4
	li $v0, 9
	syscall
	move $t6, $v0
	sw $t6, var_2
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 3
	jal f_origin
	li $a0, 0
	li $a1, 0
	li $a2, 0
	jal f_search
	lw $t6, var_2
	la $t5, 0($t6)
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
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
