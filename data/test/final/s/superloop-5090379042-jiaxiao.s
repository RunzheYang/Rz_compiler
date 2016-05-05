.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	"\n"
var_0:	.word	0
var_1:	.word	99
var_2:	.word	100
var_3:	.word	101
var_4:	.word	102
var_5:	.word	0
.text
main:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $s3, $v0
	sw $s3, var_0
	li $s5, 1
L546:
	lw $s3, var_0
	sle $s3, $s5, $s3
	beq $zero, $s3, L547
	li $s2, 1
L549:
	lw $s3, var_0
	sle $s3, $s2, $s3
	beq $zero, $s3, L550
	li $t6, 1
L552:
	lw $s3, var_0
	sle $s3, $t6, $s3
	beq $zero, $s3, L553
	li $t9, 1
L555:
	lw $s3, var_0
	sle $s3, $t9, $s3
	beq $zero, $s3, L556
	li $s0, 1
L558:
	lw $s3, var_0
	sle $s3, $s0, $s3
	beq $zero, $s3, L559
	li $s7, 1
L561:
	lw $s3, var_0
	sle $s3, $s7, $s3
	beq $zero, $s3, L562
	sne $s3, $s5, $s2
	beq $zero, $s3, L564
	sne $t0, $s5, $t6
	and $s3, $s3, $t0
	b L565
L564:
	li $s3, 0
L565:
	beq $zero, $s3, L566
	sne $t0, $s5, $t9
	and $s3, $s3, $t0
	b L567
L566:
	li $s3, 0
L567:
	beq $zero, $s3, L568
	sne $t0, $s5, $s0
	and $s3, $s3, $t0
	b L569
L568:
	li $s3, 0
L569:
	beq $zero, $s3, L570
	sne $t0, $s5, $s7
	and $s3, $s3, $t0
	b L571
L570:
	li $s3, 0
L571:
	beq $zero, $s3, L572
	lw $t0, var_1
	sne $t0, $s5, $t0
	and $s3, $s3, $t0
	b L573
L572:
	li $s3, 0
L573:
	beq $zero, $s3, L574
	lw $t0, var_2
	sne $t0, $s5, $t0
	and $s3, $s3, $t0
	b L575
L574:
	li $s3, 0
L575:
	beq $zero, $s3, L576
	lw $t3, var_3
	sne $t0, $s5, $t3
	and $s3, $s3, $t0
	b L577
L576:
	li $s3, 0
L577:
	beq $zero, $s3, L578
	lw $t3, var_4
	sne $t0, $s5, $t3
	and $s3, $s3, $t0
	b L579
L578:
	li $s3, 0
L579:
	beq $zero, $s3, L580
	sne $t0, $s2, $t6
	and $s3, $s3, $t0
	b L581
L580:
	li $s3, 0
L581:
	beq $zero, $s3, L582
	sne $t0, $s2, $t9
	and $s3, $s3, $t0
	b L583
L582:
	li $s3, 0
L583:
	beq $zero, $s3, L584
	sne $t0, $s2, $s0
	and $s3, $s3, $t0
	b L585
L584:
	li $s3, 0
L585:
	beq $zero, $s3, L586
	sne $t0, $s2, $s7
	and $s3, $s3, $t0
	b L587
L586:
	li $s3, 0
L587:
	beq $zero, $s3, L588
	lw $t0, var_1
	sne $t0, $s2, $t0
	and $s3, $s3, $t0
	b L589
L588:
	li $s3, 0
L589:
	beq $zero, $s3, L590
	lw $t0, var_2
	sne $t0, $s2, $t0
	and $s3, $s3, $t0
	b L591
L590:
	li $s3, 0
L591:
	beq $zero, $s3, L592
	lw $t3, var_3
	sne $t0, $s2, $t3
	and $s3, $s3, $t0
	b L593
L592:
	li $s3, 0
L593:
	beq $zero, $s3, L594
	lw $t3, var_4
	sne $t0, $s2, $t3
	and $s3, $s3, $t0
	b L595
L594:
	li $s3, 0
L595:
	beq $zero, $s3, L596
	sne $t0, $t6, $t9
	and $s3, $s3, $t0
	b L597
L596:
	li $s3, 0
L597:
	beq $zero, $s3, L598
	sne $t0, $t6, $s0
	and $s3, $s3, $t0
	b L599
L598:
	li $s3, 0
L599:
	beq $zero, $s3, L600
	sne $t0, $t6, $s7
	and $s3, $s3, $t0
	b L601
L600:
	li $s3, 0
L601:
	beq $zero, $s3, L602
	lw $t0, var_1
	sne $t0, $t6, $t0
	and $s3, $s3, $t0
	b L603
L602:
	li $s3, 0
L603:
	beq $zero, $s3, L604
	lw $t0, var_2
	sne $t0, $t6, $t0
	and $s3, $s3, $t0
	b L605
L604:
	li $s3, 0
L605:
	beq $zero, $s3, L606
	lw $t3, var_3
	sne $t0, $t6, $t3
	and $s3, $s3, $t0
	b L607
L606:
	li $s3, 0
L607:
	beq $zero, $s3, L608
	lw $t3, var_4
	sne $t0, $t6, $t3
	and $s3, $s3, $t0
	b L609
L608:
	li $s3, 0
L609:
	beq $zero, $s3, L610
	sne $t0, $t9, $s0
	and $s3, $s3, $t0
	b L611
L610:
	li $s3, 0
L611:
	beq $zero, $s3, L612
	sne $t0, $t9, $s7
	and $s3, $s3, $t0
	b L613
L612:
	li $s3, 0
L613:
	beq $zero, $s3, L614
	lw $t0, var_1
	sne $t0, $t9, $t0
	and $s3, $s3, $t0
	b L615
L614:
	li $s3, 0
L615:
	beq $zero, $s3, L616
	lw $t0, var_2
	sne $t0, $t9, $t0
	and $s3, $s3, $t0
	b L617
L616:
	li $s3, 0
L617:
	beq $zero, $s3, L618
	lw $t3, var_3
	sne $t0, $t9, $t3
	and $s3, $s3, $t0
	b L619
L618:
	li $s3, 0
L619:
	beq $zero, $s3, L620
	lw $t3, var_4
	sne $t0, $t9, $t3
	and $s3, $s3, $t0
	b L621
L620:
	li $s3, 0
L621:
	beq $zero, $s3, L622
	sne $t0, $s0, $s7
	and $s3, $s3, $t0
	b L623
L622:
	li $s3, 0
L623:
	beq $zero, $s3, L624
	lw $t0, var_1
	sne $t0, $s0, $t0
	and $s3, $s3, $t0
	b L625
L624:
	li $s3, 0
L625:
	beq $zero, $s3, L626
	lw $t0, var_2
	sne $t0, $s0, $t0
	and $s3, $s3, $t0
	b L627
L626:
	li $s3, 0
L627:
	beq $zero, $s3, L628
	lw $t3, var_3
	sne $t0, $s0, $t3
	and $s3, $s3, $t0
	b L629
L628:
	li $s3, 0
L629:
	beq $zero, $s3, L630
	lw $t3, var_4
	sne $t0, $s0, $t3
	and $s3, $s3, $t0
	b L631
L630:
	li $s3, 0
L631:
	beq $zero, $s3, L632
	lw $t0, var_1
	sne $t0, $s7, $t0
	and $s3, $s3, $t0
	b L633
L632:
	li $s3, 0
L633:
	beq $zero, $s3, L634
	lw $t0, var_2
	sne $t0, $s7, $t0
	and $s3, $s3, $t0
	b L635
L634:
	li $s3, 0
L635:
	beq $zero, $s3, L636
	lw $t3, var_3
	sne $t0, $s7, $t3
	and $s3, $s3, $t0
	b L637
L636:
	li $s3, 0
L637:
	beq $zero, $s3, L638
	lw $t3, var_4
	sne $t0, $s7, $t3
	and $s3, $s3, $t0
	b L639
L638:
	li $s3, 0
L639:
	beq $zero, $s3, L640
	lw $t0, var_2
	lw $t3, var_3
	sne $t0, $t0, $t3
	and $s3, $s3, $t0
	b L641
L640:
	li $s3, 0
L641:
	beq $zero, $s3, L642
	lw $t0, var_1
	lw $t3, var_4
	sne $t0, $t0, $t3
	and $s3, $s3, $t0
	b L643
L642:
	li $s3, 0
L643:
	beq $zero, $s3, L644
	lw $s3, var_5
	add $s3, $s3, 1
	sw $s3, var_5
	b L645
L644:
L645:
L563:
	add $s7, $s7, 1
	b L561
L562:
L560:
	add $s0, $s0, 1
	b L558
L559:
L557:
	add $t9, $t9, 1
	b L555
L556:
L554:
	add $t6, $t6, 1
	b L552
L553:
L551:
	add $s2, $s2, 1
	b L549
L550:
L548:
	add $s5, $s5, 1
	b L546
L547:
	lw $s3, var_5
	move $a0, $s3
	jal f_toString
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
	la $a0, msg_0
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
func__stringIsEqual:
	lw $v0, -4($a0)
	lw $v1, -4($a1)
	bne $v0, $v1, _not_equal
	_continue_compare_equal:
	lb $v0, 0($a0)
	lb $v1, 0($a1)
	beqz $v0, _equal
	bne $v0, $v1, _not_equal
	add $a0, $a0, 1
	add $a1, $a1, 1
	j _continue_compare_equal
	_not_equal:
	li $v0, 0
	j _compare_final
	_equal:
	li $v0, 1
	_compare_final:
	jr $ra
func__stringLarge:
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal func__stringLess
	xor $v0, $v0, 1
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra
func__stringLeq:
	subu $sp, $sp, 12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	jal func__stringLess
	bnez $v0, _skip_compare_equal_in_Leq
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	jal func__stringIsEqual
	_skip_compare_equal_in_Leq:
	lw $ra, 0($sp)
	addu $sp, $sp, 12
	jr $ra
func__stringGeq:
	subu $sp, $sp, 12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	jal func__stringLess
	beqz $v0, _skip_compare_equal_in_Geq
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	jal func__stringIsEqual
	xor $v0, $v0, 1
	_skip_compare_equal_in_Geq:
	xor $v0, $v0, 1
	lw $ra, 0($sp)
	addu $sp, $sp, 12
	jr $ra
func__stringLess:
	_begin_compare_less:
	lb $v0, 0($a0)
	lb $v1, 0($a1)
	blt $v0, $v1, _less_correct
	bgt $v0, $v1, _less_false
	beqz $v0, _less_false
	add $a0, $a0, 1
	add $a1, $a1, 1
	j _begin_compare_less
	_less_correct:
	li $v0, 1
	j _less_compare_final
	_less_false:
	li $v0, 0
	_less_compare_final:
	jr $ra
func__stringNeq:
	subu $sp, $sp, 4
	sw $ra, 0($sp)
	jal func__stringIsEqual
	xor $v0, $v0, 1
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra
