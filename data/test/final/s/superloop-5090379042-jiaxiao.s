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
L567:
	lw $s3, var_0
	sle $s3, $s5, $s3
	beq $zero, $s3, L568
	li $s2, 1
L570:
	lw $s3, var_0
	sle $s3, $s2, $s3
	beq $zero, $s3, L571
	li $t6, 1
L573:
	lw $s3, var_0
	sle $s3, $t6, $s3
	beq $zero, $s3, L574
	li $t9, 1
L576:
	lw $s3, var_0
	sle $s3, $t9, $s3
	beq $zero, $s3, L577
	li $s0, 1
L579:
	lw $s3, var_0
	sle $s3, $s0, $s3
	beq $zero, $s3, L580
	li $s7, 1
L582:
	lw $s3, var_0
	sle $s3, $s7, $s3
	beq $zero, $s3, L583
	sne $s3, $s5, $s2
	beq $zero, $s3, L585
	sne $t0, $s5, $t6
	and $s3, $s3, $t0
	b L586
L585:
	li $s3, 0
L586:
	beq $zero, $s3, L587
	sne $t0, $s5, $t9
	and $s3, $s3, $t0
	b L588
L587:
	li $s3, 0
L588:
	beq $zero, $s3, L589
	sne $t0, $s5, $s0
	and $s3, $s3, $t0
	b L590
L589:
	li $s3, 0
L590:
	beq $zero, $s3, L591
	sne $t0, $s5, $s7
	and $s3, $s3, $t0
	b L592
L591:
	li $s3, 0
L592:
	beq $zero, $s3, L593
	lw $t0, var_1
	sne $t0, $s5, $t0
	and $s3, $s3, $t0
	b L594
L593:
	li $s3, 0
L594:
	beq $zero, $s3, L595
	lw $t0, var_2
	sne $t0, $s5, $t0
	and $s3, $s3, $t0
	b L596
L595:
	li $s3, 0
L596:
	beq $zero, $s3, L597
	lw $t3, var_3
	sne $t0, $s5, $t3
	and $s3, $s3, $t0
	b L598
L597:
	li $s3, 0
L598:
	beq $zero, $s3, L599
	lw $t3, var_4
	sne $t0, $s5, $t3
	and $s3, $s3, $t0
	b L600
L599:
	li $s3, 0
L600:
	beq $zero, $s3, L601
	sne $t0, $s2, $t6
	and $s3, $s3, $t0
	b L602
L601:
	li $s3, 0
L602:
	beq $zero, $s3, L603
	sne $t0, $s2, $t9
	and $s3, $s3, $t0
	b L604
L603:
	li $s3, 0
L604:
	beq $zero, $s3, L605
	sne $t0, $s2, $s0
	and $s3, $s3, $t0
	b L606
L605:
	li $s3, 0
L606:
	beq $zero, $s3, L607
	sne $t0, $s2, $s7
	and $s3, $s3, $t0
	b L608
L607:
	li $s3, 0
L608:
	beq $zero, $s3, L609
	lw $t0, var_1
	sne $t0, $s2, $t0
	and $s3, $s3, $t0
	b L610
L609:
	li $s3, 0
L610:
	beq $zero, $s3, L611
	lw $t0, var_2
	sne $t0, $s2, $t0
	and $s3, $s3, $t0
	b L612
L611:
	li $s3, 0
L612:
	beq $zero, $s3, L613
	lw $t3, var_3
	sne $t0, $s2, $t3
	and $s3, $s3, $t0
	b L614
L613:
	li $s3, 0
L614:
	beq $zero, $s3, L615
	lw $t3, var_4
	sne $t0, $s2, $t3
	and $s3, $s3, $t0
	b L616
L615:
	li $s3, 0
L616:
	beq $zero, $s3, L617
	sne $t0, $t6, $t9
	and $s3, $s3, $t0
	b L618
L617:
	li $s3, 0
L618:
	beq $zero, $s3, L619
	sne $t0, $t6, $s0
	and $s3, $s3, $t0
	b L620
L619:
	li $s3, 0
L620:
	beq $zero, $s3, L621
	sne $t0, $t6, $s7
	and $s3, $s3, $t0
	b L622
L621:
	li $s3, 0
L622:
	beq $zero, $s3, L623
	lw $t0, var_1
	sne $t0, $t6, $t0
	and $s3, $s3, $t0
	b L624
L623:
	li $s3, 0
L624:
	beq $zero, $s3, L625
	lw $t0, var_2
	sne $t0, $t6, $t0
	and $s3, $s3, $t0
	b L626
L625:
	li $s3, 0
L626:
	beq $zero, $s3, L627
	lw $t3, var_3
	sne $t0, $t6, $t3
	and $s3, $s3, $t0
	b L628
L627:
	li $s3, 0
L628:
	beq $zero, $s3, L629
	lw $t3, var_4
	sne $t0, $t6, $t3
	and $s3, $s3, $t0
	b L630
L629:
	li $s3, 0
L630:
	beq $zero, $s3, L631
	sne $t0, $t9, $s0
	and $s3, $s3, $t0
	b L632
L631:
	li $s3, 0
L632:
	beq $zero, $s3, L633
	sne $t0, $t9, $s7
	and $s3, $s3, $t0
	b L634
L633:
	li $s3, 0
L634:
	beq $zero, $s3, L635
	lw $t0, var_1
	sne $t0, $t9, $t0
	and $s3, $s3, $t0
	b L636
L635:
	li $s3, 0
L636:
	beq $zero, $s3, L637
	lw $t0, var_2
	sne $t0, $t9, $t0
	and $s3, $s3, $t0
	b L638
L637:
	li $s3, 0
L638:
	beq $zero, $s3, L639
	lw $t3, var_3
	sne $t0, $t9, $t3
	and $s3, $s3, $t0
	b L640
L639:
	li $s3, 0
L640:
	beq $zero, $s3, L641
	lw $t3, var_4
	sne $t0, $t9, $t3
	and $s3, $s3, $t0
	b L642
L641:
	li $s3, 0
L642:
	beq $zero, $s3, L643
	sne $t0, $s0, $s7
	and $s3, $s3, $t0
	b L644
L643:
	li $s3, 0
L644:
	beq $zero, $s3, L645
	lw $t0, var_1
	sne $t0, $s0, $t0
	and $s3, $s3, $t0
	b L646
L645:
	li $s3, 0
L646:
	beq $zero, $s3, L647
	lw $t0, var_2
	sne $t0, $s0, $t0
	and $s3, $s3, $t0
	b L648
L647:
	li $s3, 0
L648:
	beq $zero, $s3, L649
	lw $t3, var_3
	sne $t0, $s0, $t3
	and $s3, $s3, $t0
	b L650
L649:
	li $s3, 0
L650:
	beq $zero, $s3, L651
	lw $t3, var_4
	sne $t0, $s0, $t3
	and $s3, $s3, $t0
	b L652
L651:
	li $s3, 0
L652:
	beq $zero, $s3, L653
	lw $t0, var_1
	sne $t0, $s7, $t0
	and $s3, $s3, $t0
	b L654
L653:
	li $s3, 0
L654:
	beq $zero, $s3, L655
	lw $t0, var_2
	sne $t0, $s7, $t0
	and $s3, $s3, $t0
	b L656
L655:
	li $s3, 0
L656:
	beq $zero, $s3, L657
	lw $t3, var_3
	sne $t0, $s7, $t3
	and $s3, $s3, $t0
	b L658
L657:
	li $s3, 0
L658:
	beq $zero, $s3, L659
	lw $t3, var_4
	sne $t0, $s7, $t3
	and $s3, $s3, $t0
	b L660
L659:
	li $s3, 0
L660:
	beq $zero, $s3, L661
	lw $t0, var_2
	lw $t3, var_3
	sne $t0, $t0, $t3
	and $s3, $s3, $t0
	b L662
L661:
	li $s3, 0
L662:
	beq $zero, $s3, L663
	lw $t0, var_1
	lw $t3, var_4
	sne $t0, $t0, $t3
	and $s3, $s3, $t0
	b L664
L663:
	li $s3, 0
L664:
	beq $zero, $s3, L665
	lw $s3, var_5
	add $s3, $s3, 1
	sw $s3, var_5
	b L666
L665:
L666:
L584:
	add $s7, $s7, 1
	b L582
L583:
L581:
	add $s0, $s0, 1
	b L579
L580:
L578:
	add $t9, $t9, 1
	b L576
L577:
L575:
	add $t6, $t6, 1
	b L573
L574:
L572:
	add $s2, $s2, 1
	b L570
L571:
L569:
	add $s5, $s5, 1
	b L567
L568:
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
