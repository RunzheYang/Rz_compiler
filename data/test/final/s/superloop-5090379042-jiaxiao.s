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
L584:
	lw $s3, var_0
	sle $s3, $s5, $s3
	beq $zero, $s3, L585
	li $s2, 1
L587:
	lw $s3, var_0
	sle $s3, $s2, $s3
	beq $zero, $s3, L588
	li $t6, 1
L590:
	lw $s3, var_0
	sle $s3, $t6, $s3
	beq $zero, $s3, L591
	li $t9, 1
L593:
	lw $s3, var_0
	sle $s3, $t9, $s3
	beq $zero, $s3, L594
	li $s0, 1
L596:
	lw $s3, var_0
	sle $s3, $s0, $s3
	beq $zero, $s3, L597
	li $s7, 1
L599:
	lw $s3, var_0
	sle $s3, $s7, $s3
	beq $zero, $s3, L600
	sne $s3, $s5, $s2
	beq $zero, $s3, L602
	sne $t0, $s5, $t6
	and $s3, $s3, $t0
	b L603
L602:
	li $s3, 0
L603:
	beq $zero, $s3, L604
	sne $t0, $s5, $t9
	and $s3, $s3, $t0
	b L605
L604:
	li $s3, 0
L605:
	beq $zero, $s3, L606
	sne $t0, $s5, $s0
	and $s3, $s3, $t0
	b L607
L606:
	li $s3, 0
L607:
	beq $zero, $s3, L608
	sne $t0, $s5, $s7
	and $s3, $s3, $t0
	b L609
L608:
	li $s3, 0
L609:
	beq $zero, $s3, L610
	lw $t0, var_1
	sne $t0, $s5, $t0
	and $s3, $s3, $t0
	b L611
L610:
	li $s3, 0
L611:
	beq $zero, $s3, L612
	lw $t0, var_2
	sne $t0, $s5, $t0
	and $s3, $s3, $t0
	b L613
L612:
	li $s3, 0
L613:
	beq $zero, $s3, L614
	lw $t3, var_3
	sne $t0, $s5, $t3
	and $s3, $s3, $t0
	b L615
L614:
	li $s3, 0
L615:
	beq $zero, $s3, L616
	lw $t3, var_4
	sne $t0, $s5, $t3
	and $s3, $s3, $t0
	b L617
L616:
	li $s3, 0
L617:
	beq $zero, $s3, L618
	sne $t0, $s2, $t6
	and $s3, $s3, $t0
	b L619
L618:
	li $s3, 0
L619:
	beq $zero, $s3, L620
	sne $t0, $s2, $t9
	and $s3, $s3, $t0
	b L621
L620:
	li $s3, 0
L621:
	beq $zero, $s3, L622
	sne $t0, $s2, $s0
	and $s3, $s3, $t0
	b L623
L622:
	li $s3, 0
L623:
	beq $zero, $s3, L624
	sne $t0, $s2, $s7
	and $s3, $s3, $t0
	b L625
L624:
	li $s3, 0
L625:
	beq $zero, $s3, L626
	lw $t0, var_1
	sne $t0, $s2, $t0
	and $s3, $s3, $t0
	b L627
L626:
	li $s3, 0
L627:
	beq $zero, $s3, L628
	lw $t0, var_2
	sne $t0, $s2, $t0
	and $s3, $s3, $t0
	b L629
L628:
	li $s3, 0
L629:
	beq $zero, $s3, L630
	lw $t3, var_3
	sne $t0, $s2, $t3
	and $s3, $s3, $t0
	b L631
L630:
	li $s3, 0
L631:
	beq $zero, $s3, L632
	lw $t3, var_4
	sne $t0, $s2, $t3
	and $s3, $s3, $t0
	b L633
L632:
	li $s3, 0
L633:
	beq $zero, $s3, L634
	sne $t0, $t6, $t9
	and $s3, $s3, $t0
	b L635
L634:
	li $s3, 0
L635:
	beq $zero, $s3, L636
	sne $t0, $t6, $s0
	and $s3, $s3, $t0
	b L637
L636:
	li $s3, 0
L637:
	beq $zero, $s3, L638
	sne $t0, $t6, $s7
	and $s3, $s3, $t0
	b L639
L638:
	li $s3, 0
L639:
	beq $zero, $s3, L640
	lw $t0, var_1
	sne $t0, $t6, $t0
	and $s3, $s3, $t0
	b L641
L640:
	li $s3, 0
L641:
	beq $zero, $s3, L642
	lw $t0, var_2
	sne $t0, $t6, $t0
	and $s3, $s3, $t0
	b L643
L642:
	li $s3, 0
L643:
	beq $zero, $s3, L644
	lw $t3, var_3
	sne $t0, $t6, $t3
	and $s3, $s3, $t0
	b L645
L644:
	li $s3, 0
L645:
	beq $zero, $s3, L646
	lw $t3, var_4
	sne $t0, $t6, $t3
	and $s3, $s3, $t0
	b L647
L646:
	li $s3, 0
L647:
	beq $zero, $s3, L648
	sne $t0, $t9, $s0
	and $s3, $s3, $t0
	b L649
L648:
	li $s3, 0
L649:
	beq $zero, $s3, L650
	sne $t0, $t9, $s7
	and $s3, $s3, $t0
	b L651
L650:
	li $s3, 0
L651:
	beq $zero, $s3, L652
	lw $t0, var_1
	sne $t0, $t9, $t0
	and $s3, $s3, $t0
	b L653
L652:
	li $s3, 0
L653:
	beq $zero, $s3, L654
	lw $t0, var_2
	sne $t0, $t9, $t0
	and $s3, $s3, $t0
	b L655
L654:
	li $s3, 0
L655:
	beq $zero, $s3, L656
	lw $t3, var_3
	sne $t0, $t9, $t3
	and $s3, $s3, $t0
	b L657
L656:
	li $s3, 0
L657:
	beq $zero, $s3, L658
	lw $t3, var_4
	sne $t0, $t9, $t3
	and $s3, $s3, $t0
	b L659
L658:
	li $s3, 0
L659:
	beq $zero, $s3, L660
	sne $t0, $s0, $s7
	and $s3, $s3, $t0
	b L661
L660:
	li $s3, 0
L661:
	beq $zero, $s3, L662
	lw $t0, var_1
	sne $t0, $s0, $t0
	and $s3, $s3, $t0
	b L663
L662:
	li $s3, 0
L663:
	beq $zero, $s3, L664
	lw $t0, var_2
	sne $t0, $s0, $t0
	and $s3, $s3, $t0
	b L665
L664:
	li $s3, 0
L665:
	beq $zero, $s3, L666
	lw $t3, var_3
	sne $t0, $s0, $t3
	and $s3, $s3, $t0
	b L667
L666:
	li $s3, 0
L667:
	beq $zero, $s3, L668
	lw $t3, var_4
	sne $t0, $s0, $t3
	and $s3, $s3, $t0
	b L669
L668:
	li $s3, 0
L669:
	beq $zero, $s3, L670
	lw $t0, var_1
	sne $t0, $s7, $t0
	and $s3, $s3, $t0
	b L671
L670:
	li $s3, 0
L671:
	beq $zero, $s3, L672
	lw $t0, var_2
	sne $t0, $s7, $t0
	and $s3, $s3, $t0
	b L673
L672:
	li $s3, 0
L673:
	beq $zero, $s3, L674
	lw $t3, var_3
	sne $t0, $s7, $t3
	and $s3, $s3, $t0
	b L675
L674:
	li $s3, 0
L675:
	beq $zero, $s3, L676
	lw $t3, var_4
	sne $t0, $s7, $t3
	and $s3, $s3, $t0
	b L677
L676:
	li $s3, 0
L677:
	beq $zero, $s3, L678
	lw $t0, var_2
	lw $t3, var_3
	sne $t0, $t0, $t3
	and $s3, $s3, $t0
	b L679
L678:
	li $s3, 0
L679:
	beq $zero, $s3, L680
	lw $t0, var_1
	lw $t3, var_4
	sne $t0, $t0, $t3
	and $s3, $s3, $t0
	b L681
L680:
	li $s3, 0
L681:
	beq $zero, $s3, L682
	lw $s3, var_5
	add $s3, $s3, 1
	sw $s3, var_5
	b L683
L682:
L683:
L601:
	add $s7, $s7, 1
	b L599
L600:
L598:
	add $s0, $s0, 1
	b L596
L597:
L595:
	add $t9, $t9, 1
	b L593
L594:
L592:
	add $t6, $t6, 1
	b L590
L591:
L589:
	add $s2, $s2, 1
	b L587
L588:
L586:
	add $s5, $s5, 1
	b L584
L585:
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
