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
	lw $t5, var_4
	lw $s2, var_8
	lw $s3, var_6
	rem $s2, $s2, $s3
	mul $t5, $t5, $s2
	lw $t6, var_7
	lw $s2, var_8
	lw $s3, var_6
	div $s2, $s2, $s3
	mul $s2, $t6, $s2
	sub $t5, $t5, $s2
	sge $s2, $t5, 0
	beq $zero, $s2, L47
	move $s2, $t5
	sw $s2, var_8
L47:
	lw $s2, var_5
	add $t5, $t5, $s2
	move $s2, $t5
	sw $s2, var_8
	lw $s2, var_8
	move $v0, $s2
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_move:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $t5, 0
L82:
	lw $s2, var_2
	slt $s2, $t5, $s2
	beq $zero, $s2, L83
	lw $s3, var_3
	mul $s2, $t5, 4
	add $s2, $s3, $s2
	lw $s3, 0($s2)
	sub $s3, $s3, 1
	sw $s3, 0($s2)
	add $t5, $t5, 1
L84:
	b L82
L83:
	lw $s3, var_3
	lw $s2, var_2
	mul $t5, $s2, 4
	add $t5, $s3, $t5
	sw $s2, 0($t5)
	lw $s2, var_2
	add $s2, $s2, 1
	sw $s2, var_2
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_pd:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	move $t5, $a0
L48:
	lw $s2, var_1
	sle $s2, $s2, $t5
	beq $zero, $s2, L49
	lw $s2, var_1
	add $s3, $s2, 1
	mul $s2, $s2, $s3
	div $s2, $s2, 2
	seq $s2, $t5, $s2
	beq $zero, $s2, L51
	li $v0, 1
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
L51:
L50:
	lw $s2, var_1
	add $s2, $s2, 1
	sw $s2, var_1
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
	move $t5, $a0
	move $s2, $a1
	lw $s3, var_3
	mul $t6, $t5, 4
	add $s3, $s3, $t6
	lw $s3, 0($s3)
	move $t6, $s3
	lw $s3, var_3
	mul $s4, $s2, 4
	add $s3, $s3, $s4
	lw $s4, 0($s3)
	lw $s3, var_3
	mul $t5, $t5, 4
	add $t5, $s3, $t5
	move $s3, $s4
	sw $s3, 0($t5)
	lw $s3, var_3
	mul $t5, $s2, 4
	add $t5, $s3, $t5
	move $s2, $t6
	sw $s2, 0($t5)
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_merge:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $t5, 0
L70:
	lw $s2, var_2
	slt $s2, $t5, $s2
	beq $zero, $s2, L71
	lw $s3, var_3
	mul $s2, $t5, 4
	add $s2, $s3, $s2
	lw $s2, 0($s2)
	seq $s2, $s2, 0
	beq $zero, $s2, L73
	add $s2, $t5, 1
	move $t6, $s2
L74:
	lw $s2, var_2
	slt $s2, $t6, $s2
	beq $zero, $s2, L75
	lw $s3, var_3
	mul $s2, $t6, 4
	add $s2, $s3, $s2
	lw $s2, 0($s2)
	sne $s2, $s2, 0
	beq $zero, $s2, L77
	move $a0, $t5
	move $a1, $t6
	sw $t5, 4($sp)
	jal f_swap
	lw $t5, 4($sp)
	b L75
L77:
L76:
	add $t6, $t6, 1
	b L74
L75:
L73:
L72:
	add $t5, $t5, 1
	b L70
L71:
	li $t5, 0
L78:
	lw $s2, var_2
	slt $s2, $t5, $s2
	beq $zero, $s2, L79
	lw $s3, var_3
	mul $s2, $t5, 4
	add $s2, $s3, $s2
	lw $s2, 0($s2)
	seq $s2, $s2, 0
	beq $zero, $s2, L81
	move $s2, $t5
	sw $s2, var_2
	b L79
L81:
L80:
	add $t5, $t5, 1
	b L78
L79:
	lw $ra, 0($sp)
	add $sp, $sp, 8
	jr $ra
f_show:
	sub $sp, $sp, 8
	sw $ra, 0($sp)
	li $t5, 0
L52:
	lw $s2, var_2
	slt $s2, $t5, $s2
	beq $zero, $s2, L53
	lw $s3, var_3
	mul $s2, $t5, 4
	add $s2, $s3, $s2
	lw $s2, 0($s2)
	move $a0, $s2
	sw $t5, 4($sp)
	jal f_toString
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	la $a1, msg_0
	sw $t5, 4($sp)
	jal f_stringConcatenate
	lw $t5, 4($sp)
	move $s2, $v0
	move $a0, $s2
	li $v0, 4
	syscall
L54:
	add $t5, $t5, 1
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
	li $s5, 0
	li $t4, 0
	li $t5, 210
	sw $t5, var_0
	li $s2, 0
	sw $s2, var_1
	li $a0, 400
	li $v0, 9
	syscall
	move $s3, $v0
	sw $s3, var_3
	lw $s2, var_5
	lw $t5, var_4
	div $t5, $s2, $t5
	move $s3, $t5
	sw $s3, var_6
	lw $s2, var_5
	lw $t5, var_4
	rem $t5, $s2, $t5
	move $t6, $t5
	sw $t6, var_7
	lw $t5, var_0
	move $a0, $t5
	sw $s4, 4($sp)
	sw $s5, 8($sp)
	sw $t4, 12($sp)
	jal f_pd
	lw $s4, 4($sp)
	lw $s5, 8($sp)
	lw $t4, 12($sp)
	move $t5, $v0
	seq $t5, $zero, $t5
	beq $zero, $t5, L85
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
	sw $s5, 8($sp)
	sw $t4, 12($sp)
	jal f_initialize
	lw $s4, 4($sp)
	lw $s5, 8($sp)
	lw $t4, 12($sp)
	sw $s4, 4($sp)
	sw $s5, 8($sp)
	sw $t4, 12($sp)
	jal f_random
	lw $s4, 4($sp)
	lw $s5, 8($sp)
	lw $t4, 12($sp)
	move $t5, $v0
	rem $t5, $t5, 10
	add $t5, $t5, 1
	move $s2, $t5
	sw $s2, var_2
	lw $s2, var_2
	move $a0, $s2
	sw $s4, 4($sp)
	sw $s5, 8($sp)
	sw $t4, 12($sp)
	jal f_toString
	lw $s4, 4($sp)
	lw $s5, 8($sp)
	lw $t4, 12($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
L86:
	lw $s2, var_2
	sub $t5, $s2, 1
	slt $t5, $s4, $t5
	beq $zero, $t5, L87
	sw $s4, 4($sp)
	sw $s5, 8($sp)
	sw $t4, 12($sp)
	jal f_random
	lw $s4, 4($sp)
	lw $s5, 8($sp)
	lw $t4, 12($sp)
	move $t5, $v0
	rem $t5, $t5, 10
	add $t5, $t5, 1
	lw $s3, var_3
	mul $s2, $s4, 4
	add $s2, $s3, $s2
	sw $t5, 0($s2)
L89:
	lw $s3, var_3
	mul $t5, $s4, 4
	add $t5, $s3, $t5
	lw $t5, 0($t5)
	add $s2, $t5, $s5
	lw $t5, var_0
	sgt $t5, $s2, $t5
	beq $zero, $t5, L90
	sw $s4, 4($sp)
	sw $s5, 8($sp)
	sw $t4, 12($sp)
	jal f_random
	lw $s4, 4($sp)
	lw $s5, 8($sp)
	lw $t4, 12($sp)
	move $t5, $v0
	rem $t5, $t5, 10
	add $t5, $t5, 1
	lw $s3, var_3
	mul $s2, $s4, 4
	add $s2, $s3, $s2
	sw $t5, 0($s2)
	b L89
L90:
	lw $s3, var_3
	mul $t5, $s4, 4
	add $t5, $s3, $t5
	lw $t5, 0($t5)
	add $t5, $s5, $t5
	move $s5, $t5
L88:
	add $s4, $s4, 1
	b L86
L87:
	lw $t5, var_0
	sub $t5, $t5, $s5
	lw $s3, var_3
	lw $s2, var_2
	sub $s2, $s2, 1
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	sw $t5, 0($s2)
	sw $t4, 12($sp)
	jal f_show
	lw $t4, 12($sp)
	sw $t4, 12($sp)
	jal f_merge
	lw $t4, 12($sp)
L91:
	sw $t4, 12($sp)
	jal f_win
	lw $t4, 12($sp)
	move $t5, $v0
	seq $t5, $zero, $t5
	beq $zero, $t5, L92
	add $t4, $t4, 1
	move $a0, $t4
	sw $t4, 12($sp)
	jal f_toString
	lw $t4, 12($sp)
	move $t5, $v0
	la $a0, msg_5
	move $a1, $t5
	sw $t4, 12($sp)
	jal f_stringConcatenate
	lw $t4, 12($sp)
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	sw $t4, 12($sp)
	jal f_move
	lw $t4, 12($sp)
	sw $t4, 12($sp)
	jal f_merge
	lw $t4, 12($sp)
	sw $t4, 12($sp)
	jal f_show
	lw $t4, 12($sp)
	b L91
L92:
	move $a0, $t4
	jal f_toString
	move $t5, $v0
	la $a0, msg_6
	move $a1, $t5
	jal f_stringConcatenate
	move $t5, $v0
	move $a0, $t5
	la $a1, msg_7
	jal f_stringConcatenate
	move $t5, $v0
	move $a0, $t5
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
	move $t5, $a0
	move $s2, $t5
	sw $s2, var_8
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
f_win:
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	li $a0, 400
	li $v0, 9
	syscall
	move $t5, $v0
	lw $s2, var_2
	lw $s2, var_1
	sne $s2, $s2, $s2
	beq $zero, $s2, L55
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
L55:
	li $t6, 0
L56:
	lw $s2, var_2
	slt $s2, $t6, $s2
	beq $zero, $s2, L57
	lw $s3, var_3
	mul $s2, $t6, 4
	add $s2, $s3, $s2
	lw $s2, 0($s2)
	mul $s3, $t6, 4
	add $s3, $t5, $s3
	sw $s2, 0($s3)
L58:
	add $t6, $t6, 1
	b L56
L57:
	li $s3, 0
L59:
	lw $s2, var_2
	sub $s2, $s2, 1
	slt $s2, $s3, $s2
	beq $zero, $s2, L60
	add $s2, $s3, 1
	move $t6, $s2
L62:
	lw $s2, var_2
	slt $s2, $t6, $s2
	beq $zero, $s2, L63
	mul $s2, $s3, 4
	add $s2, $t5, $s2
	lw $s2, 0($s2)
	mul $s4, $t6, 4
	add $s4, $t5, $s4
	lw $s4, 0($s4)
	sgt $s2, $s2, $s4
	beq $zero, $s2, L65
	mul $s2, $s3, 4
	add $s2, $t5, $s2
	lw $s2, 0($s2)
	mul $s4, $t6, 4
	add $s4, $t5, $s4
	lw $s4, 0($s4)
	mul $s5, $s3, 4
	add $s5, $t5, $s5
	sw $s4, 0($s5)
	mul $s4, $t6, 4
	add $s4, $t5, $s4
	sw $s2, 0($s4)
L65:
L64:
	add $t6, $t6, 1
	b L62
L63:
L61:
	add $s3, $s3, 1
	b L59
L60:
	li $s3, 0
L66:
	lw $s2, var_2
	slt $s2, $s3, $s2
	beq $zero, $s2, L67
	mul $s2, $s3, 4
	add $s2, $t5, $s2
	lw $s2, 0($s2)
	add $t6, $s3, 1
	sne $s2, $s2, $t6
	beq $zero, $s2, L69
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	jr $ra
L69:
L68:
	add $s3, $s3, 1
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
