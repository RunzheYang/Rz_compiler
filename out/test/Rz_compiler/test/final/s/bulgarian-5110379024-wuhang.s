.data
.align 2
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
	.word	0
msg_2:	.asciiz	""
	.word	79
msg_3:	.asciiz	"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i"
	.word	12
msg_4:	.asciiz	"Let's start!"
	.word	6
msg_5:	.asciiz	"step :"
	.word	7
msg_6:	.asciiz	"Total: "
	.word	8
msg_7:	.asciiz	" step(s)"
var_0:	.word	0
var_1:	.word	0
var_2:	.word	0
var_3:	.word	0
var_4:	.word	48271
var_5:	.word	2147483647
var_6:	.word	0
var_7:	.word	0
var_8:	.word	1
.text
f_random:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	lw $t0, var_4
	lw $s0, var_8
	lw $t4, var_6
	rem $s0, $s0, $t4
	mul $t0, $t0, $s0
	lw $t9, var_7
	lw $s0, var_8
	lw $t4, var_6
	div $s0, $s0, $t4
	mul $s0, $t9, $s0
	sub $t0, $t0, $s0
	sge $s0, $t0, 0
	beq $zero, $s0, L47
	move $s0, $t0
	sw $s0, var_8
L47:
	lw $s0, var_5
	add $t0, $t0, $s0
	move $s0, $t0
	sw $s0, var_8
	lw $s0, var_8
	move $v0, $s0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_move:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $t0, 0
L82:
	lw $s0, var_2
	slt $s0, $t0, $s0
	beq $zero, $s0, L83
	lw $t4, var_3
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	lw $t4, 0($s0)
	sub $t4, $t4, 1
	sw $t4, 0($s0)
	add $t0, $t0, 1
L84:
	b L82
L83:
	lw $t4, var_3
	lw $s0, var_2
	mul $t0, $s0, 4
	add $t0, $t4, $t0
	sw $s0, 0($t0)
	lw $s0, var_2
	add $s0, $s0, 1
	sw $s0, var_2
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_pd:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
L48:
	lw $s0, var_1
	sle $s0, $s0, $t0
	beq $zero, $s0, L49
	lw $s0, var_1
	add $t4, $s0, 1
	mul $s0, $s0, $t4
	div $s0, $s0, 2
	seq $s0, $t0, $s0
	beq $zero, $s0, L51
	li $v0, 1
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
L51:
L50:
	lw $s0, var_1
	add $s0, $s0, 1
	sw $s0, var_1
	b L48
L49:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_swap:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $a1
	lw $t4, var_3
	mul $t9, $t0, 4
	add $t4, $t4, $t9
	lw $t4, 0($t4)
	move $t9, $t4
	lw $t4, var_3
	mul $s4, $s0, 4
	add $t4, $t4, $s4
	lw $s4, 0($t4)
	lw $t4, var_3
	mul $t0, $t0, 4
	add $t0, $t4, $t0
	move $t4, $s4
	sw $t4, 0($t0)
	lw $t4, var_3
	mul $t0, $s0, 4
	add $t0, $t4, $t0
	move $s0, $t9
	sw $s0, 0($t0)
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_merge:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $t0, 0
L70:
	lw $s0, var_2
	slt $s0, $t0, $s0
	beq $zero, $s0, L71
	lw $t4, var_3
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	lw $s0, 0($s0)
	seq $s0, $s0, 0
	beq $zero, $s0, L73
	add $s0, $t0, 1
	move $t9, $s0
L74:
	lw $s0, var_2
	slt $s0, $t9, $s0
	beq $zero, $s0, L75
	lw $t4, var_3
	mul $s0, $t9, 4
	add $s0, $t4, $s0
	lw $s0, 0($s0)
	sne $s0, $s0, 0
	beq $zero, $s0, L77
	move $a0, $t0
	move $a1, $t9
	sw $t0, 4($sp)
	jal f_swap
	lw $t0, 4($sp)
	b L75
L77:
L76:
	add $t9, $t9, 1
	b L74
L75:
L73:
L72:
	add $t0, $t0, 1
	b L70
L71:
	li $t0, 0
L78:
	lw $s0, var_2
	slt $s0, $t0, $s0
	beq $zero, $s0, L79
	lw $t4, var_3
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	lw $s0, 0($s0)
	seq $s0, $s0, 0
	beq $zero, $s0, L81
	move $s0, $t0
	sw $s0, var_2
	b L79
L81:
L80:
	add $t0, $t0, 1
	b L78
L79:
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
f_show:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $t0, 0
L52:
	lw $s0, var_2
	slt $s0, $t0, $s0
	beq $zero, $s0, L53
	lw $t4, var_3
	mul $s0, $t0, 4
	add $s0, $t4, $s0
	lw $s0, 0($s0)
	move $a0, $s0
	sw $t0, 4($sp)
	jal f_toString
	lw $t0, 4($sp)
	move $a0, $v0
	sw $t0, 4($sp)
	jal f_stringConcatenate
	lw $t0, 4($sp)
	la $a0, msg_0
	li $v0, 4
	syscall
L54:
	add $t0, $t0, 1
	b L52
L53:
	la $a0, msg_2
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
main:
	sub $sp, $sp, 16
	sw $ra, 0($sp)
	li $s4, 0
	li $t2, 0
	li $t7, 0
	li $t0, 210
	sw $t0, var_0
	li $s0, 0
	sw $s0, var_1
	li $a0, 400
	li $v0, 9
	syscall
	move $t4, $v0
	sw $t4, var_3
	lw $s0, var_5
	lw $t0, var_4
	div $t0, $s0, $t0
	move $t4, $t0
	sw $t4, var_6
	lw $s0, var_5
	lw $t0, var_4
	rem $t0, $s0, $t0
	move $t9, $t0
	sw $t9, var_7
	lw $t0, var_0
	move $a0, $t0
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t7, 12($sp)
	jal f_pd
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t7, 12($sp)
	seq $v0, $zero, $v0
	beq $zero, $v0, L85
	la $a0, msg_3
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	li $v0, 1
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
L85:
	la $a0, msg_4
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	li $a0, 3654898
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t7, 12($sp)
	jal f_initialize
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t7, 12($sp)
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t7, 12($sp)
	jal f_random
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t7, 12($sp)
	rem $t0, $v0, 10
	add $t0, $t0, 1
	move $s0, $t0
	sw $s0, var_2
	lw $s0, var_2
	move $a0, $s0
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t7, 12($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t7, 12($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
L86:
	lw $s0, var_2
	sub $t0, $s0, 1
	slt $t0, $s4, $t0
	beq $zero, $t0, L87
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t7, 12($sp)
	jal f_random
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t7, 12($sp)
	rem $t0, $v0, 10
	add $t0, $t0, 1
	lw $t4, var_3
	mul $s0, $s4, 4
	add $s0, $t4, $s0
	sw $t0, 0($s0)
L89:
	lw $t4, var_3
	mul $t0, $s4, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $s0, $t0, $t2
	lw $t0, var_0
	sgt $t0, $s0, $t0
	beq $zero, $t0, L90
	sw $s4, 4($sp)
	sw $t2, 8($sp)
	sw $t7, 12($sp)
	jal f_random
	lw $s4, 4($sp)
	lw $t2, 8($sp)
	lw $t7, 12($sp)
	rem $t0, $v0, 10
	add $t0, $t0, 1
	lw $t4, var_3
	mul $s0, $s4, 4
	add $s0, $t4, $s0
	sw $t0, 0($s0)
	b L89
L90:
	lw $t4, var_3
	mul $t0, $s4, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t2, $t0
	move $t2, $t0
L88:
	add $s4, $s4, 1
	b L86
L87:
	lw $t0, var_0
	sub $t0, $t0, $t2
	lw $t4, var_3
	lw $s0, var_2
	sub $s0, $s0, 1
	mul $s0, $s0, 4
	add $s0, $t4, $s0
	sw $t0, 0($s0)
	sw $t7, 12($sp)
	jal f_show
	lw $t7, 12($sp)
	sw $t7, 12($sp)
	jal f_merge
	lw $t7, 12($sp)
L91:
	sw $t7, 12($sp)
	jal f_win
	lw $t7, 12($sp)
	seq $v0, $zero, $v0
	beq $zero, $v0, L92
	add $t7, $t7, 1
	move $a0, $t7
	sw $t7, 12($sp)
	jal f_toString
	lw $t7, 12($sp)
	la $a0, msg_5
	move $a1, $v0
	sw $t7, 12($sp)
	jal f_stringConcatenate
	lw $t7, 12($sp)
	move $a0, $v0
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	sw $t7, 12($sp)
	jal f_move
	lw $t7, 12($sp)
	sw $t7, 12($sp)
	jal f_merge
	lw $t7, 12($sp)
	sw $t7, 12($sp)
	jal f_show
	lw $t7, 12($sp)
	b L91
L92:
	move $a0, $t7
	jal f_toString
	la $a0, msg_6
	move $a1, $v0
	jal f_stringConcatenate
	move $a0, $v0
	jal f_stringConcatenate
	la $a0, msg_7
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 16
	jr $ra
	b main_end
main_end:
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
f_initialize:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t0, $a0
	move $s0, $t0
	sw $s0, var_8
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_win:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 400
	li $v0, 9
	syscall
	move $t0, $v0
	lw $s0, var_2
	lw $s0, var_1
	sne $s0, $s0, $s0
	beq $zero, $s0, L55
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
L55:
	li $t9, 0
L56:
	lw $s0, var_2
	slt $s0, $t9, $s0
	beq $zero, $s0, L57
	lw $t4, var_3
	mul $s0, $t9, 4
	add $s0, $t4, $s0
	lw $s0, 0($s0)
	mul $t4, $t9, 4
	add $t4, $t0, $t4
	sw $s0, 0($t4)
L58:
	add $t9, $t9, 1
	b L56
L57:
	li $t4, 0
L59:
	lw $s0, var_2
	sub $s0, $s0, 1
	slt $s0, $t4, $s0
	beq $zero, $s0, L60
	add $s0, $t4, 1
	move $t9, $s0
L62:
	lw $s0, var_2
	slt $s0, $t9, $s0
	beq $zero, $s0, L63
	mul $s0, $t4, 4
	add $s0, $t0, $s0
	lw $s0, 0($s0)
	mul $s4, $t9, 4
	add $s4, $t0, $s4
	lw $s4, 0($s4)
	sgt $s0, $s0, $s4
	beq $zero, $s0, L65
	mul $s0, $t4, 4
	add $s0, $t0, $s0
	lw $s0, 0($s0)
	mul $s4, $t9, 4
	add $s4, $t0, $s4
	lw $s4, 0($s4)
	mul $t2, $t4, 4
	add $t2, $t0, $t2
	sw $s4, 0($t2)
	mul $s4, $t9, 4
	add $s4, $t0, $s4
	sw $s0, 0($s4)
L65:
L64:
	add $t9, $t9, 1
	b L62
L63:
L61:
	add $t4, $t4, 1
	b L59
L60:
	li $t4, 0
L66:
	lw $s0, var_2
	slt $s0, $t4, $s0
	beq $zero, $s0, L67
	mul $s0, $t4, 4
	add $s0, $t0, $s0
	lw $s0, 0($s0)
	add $t9, $t4, 1
	sne $s0, $s0, $t9
	beq $zero, $s0, L69
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
L69:
L68:
	add $t4, $t4, 1
	b L66
L67:
	li $v0, 1
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
