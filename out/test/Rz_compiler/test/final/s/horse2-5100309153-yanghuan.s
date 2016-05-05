.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
.text
main:
	sub $sp, $sp, 600
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $t0, $v0
	li $s0, 0
	move $t4, $s0
	move $t9, $t4
	move $s4, $t9
	sub $t2, $t0, 1
	move $t7, $t2
	li $s5, 0
	li $s1, 0
	mul $s5, $t0, $t0
	mul $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $t8, $v0
	li $s5, 0
L170:
	mul $s6, $t0, $t0
	slt $s6, $s5, $s6
	beq $zero, $s6, L171
	mul $s6, $s5, 4
	add $s6, $t8, $s6
	li $t3, 0
	sw $t3, 0($s6)
L172:
	add $s5, $s5, 1
	b L170
L171:
	mul $s5, $t0, $t0
	mul $s5, $s5, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $s6, $v0
	li $s5, 0
L173:
	mul $t3, $t0, $t0
	slt $t3, $s5, $t3
	beq $zero, $t3, L174
	mul $t3, $s5, 4
	add $t3, $s6, $t3
	li $t1, 0
	sw $t1, 0($t3)
L175:
	add $s5, $s5, 1
	b L173
L174:
	mul $s5, $t0, 4
	add $a0, $zero, $s5
	li $v0, 9
	syscall
	move $t3, $v0
	li $s5, 0
L176:
	slt $t1, $s5, $t0
	beq $zero, $t1, L177
	mul $t1, $t0, 4
	add $a0, $zero, $t1
	li $v0, 9
	syscall
	mul $t1, $s5, 4
	add $t1, $t3, $t1
	move $t5, $v0
	sw $t5, 0($t1)
	li $t1, 0
L179:
	slt $t5, $t1, $t0
	beq $zero, $t5, L180
	mul $t5, $s5, 4
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	mul $s2, $t1, 4
	add $t5, $t5, $s2
	li $s2, -1
	sw $s2, 0($t5)
L181:
	add $t1, $t1, 1
	b L179
L180:
L178:
	add $s5, $s5, 1
	b L176
L177:
	la $s5, 0($t8)
	move $t1, $t4
	sw $t1, 0($s5)
	la $s5, 0($s6)
	move $t1, $s0
	sw $t1, 0($s5)
	mul $t4, $t4, 4
	add $t4, $t3, $t4
	lw $t4, 0($t4)
	mul $s0, $s0, 4
	add $s0, $t4, $s0
	lw $s0, 0($s0)
L182:
	sle $s0, $s4, $t9
	beq $zero, $s0, L183
	mul $s0, $s4, 4
	add $s0, $t8, $s0
	lw $s0, 0($s0)
	mul $s0, $s0, 4
	add $s0, $t3, $s0
	lw $s0, 0($s0)
	mul $t4, $s4, 4
	add $t4, $s6, $t4
	lw $t4, 0($t4)
	mul $t4, $t4, 4
	add $s0, $s0, $t4
	lw $s0, 0($s0)
	mul $t4, $s4, 4
	add $t4, $t8, $t4
	lw $t4, 0($t4)
	sub $t4, $t4, 1
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	sub $s5, $s5, 2
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $s6, 20($sp)
	sw $t3, 24($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $s6, 20($sp)
	lw $t3, 24($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	beq $zero, $v0, L184
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $s6, 20($sp)
	sw $t3, 24($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $s6, 20($sp)
	lw $t3, 24($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	and $t6, $v0, $v0
L184:
	beq $zero, $t6, L185
	mul $t1, $t4, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	mul $t5, $s5, 4
	add $t1, $t1, $t5
	lw $t1, 0($t1)
	seq $t1, $t1, -1
	and $s7, $t6, $t1
L185:
	beq $zero, $s7, L186
	add $t9, $t9, 1
	mul $t1, $t9, 4
	add $t1, $t8, $t1
	move $t5, $t4
	sw $t5, 0($t1)
	mul $t1, $t9, 4
	add $t1, $s6, $t1
	move $t5, $s5
	sw $t5, 0($t1)
	add $t1, $s0, 1
	mul $t5, $t4, 4
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	sw $t1, 0($t5)
	seq $t4, $t4, $t7
	beq $zero, $t4, L187
	seq $s5, $s5, $t2
	and $s3, $t4, $s5
L187:
	beq $zero, $s3, L188
	li $s1, 1
L188:
L186:
	mul $t4, $s4, 4
	add $t4, $t8, $t4
	lw $t4, 0($t4)
	sub $t4, $t4, 1
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	add $s5, $s5, 2
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t3, 24($sp)
	sw $s3, 60($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $t6, 52($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t3, 24($sp)
	lw $s3, 60($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	beq $zero, $v0, L189
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t3, 24($sp)
	sw $s3, 60($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $t6, 52($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t3, 24($sp)
	lw $s3, 60($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s3, 60($sp)
	and $s3, $v0, $v0
L189:
	beq $zero, $s3, L190
	mul $t1, $t4, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	mul $t5, $s5, 4
	add $t1, $t1, $t5
	lw $t1, 0($t1)
	seq $t1, $t1, -1
	sw $s0, 64($sp)
	and $s0, $s3, $t1
L190:
	beq $zero, $s0, L191
	add $t9, $t9, 1
	mul $t1, $t9, 4
	add $t1, $t8, $t1
	move $t5, $t4
	sw $t5, 0($t1)
	mul $t1, $t9, 4
	add $t1, $s6, $t1
	move $t5, $s5
	sw $t5, 0($t1)
	add $t1, $s0, 1
	mul $t5, $t4, 4
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	sw $t1, 0($t5)
	seq $t4, $t4, $t7
	beq $zero, $t4, L192
	seq $s5, $s5, $t2
	sw $s0, 68($sp)
	and $s0, $t4, $s5
L192:
	beq $zero, $s0, L193
	li $s1, 1
L193:
L191:
	mul $t4, $s4, 4
	add $t4, $t8, $t4
	lw $t4, 0($t4)
	add $t4, $t4, 1
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	sub $s5, $s5, 2
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $s0, 72($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t3, 24($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 84($sp)
	lw $t8, 16($sp)
	lw $t6, 52($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t3, 24($sp)
	lw $s3, 60($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $s0, 80($sp)
	sw $s0, 88($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	beq $zero, $v0, L194
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $s0, 72($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t3, 24($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 92($sp)
	lw $t8, 16($sp)
	lw $t6, 52($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t3, 24($sp)
	lw $s3, 60($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $s0, 80($sp)
	sw $s0, 96($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $t3, 100($sp)
	and $t3, $v0, $v0
L194:
	beq $zero, $t3, L195
	mul $t1, $t4, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	mul $t5, $s5, 4
	add $t1, $t1, $t5
	lw $t1, 0($t1)
	seq $t1, $t1, -1
	sw $s5, 104($sp)
	and $s5, $t3, $t1
L195:
	beq $zero, $s5, L196
	add $t9, $t9, 1
	mul $t1, $t9, 4
	add $t1, $t8, $t1
	move $t5, $t4
	sw $t5, 0($t1)
	mul $t1, $t9, 4
	add $t1, $s6, $t1
	move $t5, $s5
	sw $t5, 0($t1)
	add $t1, $s0, 1
	mul $t5, $t4, 4
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	sw $t1, 0($t5)
	seq $t4, $t4, $t7
	beq $zero, $t4, L197
	seq $t1, $s5, $t2
	sw $t1, 108($sp)
	and $t1, $t4, $t1
L197:
	beq $zero, $t1, L198
	li $s1, 1
L198:
L196:
	mul $t4, $s4, 4
	add $t4, $t8, $t4
	lw $t4, 0($t4)
	add $t4, $t4, 1
	mul $t5, $s4, 4
	add $t5, $s6, $t5
	lw $t5, 0($t5)
	add $t5, $t5, 2
	move $s5, $t5
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $s0, 72($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $t3, 112($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $s5, 116($sp)
	sw $t3, 24($sp)
	sw $t1, 120($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 124($sp)
	lw $t8, 16($sp)
	lw $t6, 52($sp)
	lw $t3, 112($sp)
	sw $t3, 128($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $s5, 116($sp)
	sw $s5, 132($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 136($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	beq $zero, $v0, L199
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t3, 24($sp)
	sw $t1, 120($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 140($sp)
	lw $t8, 16($sp)
	lw $t6, 52($sp)
	lw $t3, 112($sp)
	sw $t3, 144($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $s5, 116($sp)
	sw $s5, 148($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 152($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	sw $t1, 156($sp)
	and $t1, $v0, $v0
L199:
	beq $zero, $t1, L200
	mul $t5, $t4, 4
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	mul $s2, $s5, 4
	add $t5, $t5, $s2
	lw $t5, 0($t5)
	seq $t5, $t5, -1
	sw $s2, 160($sp)
	and $s2, $t1, $t5
L200:
	beq $zero, $s2, L201
	add $t9, $t9, 1
	mul $t5, $t9, 4
	add $t5, $t8, $t5
	sw $t1, 120($sp)
	move $t1, $t4
	sw $t1, 0($t5)
	mul $t5, $t9, 4
	add $t5, $s6, $t5
	sw $s1, 8($sp)
	move $s1, $s5
	sw $s1, 0($t5)
	add $s1, $s0, 1
	mul $t5, $t4, 4
	add $t5, $t3, $t5
	lw $t5, 0($t5)
	sw $t3, 24($sp)
	mul $t3, $s5, 4
	add $t3, $t5, $t3
	sw $s1, 0($t3)
	seq $t4, $t4, $t7
	beq $zero, $t4, L202
	seq $s5, $s5, $t2
	sw $t4, 164($sp)
	and $t4, $t4, $s5
L202:
	beq $zero, $t4, L203
	lw $s1, 8($sp)
	sw $s1, 168($sp)
	li $s1, 1
L203:
L201:
	mul $s5, $s4, 4
	add $s5, $t8, $s5
	lw $s5, 0($s5)
	sub $s5, $s5, 2
	move $t4, $s5
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	sub $s5, $s5, 1
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t4, 172($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $s3, 76($sp)
	sw $t1, 176($sp)
	sw $s0, 80($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	sw $s1, 184($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 188($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 192($sp)
	lw $t6, 52($sp)
	lw $t3, 112($sp)
	sw $t3, 196($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $s5, 116($sp)
	sw $s5, 200($sp)
	lw $t3, 24($sp)
	sw $t3, 204($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 208($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t1, 176($sp)
	sw $t1, 212($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $s2, 180($sp)
	sw $s2, 216($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	beq $zero, $v0, L204
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t4, 172($sp)
	sw $t6, 52($sp)
	sw $t3, 112($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t3, 24($sp)
	sw $t1, 120($sp)
	sw $s3, 76($sp)
	sw $t1, 176($sp)
	sw $s0, 80($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	sw $s1, 220($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 224($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 228($sp)
	lw $t6, 52($sp)
	lw $t3, 112($sp)
	sw $t3, 232($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $s5, 116($sp)
	sw $s5, 236($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 240($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t1, 176($sp)
	sw $t1, 244($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $s2, 180($sp)
	sw $s2, 248($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	sw $t5, 252($sp)
	and $t5, $v0, $v0
L204:
	beq $zero, $t5, L205
	sw $t1, 120($sp)
	mul $t1, $t4, 4
	sw $s1, 8($sp)
	add $s1, $t3, $t1
	lw $s1, 0($s1)
	sw $t4, 172($sp)
	mul $t4, $s5, 4
	add $s1, $s1, $t4
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	and $s1, $t5, $s1
L205:
	beq $zero, $s1, L206
	add $t9, $t9, 1
	sw $s1, 256($sp)
	mul $s1, $t9, 4
	add $s1, $t8, $s1
	sw $s1, 260($sp)
	move $s1, $t4
	lw $s1, 260($sp)
	sw $s1, 264($sp)
	sw $s1, 0($s1)
	mul $s1, $t9, 4
	add $s1, $s6, $s1
	sw $t3, 24($sp)
	move $t3, $s5
	sw $t3, 0($s1)
	add $s1, $s0, 1
	mul $t3, $t4, 4
	lw $t3, 24($sp)
	sw $t3, 268($sp)
	lw $t3, 268($sp)
	sw $t3, 24($sp)
	add $t3, $t3, $t3
	lw $t3, 0($t3)
	sw $t3, 272($sp)
	mul $t3, $s5, 4
	lw $t3, 272($sp)
	sw $t3, 276($sp)
	lw $t3, 276($sp)
	sw $t3, 272($sp)
	add $t3, $t3, $t3
	sw $s1, 0($t3)
	seq $t4, $t4, $t7
	beq $zero, $t4, L207
	seq $s5, $s5, $t2
	sw $t1, 176($sp)
	and $t1, $t4, $s5
L207:
	beq $zero, $t1, L208
	lw $s1, 8($sp)
	sw $s1, 280($sp)
	li $s1, 1
L208:
L206:
	mul $t4, $s4, 4
	add $t4, $t8, $t4
	lw $t4, 0($t4)
	sub $t4, $t4, 2
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	add $s5, $s5, 1
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t5, 284($sp)
	sw $t1, 288($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 292($sp)
	lw $s1, 8($sp)
	sw $s1, 296($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 300($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 304($sp)
	lw $t6, 52($sp)
	lw $t3, 112($sp)
	sw $t3, 268($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t5, 284($sp)
	sw $t5, 308($sp)
	lw $s5, 116($sp)
	sw $s5, 312($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s1, 256($sp)
	sw $s1, 8($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 316($sp)
	lw $t1, 288($sp)
	sw $t1, 320($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t1, 176($sp)
	sw $t1, 288($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $s2, 180($sp)
	sw $s2, 324($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	beq $zero, $v0, L209
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t4, 172($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t5, 284($sp)
	sw $t3, 24($sp)
	sw $s1, 256($sp)
	sw $t1, 120($sp)
	sw $s3, 76($sp)
	sw $t1, 176($sp)
	sw $s0, 80($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	sw $s1, 328($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 332($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 336($sp)
	lw $t6, 52($sp)
	lw $t3, 112($sp)
	sw $t3, 340($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t5, 284($sp)
	sw $t5, 344($sp)
	lw $s5, 116($sp)
	sw $s5, 348($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s1, 256($sp)
	sw $s1, 8($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 352($sp)
	lw $t1, 288($sp)
	sw $t1, 356($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t1, 176($sp)
	sw $t1, 288($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $s2, 180($sp)
	sw $s2, 360($sp)
	lw $t0, 28($sp)
	lw $t9, 32($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	sw $t1, 176($sp)
	and $t1, $v0, $v0
L209:
	beq $zero, $t1, L210
	sw $t1, 120($sp)
	mul $t1, $t4, 4
	sw $s1, 256($sp)
	add $s1, $t3, $t1
	lw $s1, 0($s1)
	sw $t4, 172($sp)
	mul $t4, $s5, 4
	add $s1, $s1, $t4
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	sw $t9, 364($sp)
	and $t9, $t1, $s1
L210:
	beq $zero, $t9, L211
	add $s1, $t9, 1
	move $t9, $s1
	mul $s1, $t9, 4
	add $s1, $t8, $s1
	sw $t1, 368($sp)
	move $t1, $t4
	sw $t1, 0($s1)
	mul $s1, $t9, 4
	add $s1, $s6, $s1
	move $t1, $s5
	sw $t1, 0($s1)
	add $s1, $s0, 1
	mul $t1, $t4, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	sw $t3, 24($sp)
	mul $t3, $s5, 4
	add $t3, $t1, $t3
	sw $s1, 0($t3)
	seq $t4, $t4, $t7
	beq $zero, $t4, L212
	seq $s5, $s5, $t2
	sw $t5, 372($sp)
	and $t5, $t4, $s5
L212:
	beq $zero, $t5, L213
	lw $s1, 8($sp)
	sw $s1, 376($sp)
	li $s1, 1
L213:
L211:
	mul $t4, $s4, 4
	add $t4, $t8, $t4
	lw $t4, 0($t4)
	add $t4, $t4, 2
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	sub $s5, $s5, 1
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $t5, 380($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t5, 284($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 384($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 388($sp)
	lw $s1, 8($sp)
	sw $s1, 392($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 396($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 400($sp)
	lw $t6, 52($sp)
	lw $t5, 380($sp)
	sw $t5, 404($sp)
	lw $t3, 112($sp)
	sw $t3, 408($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t5, 284($sp)
	sw $t5, 380($sp)
	lw $s5, 116($sp)
	sw $s5, 412($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s1, 256($sp)
	sw $s1, 8($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 416($sp)
	lw $t1, 288($sp)
	sw $t1, 420($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t1, 176($sp)
	sw $t1, 288($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $t1, 368($sp)
	sw $t1, 176($sp)
	lw $s2, 180($sp)
	lw $t0, 28($sp)
	lw $t9, 384($sp)
	sw $t9, 424($sp)
	lw $t9, 32($sp)
	sw $t9, 384($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	beq $zero, $v0, L214
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t4, 172($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t5, 284($sp)
	sw $t3, 24($sp)
	sw $s1, 256($sp)
	sw $t1, 120($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $t1, 368($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	sw $s1, 428($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 432($sp)
	lw $t6, 52($sp)
	lw $t5, 380($sp)
	sw $t5, 436($sp)
	lw $t3, 112($sp)
	sw $t3, 440($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t5, 284($sp)
	sw $t5, 380($sp)
	lw $s5, 116($sp)
	sw $s5, 444($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s1, 256($sp)
	sw $s1, 8($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 448($sp)
	lw $t1, 288($sp)
	sw $t1, 452($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t1, 176($sp)
	sw $t1, 288($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $t1, 368($sp)
	sw $t1, 176($sp)
	lw $s2, 180($sp)
	lw $t0, 28($sp)
	lw $t9, 384($sp)
	sw $t9, 456($sp)
	lw $t9, 32($sp)
	sw $t9, 384($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	sw $t2, 460($sp)
	and $t2, $v0, $v0
L214:
	beq $zero, $t2, L215
	sw $t1, 120($sp)
	mul $t1, $t4, 4
	sw $s1, 256($sp)
	add $s1, $t3, $t1
	lw $s1, 0($s1)
	sw $s1, 464($sp)
	mul $s1, $s5, 4
	lw $s1, 464($sp)
	sw $s1, 468($sp)
	lw $s1, 468($sp)
	sw $s1, 464($sp)
	add $s1, $s1, $s1
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	sw $t4, 472($sp)
	and $t4, $t2, $s1
L215:
	beq $zero, $t4, L216
	add $t9, $t9, 1
	mul $s1, $t9, 4
	add $s1, $t8, $s1
	sw $t4, 172($sp)
	sw $t4, 0($s1)
	mul $s1, $t9, 4
	add $s1, $s6, $s1
	sw $s1, 476($sp)
	move $s1, $s5
	lw $s1, 476($sp)
	sw $s1, 480($sp)
	sw $s1, 0($s1)
	lw $s0, 12($sp)
	sw $s0, 80($sp)
	add $s1, $s0, 1
	sw $t1, 368($sp)
	mul $t1, $t4, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	sw $t3, 24($sp)
	mul $t3, $s5, 4
	add $t3, $t1, $t3
	sw $s1, 0($t3)
	seq $s1, $t4, $t7
	beq $zero, $s1, L217
	seq $s5, $s5, $t2
	sw $t9, 484($sp)
	and $t9, $s1, $s5
L217:
	beq $zero, $t9, L218
	lw $s1, 8($sp)
	sw $s1, 488($sp)
	li $s1, 1
L218:
L216:
	mul $s5, $s4, 4
	add $s5, $t8, $s5
	lw $s5, 0($s5)
	add $s5, $s5, 2
	move $t4, $s5
	mul $s5, $s4, 4
	add $s5, $s6, $s5
	lw $s5, 0($s5)
	add $s5, $s5, 1
	move $a0, $t4
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $s0, 12($sp)
	sw $t8, 16($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t5, 284($sp)
	sw $t2, 492($sp)
	sw $t4, 496($sp)
	sw $s3, 76($sp)
	sw $t9, 500($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 504($sp)
	lw $s1, 8($sp)
	sw $s1, 476($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 508($sp)
	lw $t6, 52($sp)
	lw $t5, 380($sp)
	sw $t5, 512($sp)
	lw $t3, 112($sp)
	sw $t3, 516($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t5, 284($sp)
	sw $t5, 380($sp)
	lw $s5, 116($sp)
	sw $s5, 520($sp)
	lw $t2, 492($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s1, 256($sp)
	sw $s1, 524($sp)
	lw $t4, 496($sp)
	sw $t4, 528($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 532($sp)
	lw $t1, 288($sp)
	sw $t1, 536($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t9, 500($sp)
	sw $t9, 540($sp)
	lw $t1, 176($sp)
	sw $t1, 288($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $t1, 368($sp)
	sw $t1, 176($sp)
	lw $s2, 180($sp)
	lw $t0, 28($sp)
	lw $t9, 384($sp)
	sw $t9, 500($sp)
	lw $t9, 32($sp)
	sw $t9, 384($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	sw $t2, 492($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	beq $zero, $v0, L219
	move $a0, $s5
	move $a1, $t0
	sw $t4, 4($sp)
	sw $s1, 8($sp)
	sw $t8, 16($sp)
	sw $t4, 172($sp)
	sw $t6, 52($sp)
	sw $s6, 20($sp)
	sw $s7, 56($sp)
	sw $t5, 284($sp)
	sw $t3, 24($sp)
	sw $s1, 256($sp)
	sw $t4, 496($sp)
	sw $t1, 120($sp)
	sw $s3, 76($sp)
	sw $s0, 80($sp)
	sw $t1, 368($sp)
	sw $s2, 180($sp)
	sw $t0, 28($sp)
	sw $t9, 32($sp)
	sw $s4, 36($sp)
	sw $t2, 40($sp)
	sw $t7, 44($sp)
	sw $s5, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $s1, 8($sp)
	sw $s1, 544($sp)
	lw $s0, 12($sp)
	lw $s0, 72($sp)
	sw $s0, 12($sp)
	lw $t8, 16($sp)
	lw $t4, 172($sp)
	sw $t4, 548($sp)
	lw $t6, 52($sp)
	lw $t5, 380($sp)
	sw $t5, 552($sp)
	lw $t3, 112($sp)
	sw $t3, 556($sp)
	lw $s6, 20($sp)
	lw $s7, 56($sp)
	lw $t5, 284($sp)
	sw $t5, 380($sp)
	lw $s5, 116($sp)
	sw $s5, 560($sp)
	lw $t2, 492($sp)
	lw $t3, 24($sp)
	sw $t3, 112($sp)
	lw $s1, 256($sp)
	sw $s1, 564($sp)
	lw $t4, 496($sp)
	sw $t4, 568($sp)
	lw $s3, 60($sp)
	lw $t1, 120($sp)
	sw $t1, 572($sp)
	lw $t1, 288($sp)
	sw $t1, 576($sp)
	lw $s3, 76($sp)
	sw $s3, 60($sp)
	lw $t9, 500($sp)
	sw $t9, 580($sp)
	lw $t1, 176($sp)
	sw $t1, 288($sp)
	lw $s0, 80($sp)
	sw $s0, 72($sp)
	lw $t1, 368($sp)
	sw $t1, 176($sp)
	lw $s2, 180($sp)
	lw $t0, 28($sp)
	lw $t9, 384($sp)
	sw $t9, 500($sp)
	lw $t9, 32($sp)
	sw $t9, 384($sp)
	lw $s4, 36($sp)
	lw $t2, 40($sp)
	sw $t2, 492($sp)
	lw $t7, 44($sp)
	lw $s5, 48($sp)
	sw $s5, 116($sp)
	sw $s6, 584($sp)
	and $s6, $v0, $v0
L219:
	beq $zero, $s6, L220
	sw $t1, 120($sp)
	mul $t1, $t4, 4
	sw $s1, 256($sp)
	add $s1, $t3, $t1
	sw $s1, 8($sp)
	lw $s1, 0($s1)
	sw $t4, 172($sp)
	mul $t4, $s5, 4
	add $s1, $s1, $t4
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	sw $s6, 588($sp)
	and $s6, $s6, $s1
L220:
	beq $zero, $s6, L221
	add $t9, $t9, 1
	mul $s1, $t9, 4
	add $s1, $t8, $s1
	sw $t1, 368($sp)
	move $t1, $t4
	sw $t1, 0($s1)
	mul $s1, $t9, 4
	add $s1, $s6, $s1
	move $t1, $s5
	sw $t1, 0($s1)
	lw $s0, 12($sp)
	sw $s0, 80($sp)
	add $s0, $s0, 1
	mul $s1, $t4, 4
	add $s1, $t3, $s1
	lw $s1, 0($s1)
	mul $t1, $s5, 4
	add $s1, $s1, $t1
	sw $s0, 0($s1)
	seq $s0, $t4, $t7
	beq $zero, $s0, L222
	seq $s5, $s5, $t2
	sw $s1, 592($sp)
	and $s1, $s0, $s5
L222:
	beq $zero, $s1, L223
	lw $s1, 8($sp)
	sw $s1, 596($sp)
	li $s1, 1
L223:
L221:
	seq $s0, $s1, 1
	beq $zero, $s0, L224
	b L183
L224:
	add $s0, $s4, 1
	move $s4, $s0
	b L182
L183:
	seq $t0, $s1, 1
	beq $zero, $t0, L225
	mul $t0, $t7, 4
	add $t0, $t3, $t0
	lw $t0, 0($t0)
	mul $s0, $t2, 4
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
L225:
	la $a0, msg_1
	li $v0, 4
	syscall
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 600
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 600
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
	move $t0, $a0
	move $s0, $a1
	slt $s0, $t0, $s0
	beq $zero, $s0, L169
	sge $t0, $t0, 0
	and $t4, $s0, $t0
L169:
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
