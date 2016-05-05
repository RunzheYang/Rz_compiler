.data
.align 2
msg_0:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	99
var_2:	.word	100
var_3:	.word	101
var_4:	.word	102
var_5:	.word	0
.text
main:
	sub $sp, $sp, 152
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $t0, $v0
	sw $t0, var_0
	li $s0, 1
L422:
	lw $t0, var_0
	sle $t0, $s0, $t0
	beq $zero, $t0, L423
	li $t4, 1
L425:
	lw $t0, var_0
	sle $t0, $t4, $t0
	beq $zero, $t0, L426
	li $t9, 1
L428:
	lw $t0, var_0
	sle $t0, $t9, $t0
	beq $zero, $t0, L429
	li $s4, 1
L431:
	lw $t0, var_0
	sle $t0, $s4, $t0
	beq $zero, $t0, L432
	li $t2, 1
L434:
	lw $t0, var_0
	sle $t0, $t2, $t0
	beq $zero, $t0, L435
	li $t7, 1
L437:
	lw $t0, var_0
	sle $t0, $t7, $t0
	beq $zero, $t0, L438
	sne $t0, $s0, $t4
	beq $zero, $t0, L440
	sne $s5, $s0, $t9
	and $s5, $t0, $s5
L440:
	beq $zero, $s5, L441
	sne $t0, $s0, $s4
	and $s1, $s5, $t0
L441:
	beq $zero, $s1, L442
	sne $t0, $s0, $t2
	and $t8, $s1, $t0
L442:
	beq $zero, $t8, L443
	sne $t0, $s0, $t7
	and $s6, $t8, $t0
L443:
	beq $zero, $s6, L444
	lw $t0, var_1
	sne $t0, $s0, $t0
	and $t3, $s6, $t0
L444:
	beq $zero, $t3, L445
	lw $t0, var_2
	sne $t0, $s0, $t0
	and $t1, $t3, $t0
L445:
	beq $zero, $t1, L446
	lw $t5, var_3
	sne $t0, $s0, $t5
	and $s2, $t1, $t0
L446:
	beq $zero, $s2, L447
	lw $t5, var_4
	sne $t0, $s0, $t5
	and $t6, $s2, $t0
L447:
	beq $zero, $t6, L448
	sne $t0, $t4, $t9
	and $s7, $t6, $t0
L448:
	beq $zero, $s7, L449
	sne $t0, $t4, $s4
	and $s3, $s7, $t0
L449:
	beq $zero, $s3, L450
	sne $t0, $t4, $t2
	sw $t0, 4($sp)
	and $t0, $s3, $t0
L450:
	beq $zero, $t0, L451
	sne $t5, $t4, $t7
	sw $t6, 8($sp)
	and $t6, $t0, $t5
L451:
	beq $zero, $t6, L452
	lw $t0, var_1
	sne $t5, $t4, $t0
	sw $t1, 12($sp)
	and $t1, $t6, $t5
L452:
	beq $zero, $t1, L453
	lw $t0, 4($sp)
	sw $t0, 16($sp)
	lw $t0, var_2
	sne $t0, $t4, $t0
	sw $t0, 4($sp)
	and $t0, $t1, $t0
L453:
	beq $zero, $t0, L454
	lw $t5, var_3
	sne $t5, $t4, $t5
	sw $t0, 20($sp)
	and $t0, $t0, $t5
L454:
	beq $zero, $t0, L455
	lw $t5, var_4
	sne $t5, $t4, $t5
	sw $t5, 24($sp)
	and $t5, $t0, $t5
L455:
	beq $zero, $t5, L456
	sw $t5, 28($sp)
	sne $t5, $t9, $s4
	lw $t5, 28($sp)
	sw $t5, 32($sp)
	sw $t5, 36($sp)
	and $t5, $t5, $t5
L456:
	beq $zero, $t5, L457
	sw $t5, 28($sp)
	sne $t5, $t9, $t2
	sw $t0, 40($sp)
	and $t0, $t5, $t5
L457:
	beq $zero, $t0, L458
	sw $t1, 44($sp)
	sne $t1, $t9, $t7
	and $t1, $t0, $t1
L458:
	beq $zero, $t1, L459
	lw $t0, var_1
	sw $t1, 48($sp)
	sne $t1, $t9, $t0
	lw $t1, 48($sp)
	sw $t1, 52($sp)
	lw $t1, 52($sp)
	sw $t1, 48($sp)
	sw $t1, 56($sp)
	and $t1, $t1, $t1
L459:
	beq $zero, $t1, L460
	lw $t0, 4($sp)
	sw $t0, 60($sp)
	lw $t0, var_2
	sw $s3, 64($sp)
	sne $s3, $t9, $t0
	and $s3, $t1, $s3
L460:
	beq $zero, $s3, L461
	lw $t5, var_3
	sw $s1, 68($sp)
	sne $s1, $t9, $t5
	and $s1, $s3, $s1
L461:
	beq $zero, $s1, L462
	lw $t5, var_4
	sw $s7, 72($sp)
	sne $s7, $t9, $t5
	and $s7, $s1, $s7
L462:
	beq $zero, $s7, L463
	sw $s3, 76($sp)
	sne $s3, $s4, $t2
	sw $t0, 4($sp)
	and $t0, $s7, $s3
L463:
	beq $zero, $t0, L464
	sne $s3, $s4, $t7
	sw $t1, 80($sp)
	and $t1, $t0, $s3
L464:
	beq $zero, $t1, L465
	lw $t0, var_1
	sne $s3, $s4, $t0
	sw $t1, 84($sp)
	and $t1, $t1, $s3
L465:
	beq $zero, $t1, L466
	lw $t0, 4($sp)
	sw $t0, 88($sp)
	lw $t0, var_2
	sne $s3, $s4, $t0
	sw $t0, 4($sp)
	and $t0, $t1, $s3
L466:
	beq $zero, $t0, L467
	lw $t5, var_3
	sne $s3, $s4, $t5
	sw $t0, 92($sp)
	and $t0, $t0, $s3
L467:
	beq $zero, $t0, L468
	lw $t5, var_4
	sne $s3, $s4, $t5
	sw $s4, 96($sp)
	and $s4, $t0, $s3
L468:
	beq $zero, $s4, L469
	sne $s3, $t2, $t7
	sw $s4, 100($sp)
	and $s4, $s4, $s3
L469:
	beq $zero, $s4, L470
	lw $t0, var_1
	sne $s3, $t2, $t0
	sw $s4, 104($sp)
	and $s4, $s4, $s3
L470:
	beq $zero, $s4, L471
	lw $t0, 4($sp)
	sw $t0, 108($sp)
	lw $t0, var_2
	sne $s3, $t2, $t0
	sw $t0, 4($sp)
	and $t0, $s4, $s3
L471:
	beq $zero, $t0, L472
	lw $t5, var_3
	sne $s3, $t2, $t5
	sw $t0, 112($sp)
	and $t0, $t0, $s3
L472:
	beq $zero, $t0, L473
	lw $t5, var_4
	sne $s3, $t2, $t5
	sw $t0, 116($sp)
	and $t0, $t0, $s3
L473:
	beq $zero, $t0, L474
	lw $t0, var_1
	sne $s3, $t7, $t0
	sw $s3, 120($sp)
	and $s3, $t0, $s3
L474:
	beq $zero, $s3, L475
	lw $t0, 4($sp)
	sw $t0, 124($sp)
	lw $t0, var_2
	sw $s4, 128($sp)
	sne $s4, $t7, $t0
	and $s4, $s3, $s4
L475:
	beq $zero, $s4, L476
	lw $t5, var_3
	sw $t1, 132($sp)
	sne $t1, $t7, $t5
	sw $t0, 4($sp)
	and $t0, $s4, $t1
L476:
	beq $zero, $t0, L477
	lw $t5, var_4
	sne $t1, $t7, $t5
	sw $s4, 136($sp)
	and $s4, $t0, $t1
L477:
	beq $zero, $s4, L478
	lw $t0, 4($sp)
	sw $t0, 140($sp)
	lw $t0, var_2
	lw $t5, var_3
	sne $t1, $t0, $t5
	sw $t0, 4($sp)
	and $t0, $s4, $t1
L478:
	beq $zero, $t0, L479
	lw $t0, var_1
	lw $t5, var_4
	sne $t1, $t0, $t5
	sw $s3, 144($sp)
	and $s3, $t0, $t1
L479:
	beq $zero, $s3, L480
	lw $t1, var_5
	add $t1, $t1, 1
	sw $t1, var_5
L480:
L439:
	add $t7, $t7, 1
	b L437
L438:
L436:
	add $t2, $t2, 1
	b L434
L435:
L433:
	lw $s4, 96($sp)
	sw $s4, 148($sp)
	add $s4, $s4, 1
	b L431
L432:
L430:
	add $t9, $t9, 1
	b L428
L429:
L427:
	add $t4, $t4, 1
	b L425
L426:
L424:
	add $s0, $s0, 1
	b L422
L423:
	lw $t1, var_5
	move $a0, $t1
	jal f_toString
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 152
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
