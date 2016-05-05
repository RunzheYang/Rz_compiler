.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
.text
main:
	sub $sp, $sp, 748
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $t5, $v0
	li $s2, 0
	move $s3, $s2
	move $t6, $s3
	move $s4, $t6
	sub $s5, $t5, 1
	move $t4, $s5
	li $t1, 0
	li $t0, 0
	mul $t1, $t5, $t5
	mul $t1, $t1, 4
	add $a0, $zero, $t1
	li $v0, 9
	syscall
	move $t2, $v0
	li $t1, 0
L170:
	mul $s6, $t5, $t5
	slt $s6, $t1, $s6
	beq $zero, $s6, L171
	mul $s6, $t1, 4
	add $s6, $t2, $s6
	li $t3, 0
	sw $t3, 0($s6)
L172:
	add $t1, $t1, 1
	b L170
L171:
	mul $t1, $t5, $t5
	mul $t1, $t1, 4
	add $a0, $zero, $t1
	li $v0, 9
	syscall
	move $s6, $v0
	li $t1, 0
L173:
	mul $t3, $t5, $t5
	slt $t3, $t1, $t3
	beq $zero, $t3, L174
	mul $t3, $t1, 4
	add $t3, $s6, $t3
	li $t7, 0
	sw $t7, 0($t3)
L175:
	add $t1, $t1, 1
	b L173
L174:
	mul $t1, $t5, 4
	add $a0, $zero, $t1
	li $v0, 9
	syscall
	move $t3, $v0
	li $t1, 0
L176:
	slt $t7, $t1, $t5
	beq $zero, $t7, L177
	mul $t7, $t5, 4
	add $a0, $zero, $t7
	li $v0, 9
	syscall
	mul $t7, $t1, 4
	add $t7, $t3, $t7
	move $s0, $v0
	sw $s0, 0($t7)
	li $t7, 0
L179:
	slt $s0, $t7, $t5
	beq $zero, $s0, L180
	mul $s0, $t1, 4
	add $s0, $t3, $s0
	lw $s0, 0($s0)
	mul $t9, $t7, 4
	add $s0, $s0, $t9
	li $t9, -1
	sw $t9, 0($s0)
L181:
	add $t7, $t7, 1
	b L179
L180:
L178:
	add $t1, $t1, 1
	b L176
L177:
	la $t1, 0($t2)
	move $t7, $s3
	sw $t7, 0($t1)
	la $t1, 0($s6)
	move $t7, $s2
	sw $t7, 0($t1)
	mul $s3, $s3, 4
	add $s3, $t3, $s3
	lw $s3, 0($s3)
	mul $s2, $s2, 4
	add $s2, $s3, $s2
	lw $s2, 0($s2)
L182:
	sle $s2, $s4, $t6
	beq $zero, $s2, L183
	mul $s2, $s4, 4
	add $s2, $t2, $s2
	lw $s2, 0($s2)
	mul $s2, $s2, 4
	add $s2, $t3, $s2
	lw $s2, 0($s2)
	mul $s3, $s4, 4
	add $s3, $s6, $s3
	lw $s3, 0($s3)
	mul $s3, $s3, 4
	add $s2, $s2, $s3
	lw $s2, 0($s2)
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	sub $s3, $s3, 1
	mul $t1, $s4, 4
	add $t1, $s6, $t1
	lw $t1, 0($t1)
	sub $t1, $t1, 2
	move $a0, $s3
	move $a1, $t5
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s6, 44($sp)
	sw $t3, 48($sp)
	jal f_check
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $s6, 44($sp)
	lw $t3, 48($sp)
	move $t7, $v0
	beq $zero, $t7, L184
	move $a0, $t1
	move $a1, $t5
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 52($sp)
	sw $s6, 44($sp)
	sw $t3, 48($sp)
	jal f_check
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 52($sp)
	lw $s6, 44($sp)
	lw $t3, 48($sp)
	move $s0, $v0
	and $t8, $t7, $s0
L184:
	beq $zero, $t8, L185
	mul $t7, $s3, 4
	add $t7, $t3, $t7
	lw $t7, 0($t7)
	mul $s0, $t1, 4
	add $t7, $t7, $s0
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	and $s7, $t8, $t7
L185:
	beq $zero, $s7, L186
	add $t6, $t6, 1
	mul $t7, $t6, 4
	add $t7, $t2, $t7
	move $s0, $s3
	sw $s0, 0($t7)
	mul $t7, $t6, 4
	add $t7, $s6, $t7
	move $s0, $t1
	sw $s0, 0($t7)
	add $t7, $s2, 1
	mul $s0, $s3, 4
	add $s0, $t3, $s0
	lw $s0, 0($s0)
	mul $t9, $t1, 4
	add $s0, $s0, $t9
	sw $t7, 0($s0)
	seq $s3, $s3, $t4
	beq $zero, $s3, L187
	seq $t1, $t1, $s5
	and $s1, $s3, $t1
L187:
	beq $zero, $s1, L188
	li $t0, 1
L188:
L186:
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	sub $s3, $s3, 1
	mul $t1, $s4, 4
	add $t1, $s6, $t1
	lw $t1, 0($t1)
	add $t1, $t1, 2
	move $a0, $s3
	move $a1, $t5
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s1, 64($sp)
	jal f_check
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t3, 48($sp)
	lw $s1, 64($sp)
	move $t7, $v0
	beq $zero, $t7, L189
	move $a0, $t1
	move $a1, $t5
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s1, 64($sp)
	sw $t7, 68($sp)
	jal f_check
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t3, 48($sp)
	lw $s1, 64($sp)
	lw $t7, 68($sp)
	move $s0, $v0
	sw $t1, 72($sp)
	and $t1, $t7, $s0
L189:
	beq $zero, $t1, L190
	mul $t7, $s3, 4
	add $t7, $t3, $t7
	lw $t7, 0($t7)
	mul $s0, $t1, 4
	add $t7, $t7, $s0
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	sw $s0, 76($sp)
	and $s0, $t1, $t7
L190:
	beq $zero, $s0, L191
	add $t6, $t6, 1
	mul $t7, $t6, 4
	add $t7, $t2, $t7
	move $t9, $s3
	sw $t9, 0($t7)
	mul $t7, $t6, 4
	add $t7, $s6, $t7
	move $t9, $t1
	sw $t9, 0($t7)
	add $t7, $s2, 1
	mul $t9, $s3, 4
	add $t9, $t3, $t9
	lw $t9, 0($t9)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $t3, $t9, $t3
	sw $t7, 0($t3)
	seq $s3, $s3, $t4
	beq $zero, $s3, L192
	seq $t3, $t1, $s5
	sw $s4, 12($sp)
	and $s4, $s3, $t3
L192:
	beq $zero, $s4, L193
	li $t0, 1
L193:
L191:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	add $s3, $s3, 1
	mul $t3, $s4, 4
	add $t3, $s6, $t3
	lw $t3, 0($t3)
	sub $t3, $t3, 2
	move $t1, $t3
	move $a0, $s3
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $s1, 64($sp)
	sw $t1, 88($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 92($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 96($sp)
	lw $s1, 64($sp)
	lw $t1, 88($sp)
	sw $t1, 100($sp)
	move $t7, $v0
	beq $zero, $t7, L194
	move $a0, $t1
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s4, 80($sp)
	sw $t8, 56($sp)
	sw $t7, 104($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s1, 64($sp)
	sw $t1, 88($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 108($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $t7, 104($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 112($sp)
	lw $s1, 64($sp)
	lw $t1, 88($sp)
	sw $t1, 116($sp)
	move $t9, $v0
	sw $t7, 120($sp)
	and $t7, $t7, $t9
L194:
	beq $zero, $t7, L195
	mul $t9, $s3, 4
	add $t9, $t3, $t9
	lw $t9, 0($t9)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $t3, $t9, $t3
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	sw $t7, 124($sp)
	and $t7, $t7, $t3
L195:
	beq $zero, $t7, L196
	add $t6, $t6, 1
	mul $t3, $t6, 4
	add $t3, $t2, $t3
	move $t9, $s3
	sw $t9, 0($t3)
	mul $t3, $t6, 4
	add $t3, $s6, $t3
	move $t9, $t1
	sw $t9, 0($t3)
	add $t3, $s2, 1
	mul $t9, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 128($sp)
	add $t9, $t3, $t9
	lw $t9, 0($t9)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $t3, $t9, $t3
	lw $t3, 128($sp)
	sw $t3, 132($sp)
	move $t9, $t3
	sw $t9, 0($t3)
	seq $s3, $s3, $t4
	beq $zero, $s3, L197
	seq $t3, $t1, $s5
	sw $t7, 136($sp)
	and $t7, $s3, $t3
L197:
	beq $zero, $t7, L198
	li $t0, 1
L198:
L196:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	add $s3, $s3, 1
	mul $t3, $s4, 4
	add $t3, $s6, $t3
	lw $t3, 0($t3)
	add $t3, $t3, 2
	move $t1, $t3
	move $a0, $s3
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 140($sp)
	sw $t7, 144($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t1, 88($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 152($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 156($sp)
	lw $t3, 48($sp)
	sw $t3, 160($sp)
	lw $t7, 144($sp)
	sw $t7, 164($sp)
	lw $s1, 64($sp)
	lw $t7, 148($sp)
	sw $t7, 168($sp)
	lw $t1, 88($sp)
	sw $t1, 172($sp)
	move $t9, $v0
	beq $zero, $t9, L199
	move $a0, $t1
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s4, 80($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 140($sp)
	sw $t3, 48($sp)
	sw $t7, 144($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t1, 88($sp)
	sw $t9, 176($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 180($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 184($sp)
	lw $t3, 48($sp)
	sw $t3, 128($sp)
	lw $t7, 144($sp)
	sw $t7, 188($sp)
	lw $s1, 64($sp)
	lw $t7, 148($sp)
	sw $t7, 192($sp)
	lw $t1, 88($sp)
	sw $t1, 196($sp)
	lw $t9, 176($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	sw $t9, 200($sp)
	and $t9, $t9, $t3
L199:
	beq $zero, $t9, L200
	mul $t3, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 204($sp)
	sw $t3, 48($sp)
	add $t3, $t3, $t3
	lw $t3, 0($t3)
	sw $t9, 208($sp)
	mul $t9, $t1, 4
	add $t3, $t3, $t9
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	lw $t9, 208($sp)
	sw $t9, 212($sp)
	sw $t9, 216($sp)
	and $t9, $t9, $t3
L200:
	beq $zero, $t9, L201
	add $t6, $t6, 1
	mul $t3, $t6, 4
	add $t3, $t2, $t3
	sw $t9, 208($sp)
	move $t9, $s3
	sw $t9, 0($t3)
	mul $t3, $t6, 4
	add $t3, $s6, $t3
	sw $s2, 36($sp)
	move $s2, $t1
	sw $s2, 0($t3)
	lw $s2, 36($sp)
	sw $s2, 220($sp)
	add $t3, $s2, 1
	sw $s2, 36($sp)
	mul $s2, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 224($sp)
	add $s2, $t3, $s2
	lw $s2, 0($s2)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $s2, $s2, $t3
	sw $t3, 0($s2)
	seq $s2, $s3, $t4
	beq $zero, $s2, L202
	seq $s3, $t1, $s5
	sw $s3, 228($sp)
	and $s3, $s2, $s3
L202:
	beq $zero, $s3, L203
	li $t0, 1
L203:
L201:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	mul $s2, $s4, 4
	add $s2, $t2, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 2
	move $s3, $s2
	mul $s2, $s4, 4
	add $s2, $s6, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 1
	move $t1, $s2
	move $a0, $s3
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 140($sp)
	sw $t7, 144($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t1, 88($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 240($sp)
	lw $t9, 208($sp)
	sw $t9, 244($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 248($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 252($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s3, 236($sp)
	sw $s3, 256($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 260($sp)
	lw $t3, 48($sp)
	sw $t3, 264($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $s1, 64($sp)
	lw $t7, 148($sp)
	sw $t7, 268($sp)
	lw $t1, 88($sp)
	sw $t1, 272($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	beq $zero, $t3, L204
	move $a0, $t1
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t9, 208($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s4, 80($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 276($sp)
	sw $t7, 144($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t1, 88($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 280($sp)
	lw $t9, 208($sp)
	sw $t9, 284($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 288($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 292($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s3, 236($sp)
	sw $s3, 296($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 300($sp)
	lw $t3, 276($sp)
	lw $t3, 48($sp)
	sw $t3, 304($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $s1, 64($sp)
	lw $t7, 148($sp)
	sw $t7, 308($sp)
	lw $t1, 88($sp)
	sw $t1, 312($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	sw $t1, 88($sp)
	and $t1, $t3, $t3
L204:
	beq $zero, $t1, L205
	mul $t3, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 316($sp)
	sw $t3, 48($sp)
	add $t3, $t3, $t3
	lw $t3, 0($t3)
	sw $t9, 208($sp)
	mul $t9, $t1, 4
	add $t3, $t3, $t9
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	sw $t3, 320($sp)
	and $t3, $t1, $t3
L205:
	beq $zero, $t3, L206
	add $t6, $t6, 1
	sw $t3, 324($sp)
	mul $t3, $t6, 4
	add $t3, $t2, $t3
	sw $s2, 36($sp)
	move $s2, $s3
	sw $s2, 0($t3)
	mul $s2, $t6, 4
	add $s2, $s6, $s2
	move $t3, $t1
	sw $t3, 0($s2)
	lw $s2, 36($sp)
	sw $s2, 328($sp)
	add $t3, $s2, 1
	sw $s2, 36($sp)
	mul $s2, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 332($sp)
	add $s2, $t3, $s2
	lw $s2, 0($s2)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $s2, $s2, $t3
	sw $t3, 0($s2)
	seq $s2, $s3, $t4
	beq $zero, $s2, L207
	seq $t3, $t1, $s5
	sw $t3, 336($sp)
	and $t3, $s2, $t3
L207:
	beq $zero, $t3, L208
	li $t0, 1
L208:
L206:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	mul $s2, $s4, 4
	add $s2, $t2, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 2
	move $s3, $s2
	mul $s2, $s4, 4
	add $s2, $s6, $s2
	lw $s2, 0($s2)
	add $s2, $s2, 1
	move $t1, $s2
	move $a0, $s3
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 144($sp)
	sw $t1, 340($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t3, 344($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 348($sp)
	lw $t9, 208($sp)
	sw $t9, 352($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 356($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 360($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s3, 236($sp)
	sw $s3, 364($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 368($sp)
	lw $t3, 48($sp)
	sw $t3, 372($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $t1, 340($sp)
	sw $t1, 376($sp)
	lw $t3, 324($sp)
	sw $t3, 380($sp)
	lw $s1, 64($sp)
	lw $t7, 148($sp)
	sw $t7, 104($sp)
	lw $t1, 88($sp)
	sw $t1, 384($sp)
	lw $t3, 344($sp)
	sw $t3, 388($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	beq $zero, $t3, L209
	move $a0, $t1
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t9, 208($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $t3, 392($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s4, 80($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 144($sp)
	sw $t1, 340($sp)
	sw $t3, 324($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t1, 88($sp)
	sw $t3, 344($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 396($sp)
	lw $t9, 208($sp)
	sw $t9, 400($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $t3, 392($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 404($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 408($sp)
	lw $t2, 40($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s3, 236($sp)
	sw $s3, 412($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 416($sp)
	lw $t3, 48($sp)
	sw $t3, 420($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $t1, 340($sp)
	sw $t1, 424($sp)
	lw $t3, 324($sp)
	sw $t3, 276($sp)
	lw $s1, 64($sp)
	lw $t7, 148($sp)
	sw $t7, 428($sp)
	lw $t1, 88($sp)
	sw $t1, 432($sp)
	lw $t3, 344($sp)
	sw $t3, 436($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	sw $t1, 88($sp)
	and $t1, $t3, $t3
L209:
	beq $zero, $t1, L210
	sw $t9, 208($sp)
	mul $t9, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 440($sp)
	sw $t3, 48($sp)
	add $t3, $t3, $t9
	sw $t1, 444($sp)
	lw $t1, 0($t3)
	sw $t3, 324($sp)
	mul $t3, $t1, 4
	sw $s2, 36($sp)
	add $s2, $t1, $t3
	lw $s2, 0($s2)
	seq $s2, $s2, -1
	lw $t1, 444($sp)
	sw $t1, 448($sp)
	sw $s2, 452($sp)
	and $s2, $t1, $s2
L210:
	beq $zero, $s2, L211
	add $t6, $t6, 1
	sw $s2, 456($sp)
	mul $s2, $t6, 4
	add $s2, $t2, $s2
	sw $t1, 444($sp)
	move $t1, $s3
	sw $t1, 0($s2)
	mul $s2, $t6, 4
	add $s2, $s6, $s2
	sw $s1, 64($sp)
	move $s1, $t1
	sw $s1, 0($s2)
	lw $s2, 36($sp)
	sw $s2, 460($sp)
	add $s1, $s2, 1
	sw $s2, 36($sp)
	mul $s2, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 464($sp)
	add $s2, $t3, $s2
	lw $s2, 0($s2)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $s2, $s2, $t3
	sw $s1, 0($s2)
	seq $s2, $s3, $t4
	beq $zero, $s2, L212
	seq $s1, $t1, $s5
	sw $s2, 468($sp)
	and $s2, $s2, $s1
L212:
	beq $zero, $s2, L213
	li $t0, 1
L213:
L211:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	mul $s1, $s4, 4
	add $s1, $t2, $s1
	lw $s1, 0($s1)
	add $s1, $s1, 2
	move $s3, $s1
	mul $s1, $s4, 4
	add $s1, $s6, $s1
	lw $s1, 0($s1)
	sub $s1, $s1, 1
	move $t1, $s1
	move $a0, $s3
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $s2, 472($sp)
	sw $t7, 144($sp)
	sw $t1, 340($sp)
	sw $t7, 148($sp)
	sw $t3, 344($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 476($sp)
	lw $t9, 208($sp)
	sw $t9, 480($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 484($sp)
	lw $t1, 444($sp)
	sw $t1, 488($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 444($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 492($sp)
	lw $t2, 40($sp)
	lw $s2, 456($sp)
	sw $s2, 496($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s3, 236($sp)
	sw $s3, 500($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 504($sp)
	lw $s2, 472($sp)
	sw $s2, 508($sp)
	lw $t3, 48($sp)
	sw $t3, 512($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $t1, 340($sp)
	sw $t1, 516($sp)
	lw $t3, 324($sp)
	sw $t3, 520($sp)
	lw $s1, 64($sp)
	sw $s1, 524($sp)
	lw $t7, 148($sp)
	sw $t7, 528($sp)
	lw $t1, 88($sp)
	sw $t1, 532($sp)
	lw $t3, 344($sp)
	sw $t3, 324($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	beq $zero, $t3, L214
	move $a0, $t1
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t9, 208($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s2, 456($sp)
	sw $s4, 80($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $s2, 472($sp)
	sw $t7, 144($sp)
	sw $t1, 340($sp)
	sw $t3, 536($sp)
	sw $s1, 64($sp)
	sw $t7, 148($sp)
	sw $t1, 88($sp)
	sw $t3, 344($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 540($sp)
	lw $t9, 208($sp)
	sw $t9, 544($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 548($sp)
	lw $t1, 444($sp)
	sw $t1, 552($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 444($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 556($sp)
	lw $t2, 40($sp)
	lw $s2, 456($sp)
	sw $s2, 560($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	lw $s3, 236($sp)
	sw $s3, 564($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 52($sp)
	lw $s2, 472($sp)
	sw $s2, 568($sp)
	lw $t3, 48($sp)
	sw $t3, 572($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $t1, 340($sp)
	sw $t1, 24($sp)
	lw $t3, 536($sp)
	sw $t3, 48($sp)
	lw $t3, 324($sp)
	sw $t3, 536($sp)
	lw $s1, 64($sp)
	sw $s1, 576($sp)
	lw $t7, 148($sp)
	sw $t7, 580($sp)
	lw $t1, 88($sp)
	sw $t1, 584($sp)
	lw $t3, 344($sp)
	sw $t3, 324($sp)
	sw $s2, 456($sp)
	move $s2, $v0
	lw $t3, 536($sp)
	sw $t3, 344($sp)
	sw $t3, 536($sp)
	and $t3, $t3, $s2
L214:
	beq $zero, $t3, L215
	sw $t9, 208($sp)
	mul $t9, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 588($sp)
	sw $t3, 48($sp)
	add $t3, $t3, $t9
	sw $s2, 36($sp)
	lw $s2, 0($t3)
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	sw $s1, 64($sp)
	mul $s1, $t1, 4
	add $s1, $s2, $s1
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	sw $s2, 472($sp)
	and $s2, $t3, $s1
L215:
	beq $zero, $s2, L216
	add $t6, $t6, 1
	mul $s1, $t6, 4
	add $s1, $t2, $s1
	sw $t8, 56($sp)
	move $t8, $s3
	sw $t8, 0($s1)
	mul $t8, $t6, 4
	add $t8, $s6, $t8
	move $s1, $t1
	sw $s1, 0($t8)
	lw $s2, 36($sp)
	sw $s2, 592($sp)
	add $t8, $s2, 1
	mul $s1, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 596($sp)
	add $s1, $t3, $s1
	lw $s1, 0($s1)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $s1, $s1, $t3
	sw $t8, 0($s1)
	seq $t8, $s3, $t4
	beq $zero, $t8, L217
	seq $s1, $t1, $s5
	sw $t9, 600($sp)
	and $t9, $t8, $s1
L217:
	beq $zero, $t9, L218
	li $t0, 1
L218:
L216:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	mul $t8, $s4, 4
	add $t8, $t2, $t8
	lw $t8, 0($t8)
	add $t8, $t8, 2
	move $s3, $t8
	mul $t8, $s4, 4
	add $t8, $s6, $t8
	lw $t8, 0($t8)
	add $t8, $t8, 1
	move $t1, $t8
	move $a0, $s3
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $t9, 604($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 144($sp)
	sw $t1, 340($sp)
	sw $t3, 608($sp)
	sw $s2, 612($sp)
	sw $t7, 148($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 616($sp)
	lw $t9, 208($sp)
	sw $t9, 620($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $t9, 604($sp)
	sw $t9, 208($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 604($sp)
	lw $t1, 444($sp)
	sw $t1, 624($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 444($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 628($sp)
	lw $t2, 40($sp)
	lw $s2, 456($sp)
	sw $s2, 632($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	sw $t8, 636($sp)
	lw $s3, 236($sp)
	sw $s3, 640($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 644($sp)
	lw $s2, 472($sp)
	sw $s2, 36($sp)
	lw $t3, 48($sp)
	sw $t3, 648($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $t1, 340($sp)
	sw $t1, 24($sp)
	lw $t3, 324($sp)
	sw $t3, 652($sp)
	lw $t3, 608($sp)
	sw $t3, 324($sp)
	lw $s1, 64($sp)
	sw $s1, 656($sp)
	lw $s2, 612($sp)
	sw $s2, 472($sp)
	lw $t7, 148($sp)
	sw $t7, 660($sp)
	lw $t1, 88($sp)
	sw $t1, 340($sp)
	lw $t3, 344($sp)
	sw $t3, 664($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	beq $zero, $t3, L219
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	move $a0, $t1
	move $a1, $t5
	sw $s0, 84($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s5, 16($sp)
	sw $t9, 232($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t3, 668($sp)
	sw $t2, 40($sp)
	sw $s2, 456($sp)
	sw $s4, 80($sp)
	sw $t8, 56($sp)
	sw $s3, 236($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t7, 144($sp)
	sw $t3, 608($sp)
	sw $s1, 64($sp)
	sw $s2, 612($sp)
	sw $t7, 148($sp)
	sw $t3, 344($sp)
	jal f_check
	lw $s0, 84($sp)
	sw $s0, 672($sp)
	lw $t9, 208($sp)
	sw $t9, 676($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $t9, 604($sp)
	sw $t9, 208($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t9, 232($sp)
	sw $t9, 604($sp)
	lw $t1, 444($sp)
	sw $t1, 680($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 444($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	sw $s2, 684($sp)
	lw $t3, 668($sp)
	lw $t2, 40($sp)
	lw $s2, 456($sp)
	sw $s2, 36($sp)
	lw $s4, 80($sp)
	sw $s4, 12($sp)
	lw $t8, 56($sp)
	sw $t8, 688($sp)
	lw $s3, 236($sp)
	sw $s3, 692($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t7, 140($sp)
	sw $t7, 696($sp)
	lw $s2, 472($sp)
	sw $s2, 700($sp)
	lw $t3, 48($sp)
	sw $t3, 704($sp)
	lw $t7, 144($sp)
	sw $t7, 140($sp)
	lw $t1, 340($sp)
	sw $t1, 24($sp)
	lw $t3, 324($sp)
	sw $t3, 708($sp)
	lw $t3, 608($sp)
	sw $t3, 324($sp)
	lw $s1, 64($sp)
	sw $s1, 712($sp)
	lw $s2, 612($sp)
	sw $s2, 472($sp)
	lw $t7, 148($sp)
	sw $t7, 716($sp)
	lw $t1, 88($sp)
	sw $t1, 340($sp)
	lw $t3, 344($sp)
	sw $t3, 720($sp)
	sw $t3, 48($sp)
	move $t3, $v0
	sw $t1, 88($sp)
	and $t1, $t3, $t3
L219:
	beq $zero, $t1, L220
	sw $s2, 456($sp)
	mul $s2, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 724($sp)
	sw $t3, 48($sp)
	add $t3, $t3, $s2
	sw $s1, 64($sp)
	lw $s1, 0($t3)
	lw $t1, 24($sp)
	sw $t1, 728($sp)
	sw $t8, 56($sp)
	mul $t8, $t1, 4
	add $t8, $s1, $t8
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	lw $t1, 728($sp)
	sw $t1, 24($sp)
	sw $t1, 728($sp)
	and $t1, $t1, $t8
L220:
	beq $zero, $t1, L221
	add $t6, $t6, 1
	mul $t8, $t6, 4
	add $t8, $t2, $t8
	move $s1, $s3
	sw $s1, 0($t8)
	mul $t8, $t6, 4
	add $t8, $s6, $t8
	lw $t1, 24($sp)
	sw $t1, 732($sp)
	move $s1, $t1
	sw $s1, 0($t8)
	lw $s2, 36($sp)
	sw $s2, 736($sp)
	add $t8, $s2, 1
	mul $s1, $s3, 4
	lw $t3, 48($sp)
	sw $t3, 740($sp)
	add $s1, $t3, $s1
	lw $s1, 0($s1)
	sw $t3, 48($sp)
	mul $t3, $t1, 4
	add $s1, $s1, $t3
	sw $t8, 0($s1)
	seq $t8, $s3, $t4
	beq $zero, $t8, L222
	seq $t1, $t1, $s5
	sw $s1, 744($sp)
	and $s1, $t8, $t1
L222:
	beq $zero, $s1, L223
	li $t0, 1
L223:
L221:
	seq $t1, $t0, 1
	beq $zero, $t1, L224
	b L183
L224:
	lw $s4, 12($sp)
	sw $s4, 80($sp)
	add $s4, $s4, 1
	b L182
L183:
	seq $t5, $t0, 1
	beq $zero, $t5, L225
	mul $t5, $t4, 4
	lw $t3, 48($sp)
	sw $t3, 608($sp)
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	move $a0, $t5
	jal f_toString
	move $t5, $v0
	move $a0, $t5
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
L225:
	la $a0, msg_1
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 748
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 748
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
	move $t5, $a0
	move $s2, $a1
	slt $s2, $t5, $s2
	beq $zero, $s2, L169
	sge $t5, $t5, 0
	and $s3, $s2, $t5
L169:
	move $v0, $s3
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
