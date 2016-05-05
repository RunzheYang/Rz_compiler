.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
.text
main:
	sub $sp, $sp, 664
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	move $s3, $v0
	li $s5, 0
	move $s2, $s5
	move $t6, $s2
	move $t9, $t6
	sub $s0, $s3, 1
	move $s7, $s0
	li $t0, 0
	li $t3, 0
	mul $t0, $s3, $s3
	mul $s4, $t0, 4
	add $s4, $s4, 4
	add $a0, $zero, $s4
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	add $t0, $v0, 4
	move $s4, $t0
	li $t0, 0
L196:
	mul $t4, $s3, $s3
	slt $t4, $t0, $t4
	beq $zero, $t4, L197
	mul $t4, $t0, 4
	add $t4, $s4, $t4
	li $t1, 0
	sw $t1, 0($t4)
L198:
	add $t0, $t0, 1
	b L196
L197:
	mul $t0, $s3, $s3
	mul $t4, $t0, 4
	add $t4, $t4, 4
	add $a0, $zero, $t4
	li $v0, 9
	syscall
	sw $t0, 0($v0)
	add $t0, $v0, 4
	move $t4, $t0
	li $t0, 0
L199:
	mul $t1, $s3, $s3
	slt $t1, $t0, $t1
	beq $zero, $t1, L200
	mul $t1, $t0, 4
	add $t1, $t4, $t1
	li $s1, 0
	sw $s1, 0($t1)
L201:
	add $t0, $t0, 1
	b L199
L200:
	mul $t0, $s3, 4
	add $t0, $t0, 4
	add $a0, $zero, $t0
	li $v0, 9
	syscall
	move $t0, $s3
	sw $t0, 0($v0)
	add $t0, $v0, 4
	move $t1, $t0
	li $t0, 0
L202:
	slt $s1, $t0, $s3
	beq $zero, $s1, L203
	mul $s1, $s3, 4
	add $s1, $s1, 4
	add $a0, $zero, $s1
	li $v0, 9
	syscall
	move $s1, $s3
	sw $s1, 0($v0)
	add $s1, $v0, 4
	mul $t8, $t0, 4
	add $t8, $t1, $t8
	sw $s1, 0($t8)
	li $s1, 0
L205:
	slt $t8, $s1, $s3
	beq $zero, $t8, L206
	mul $t8, $t0, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $s1, 4
	add $t8, $t8, $t7
	li $t7, -1
	sw $t7, 0($t8)
L207:
	add $s1, $s1, 1
	b L205
L206:
L204:
	add $t0, $t0, 1
	b L202
L203:
	la $t0, 0($s4)
	move $s1, $s2
	sw $s1, 0($t0)
	la $t0, 0($t4)
	move $s1, $s5
	sw $s1, 0($t0)
	mul $s2, $s2, 4
	add $s2, $t1, $s2
	lw $s2, 0($s2)
	mul $s5, $s5, 4
	add $s5, $s2, $s5
	lw $s5, 0($s5)
L208:
	sle $s5, $t9, $t6
	beq $zero, $s5, L209
	mul $s5, $t9, 4
	add $s5, $s4, $s5
	lw $s5, 0($s5)
	mul $s5, $s5, 4
	add $s5, $t1, $s5
	lw $s5, 0($s5)
	mul $s2, $t9, 4
	add $s2, $t4, $s2
	lw $s2, 0($s2)
	mul $s2, $s2, 4
	add $s5, $s5, $s2
	lw $s5, 0($s5)
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 1
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 2
	move $a0, $s2
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t1, 8($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $t1, 8($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L210
	move $a0, $t0
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t1, 8($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $s1, 52($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $t1, 8($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $s1, 52($sp)
	move $t8, $v0
	and $t5, $s1, $t8
L210:
	beq $zero, $t5, L211
	mul $s1, $s2, 4
	add $s1, $t1, $s1
	lw $s1, 0($s1)
	mul $t8, $t0, 4
	add $s1, $s1, $t8
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	and $t2, $t5, $s1
L211:
	beq $zero, $t2, L212
	add $t6, $t6, 1
	mul $s1, $t6, 4
	add $s1, $s4, $s1
	move $t8, $s2
	sw $t8, 0($s1)
	mul $s1, $t6, 4
	add $s1, $t4, $s1
	move $t8, $t0
	sw $t8, 0($s1)
	add $s1, $s5, 1
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	sw $s1, 0($t8)
	seq $s2, $s2, $s7
	beq $zero, $s2, L214
	seq $t0, $t0, $s0
	and $s6, $s2, $t0
L214:
	beq $zero, $s6, L215
	li $t3, 1
	b L216
L215:
L216:
	b L213
L212:
L213:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 1
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 2
	move $a0, $s2
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $t5, 64($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $t2, 56($sp)
	lw $t1, 8($sp)
	lw $s6, 60($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $t5, 64($sp)
	move $s1, $v0
	beq $zero, $s1, L217
	move $a0, $t0
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $s1, 68($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $t5, 64($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $t2, 56($sp)
	lw $t1, 8($sp)
	lw $s6, 60($sp)
	lw $s1, 68($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $t5, 64($sp)
	move $t8, $v0
	sw $t8, 72($sp)
	and $t8, $s1, $t8
L217:
	beq $zero, $t8, L218
	mul $s1, $s2, 4
	add $s1, $t1, $s1
	lw $s1, 0($s1)
	mul $t7, $t0, 4
	add $s1, $s1, $t7
	lw $s1, 0($s1)
	seq $s1, $s1, -1
	sw $t8, 76($sp)
	and $t8, $t8, $s1
L218:
	beq $zero, $t8, L219
	add $t6, $t6, 1
	mul $s1, $t6, 4
	add $s1, $s4, $s1
	move $t7, $s2
	sw $t7, 0($s1)
	mul $s1, $t6, 4
	add $s1, $t4, $s1
	move $t7, $t0
	sw $t7, 0($s1)
	add $s1, $s5, 1
	mul $t7, $s2, 4
	add $t7, $t1, $t7
	lw $t7, 0($t7)
	sw $t5, 64($sp)
	mul $t5, $t0, 4
	add $t7, $t7, $t5
	sw $s1, 0($t7)
	seq $s2, $s2, $s7
	beq $zero, $s2, L221
	seq $t0, $t0, $s0
	sw $s1, 80($sp)
	and $s1, $s2, $t0
L221:
	beq $zero, $s1, L222
	li $t3, 1
	b L223
L222:
L223:
	b L220
L219:
L220:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	add $s2, $s2, 1
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 2
	move $a0, $s2
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $t8, 84($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $t2, 56($sp)
	lw $t1, 8($sp)
	lw $s6, 60($sp)
	lw $t8, 84($sp)
	sw $t8, 96($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 100($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $s1, 92($sp)
	sw $s1, 104($sp)
	lw $t5, 64($sp)
	sw $t5, 108($sp)
	move $t7, $v0
	beq $zero, $t7, L224
	move $a0, $t0
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 112($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $t8, 84($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	sw $t5, 64($sp)
	jal f_check
	lw $t4, 4($sp)
	lw $t7, 112($sp)
	lw $t2, 56($sp)
	lw $t1, 8($sp)
	lw $s6, 60($sp)
	lw $t8, 84($sp)
	sw $t8, 116($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 120($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $s1, 92($sp)
	sw $s1, 124($sp)
	lw $t5, 64($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	and $t5, $t7, $t5
L224:
	beq $zero, $t5, L225
	mul $t7, $s2, 4
	add $t7, $t1, $t7
	lw $t7, 0($t7)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t4, $t7, $t4
	lw $t4, 0($t4)
	seq $t4, $t4, -1
	sw $s3, 12($sp)
	and $s3, $t5, $t4
L225:
	beq $zero, $s3, L226
	add $t6, $t6, 1
	mul $t4, $t6, 4
	add $t4, $s4, $t4
	move $t7, $s2
	sw $t7, 0($t4)
	mul $t4, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 128($sp)
	add $t7, $t4, $t4
	sw $t4, 4($sp)
	move $t4, $t0
	sw $t4, 0($t7)
	add $t4, $s5, 1
	mul $t7, $s2, 4
	add $t7, $t1, $t7
	lw $t7, 0($t7)
	sw $t4, 132($sp)
	mul $t4, $t0, 4
	add $t4, $t7, $t4
	lw $t4, 132($sp)
	sw $t4, 136($sp)
	lw $t4, 136($sp)
	sw $t4, 132($sp)
	sw $t4, 0($t4)
	seq $s2, $s2, $s7
	beq $zero, $s2, L228
	seq $t0, $t0, $s0
	sw $t1, 140($sp)
	and $t1, $s2, $t0
L228:
	beq $zero, $t1, L229
	li $t3, 1
	b L230
L229:
L230:
	b L227
L226:
L227:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	add $s2, $s2, 1
	mul $t0, $t9, 4
	lw $t4, 4($sp)
	sw $t4, 144($sp)
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 2
	move $a0, $s2
	lw $s3, 12($sp)
	sw $s3, 148($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t2, 56($sp)
	sw $t5, 152($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $t1, 156($sp)
	sw $t8, 84($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 136($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	lw $t1, 8($sp)
	lw $s3, 148($sp)
	sw $s3, 160($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 164($sp)
	lw $t8, 84($sp)
	sw $t8, 168($sp)
	lw $s3, 12($sp)
	sw $s3, 148($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 172($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $s1, 92($sp)
	sw $s1, 176($sp)
	lw $t5, 64($sp)
	sw $t5, 152($sp)
	move $t7, $v0
	beq $zero, $t7, L231
	move $a0, $t0
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $t1, 156($sp)
	sw $t8, 84($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t7, 180($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	sw $t5, 64($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 184($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	lw $t1, 8($sp)
	lw $s3, 148($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 188($sp)
	lw $s3, 12($sp)
	sw $s3, 148($sp)
	lw $t6, 16($sp)
	lw $t7, 180($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 192($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	lw $s1, 92($sp)
	sw $s1, 196($sp)
	lw $t5, 64($sp)
	sw $t5, 152($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	sw $s3, 12($sp)
	and $s3, $t7, $t5
L231:
	beq $zero, $s3, L232
	mul $t7, $s2, 4
	lw $t1, 8($sp)
	sw $t1, 156($sp)
	add $t7, $t1, $t7
	lw $t7, 0($t7)
	mul $t5, $t0, 4
	add $t7, $t7, $t5
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	sw $s5, 200($sp)
	and $s5, $s3, $t7
L232:
	beq $zero, $s5, L233
	add $t6, $t6, 1
	mul $t7, $t6, 4
	add $t7, $s4, $t7
	move $t5, $s2
	sw $t5, 0($t7)
	mul $t7, $t6, 4
	add $t7, $t4, $t7
	move $t5, $t0
	sw $t5, 0($t7)
	add $t7, $s5, 1
	mul $t5, $s2, 4
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t4, $t5, $t4
	sw $t7, 0($t4)
	seq $s2, $s2, $s7
	beq $zero, $s2, L235
	seq $t0, $t0, $s0
	sw $t7, 204($sp)
	and $t7, $s2, $t0
L235:
	beq $zero, $t7, L236
	li $t3, 1
	b L237
L236:
L237:
	b L234
L233:
L234:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 2
	mul $t0, $t9, 4
	lw $t4, 4($sp)
	sw $t4, 208($sp)
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 1
	move $a0, $s2
	lw $s3, 12($sp)
	sw $s3, 212($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $s6, 60($sp)
	sw $t8, 84($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 224($sp)
	lw $t7, 216($sp)
	sw $t7, 228($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 232($sp)
	lw $t1, 8($sp)
	lw $s3, 148($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 236($sp)
	lw $s3, 12($sp)
	sw $s3, 148($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s5, 220($sp)
	sw $s5, 240($sp)
	lw $s4, 48($sp)
	lw $s1, 92($sp)
	sw $s1, 244($sp)
	lw $t5, 64($sp)
	sw $t5, 152($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	beq $zero, $t5, L238
	move $a0, $t0
	lw $s3, 12($sp)
	sw $s3, 212($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t5, 248($sp)
	sw $s6, 60($sp)
	sw $t1, 156($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 252($sp)
	lw $t7, 216($sp)
	sw $t7, 256($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 260($sp)
	lw $t1, 8($sp)
	lw $t5, 248($sp)
	sw $t5, 152($sp)
	lw $s3, 148($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 264($sp)
	lw $s3, 12($sp)
	sw $s3, 148($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s5, 220($sp)
	sw $s5, 268($sp)
	lw $s4, 48($sp)
	lw $s1, 92($sp)
	sw $s1, 272($sp)
	lw $t5, 64($sp)
	sw $t5, 248($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	lw $t5, 248($sp)
	sw $t5, 276($sp)
	lw $t5, 276($sp)
	sw $t5, 248($sp)
	sw $s3, 212($sp)
	and $s3, $t5, $t5
L238:
	beq $zero, $s3, L239
	mul $t5, $s2, 4
	lw $t1, 8($sp)
	sw $t1, 156($sp)
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t4, $t5, $t4
	lw $t4, 0($t4)
	seq $t4, $t4, -1
	sw $t4, 280($sp)
	and $t4, $s3, $t4
L239:
	beq $zero, $t4, L240
	add $t6, $t6, 1
	mul $t5, $t6, 4
	add $t5, $s4, $t5
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t5)
	mul $s4, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 284($sp)
	add $s4, $t4, $s4
	move $t5, $t0
	sw $t5, 0($s4)
	add $s4, $s5, 1
	mul $t5, $s2, 4
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t5, $t5, $t4
	sw $s4, 0($t5)
	seq $s2, $s2, $s7
	beq $zero, $s2, L242
	seq $t0, $t0, $s0
	sw $s4, 288($sp)
	and $s4, $s2, $t0
L242:
	beq $zero, $s4, L243
	li $t3, 1
	b L244
L243:
L244:
	b L241
L240:
L241:
	mul $s2, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 292($sp)
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 2
	mul $t0, $t9, 4
	lw $t4, 4($sp)
	sw $t4, 296($sp)
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 1
	move $a0, $s2
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $t4, 304($sp)
	sw $s6, 60($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $s4, 308($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 312($sp)
	lw $t7, 216($sp)
	sw $t7, 316($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 320($sp)
	lw $t1, 8($sp)
	lw $s3, 148($sp)
	lw $s3, 300($sp)
	sw $s3, 148($sp)
	lw $t4, 304($sp)
	sw $t4, 324($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 328($sp)
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	lw $t6, 16($sp)
	lw $s4, 308($sp)
	sw $s4, 332($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s5, 220($sp)
	sw $s5, 336($sp)
	lw $s4, 48($sp)
	sw $s4, 340($sp)
	lw $s1, 92($sp)
	sw $s1, 344($sp)
	lw $t5, 64($sp)
	sw $t5, 348($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	beq $zero, $t5, L245
	move $a0, $t0
	lw $s3, 12($sp)
	sw $s3, 212($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t5, 152($sp)
	sw $t4, 304($sp)
	sw $s6, 60($sp)
	sw $t1, 156($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $s4, 308($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $t5, 352($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 356($sp)
	lw $t7, 216($sp)
	sw $t7, 360($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 364($sp)
	lw $t1, 8($sp)
	lw $s3, 148($sp)
	lw $s3, 300($sp)
	sw $s3, 148($sp)
	lw $t4, 304($sp)
	sw $t4, 368($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 372($sp)
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	lw $t6, 16($sp)
	lw $s4, 308($sp)
	sw $s4, 376($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $t5, 352($sp)
	sw $t5, 152($sp)
	lw $s5, 220($sp)
	sw $s5, 380($sp)
	lw $s4, 48($sp)
	sw $s4, 308($sp)
	lw $s1, 92($sp)
	sw $s1, 384($sp)
	lw $t5, 64($sp)
	sw $t5, 388($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	sw $s3, 212($sp)
	and $s3, $t5, $t5
L245:
	beq $zero, $s3, L246
	mul $t5, $s2, 4
	lw $t1, 8($sp)
	sw $t1, 156($sp)
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t5, $t5, $t4
	lw $t5, 0($t5)
	seq $t5, $t5, -1
	sw $s2, 392($sp)
	and $s2, $s3, $t5
L246:
	beq $zero, $s2, L247
	add $t6, $t6, 1
	mul $t5, $t6, 4
	add $t5, $s4, $t5
	sw $t5, 396($sp)
	move $t5, $s2
	lw $t5, 396($sp)
	sw $t5, 400($sp)
	sw $t5, 0($t5)
	mul $t5, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 404($sp)
	add $t5, $t4, $t5
	sw $t4, 4($sp)
	move $t4, $t0
	sw $t4, 0($t5)
	add $t5, $s5, 1
	sw $s4, 48($sp)
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	sw $s4, 408($sp)
	mul $s4, $t0, 4
	lw $s4, 408($sp)
	sw $s4, 412($sp)
	lw $s4, 412($sp)
	sw $s4, 408($sp)
	add $s4, $s4, $s4
	sw $t5, 0($s4)
	seq $s4, $s2, $s7
	beq $zero, $s4, L249
	seq $t0, $t0, $s0
	sw $t5, 416($sp)
	and $t5, $s4, $t0
L249:
	beq $zero, $t5, L250
	li $t3, 1
	b L251
L250:
L251:
	b L248
L247:
L248:
	mul $t0, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 412($sp)
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 2
	move $s2, $t0
	mul $t0, $t9, 4
	lw $t4, 4($sp)
	sw $t4, 420($sp)
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 1
	move $a0, $s2
	lw $s3, 12($sp)
	sw $s3, 424($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $t5, 428($sp)
	sw $t4, 304($sp)
	sw $s6, 60($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $s2, 432($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 436($sp)
	lw $t7, 216($sp)
	sw $t7, 440($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 444($sp)
	lw $t1, 8($sp)
	lw $t5, 428($sp)
	sw $t5, 448($sp)
	lw $s3, 148($sp)
	lw $s3, 300($sp)
	sw $s3, 148($sp)
	lw $t4, 304($sp)
	sw $t4, 452($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 456($sp)
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	lw $t6, 16($sp)
	lw $s4, 308($sp)
	sw $s4, 460($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s5, 220($sp)
	sw $s5, 464($sp)
	lw $s3, 424($sp)
	sw $s3, 212($sp)
	lw $s4, 48($sp)
	sw $s4, 468($sp)
	lw $s2, 432($sp)
	sw $s2, 472($sp)
	lw $s1, 92($sp)
	sw $s1, 476($sp)
	lw $t5, 64($sp)
	sw $t5, 152($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	beq $zero, $t5, L252
	move $a0, $t0
	lw $s3, 12($sp)
	sw $s3, 424($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t5, 428($sp)
	sw $t5, 480($sp)
	sw $t4, 304($sp)
	sw $s6, 60($sp)
	sw $t1, 156($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $s4, 308($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $s2, 432($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 484($sp)
	lw $t7, 216($sp)
	sw $t7, 488($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 492($sp)
	lw $t1, 8($sp)
	lw $t5, 428($sp)
	sw $t5, 152($sp)
	lw $s3, 148($sp)
	lw $s3, 300($sp)
	sw $s3, 148($sp)
	lw $t5, 480($sp)
	sw $t5, 428($sp)
	lw $t4, 304($sp)
	sw $t4, 496($sp)
	lw $s6, 60($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	sw $t8, 500($sp)
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	lw $t6, 16($sp)
	lw $s4, 308($sp)
	sw $s4, 504($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s5, 220($sp)
	sw $s5, 508($sp)
	lw $s3, 424($sp)
	sw $s3, 212($sp)
	lw $s4, 48($sp)
	sw $s4, 308($sp)
	lw $s2, 432($sp)
	sw $s2, 512($sp)
	lw $s1, 92($sp)
	sw $s1, 516($sp)
	lw $t5, 64($sp)
	sw $t5, 520($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	sw $t0, 524($sp)
	and $t0, $t5, $t5
L252:
	beq $zero, $t0, L253
	mul $t5, $s2, 4
	lw $t1, 8($sp)
	sw $t1, 156($sp)
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t5, $t5, $t4
	lw $t5, 0($t5)
	seq $t5, $t5, -1
	sw $t0, 528($sp)
	and $t0, $t0, $t5
L253:
	beq $zero, $t0, L254
	add $t6, $t6, 1
	mul $t5, $t6, 4
	add $t5, $s4, $t5
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t5)
	mul $s4, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 532($sp)
	add $s4, $t4, $s4
	move $t5, $t0
	sw $t5, 0($s4)
	add $s4, $s5, 1
	mul $t5, $s2, 4
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t5, $t5, $t4
	sw $s4, 0($t5)
	seq $s4, $s2, $s7
	beq $zero, $s4, L256
	seq $t5, $t0, $s0
	sw $t5, 536($sp)
	and $t5, $s4, $t5
L256:
	beq $zero, $t5, L257
	li $t3, 1
	b L258
L257:
L258:
	b L255
L254:
L255:
	mul $s4, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 540($sp)
	sw $s4, 48($sp)
	add $s4, $s4, $s4
	lw $s4, 0($s4)
	add $s4, $s4, 2
	move $s2, $s4
	mul $s4, $t9, 4
	lw $t4, 4($sp)
	sw $t4, 304($sp)
	add $s4, $t4, $s4
	lw $s4, 0($s4)
	add $s4, $s4, 1
	move $t0, $s4
	move $a0, $s2
	lw $s3, 12($sp)
	sw $s3, 424($sp)
	move $a1, $s3
	sw $t4, 4($sp)
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t1, 8($sp)
	sw $t0, 544($sp)
	sw $s6, 60($sp)
	sw $t0, 548($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $t5, 552($sp)
	sw $s5, 220($sp)
	sw $s2, 432($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 556($sp)
	lw $t7, 216($sp)
	sw $t7, 560($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 564($sp)
	lw $t1, 8($sp)
	lw $t5, 428($sp)
	sw $t5, 568($sp)
	lw $s3, 148($sp)
	lw $s3, 300($sp)
	sw $s3, 148($sp)
	lw $t4, 304($sp)
	sw $t4, 4($sp)
	lw $t0, 544($sp)
	sw $t0, 572($sp)
	lw $s6, 60($sp)
	lw $t0, 548($sp)
	sw $t0, 576($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	lw $t6, 16($sp)
	lw $s4, 308($sp)
	sw $s4, 580($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 548($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $t5, 552($sp)
	sw $t5, 152($sp)
	lw $s5, 220($sp)
	sw $s5, 584($sp)
	lw $s3, 424($sp)
	sw $s3, 212($sp)
	lw $s4, 48($sp)
	sw $s4, 588($sp)
	lw $s2, 432($sp)
	sw $s2, 592($sp)
	lw $s1, 92($sp)
	sw $s1, 596($sp)
	lw $t5, 64($sp)
	sw $t5, 600($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	beq $zero, $t5, L259
	move $a0, $t0
	lw $s3, 12($sp)
	sw $s3, 424($sp)
	move $a1, $s3
	sw $t7, 216($sp)
	sw $t2, 56($sp)
	sw $t5, 428($sp)
	sw $t4, 304($sp)
	sw $t0, 544($sp)
	sw $s6, 60($sp)
	sw $t1, 156($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $s4, 308($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t8, 88($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $t5, 552($sp)
	sw $s5, 220($sp)
	sw $s4, 48($sp)
	sw $t5, 604($sp)
	sw $s2, 432($sp)
	sw $s1, 92($sp)
	jal f_check
	lw $t4, 4($sp)
	sw $t4, 608($sp)
	lw $t7, 216($sp)
	sw $t7, 612($sp)
	lw $t2, 56($sp)
	lw $t5, 152($sp)
	sw $t5, 616($sp)
	lw $t1, 8($sp)
	lw $t5, 428($sp)
	sw $t5, 152($sp)
	lw $s3, 148($sp)
	lw $s3, 300($sp)
	sw $s3, 148($sp)
	lw $t4, 304($sp)
	sw $t4, 4($sp)
	lw $t0, 544($sp)
	sw $t0, 620($sp)
	lw $s6, 60($sp)
	lw $t0, 548($sp)
	sw $t0, 624($sp)
	lw $t1, 156($sp)
	sw $t1, 8($sp)
	lw $t8, 84($sp)
	lw $s3, 12($sp)
	sw $s3, 300($sp)
	lw $t6, 16($sp)
	lw $s4, 308($sp)
	sw $s4, 628($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t8, 88($sp)
	sw $t8, 84($sp)
	lw $s3, 212($sp)
	sw $s3, 12($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 548($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $t5, 552($sp)
	sw $t5, 428($sp)
	lw $s5, 220($sp)
	sw $s5, 632($sp)
	lw $s3, 424($sp)
	sw $s3, 212($sp)
	lw $s4, 48($sp)
	sw $s4, 636($sp)
	lw $t5, 604($sp)
	sw $t5, 552($sp)
	lw $s2, 432($sp)
	sw $s2, 640($sp)
	lw $s1, 92($sp)
	sw $s1, 644($sp)
	lw $t5, 64($sp)
	sw $t5, 648($sp)
	sw $t5, 64($sp)
	move $t5, $v0
	sw $t6, 652($sp)
	and $t6, $t5, $t5
L259:
	beq $zero, $t6, L260
	mul $t5, $s2, 4
	lw $t1, 8($sp)
	sw $t1, 156($sp)
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $s4, 48($sp)
	mul $s4, $t0, 4
	add $t5, $t5, $s4
	lw $t5, 0($t5)
	seq $t5, $t5, -1
	sw $t9, 20($sp)
	and $t9, $t6, $t5
L260:
	beq $zero, $t9, L261
	add $t5, $t6, 1
	move $t6, $t5
	mul $t5, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 308($sp)
	add $t5, $s4, $t5
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t5)
	mul $s4, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 304($sp)
	add $s4, $t4, $s4
	move $t5, $t0
	sw $t5, 0($s4)
	add $s4, $s5, 1
	mul $t5, $s2, 4
	add $t5, $t1, $t5
	lw $t5, 0($t5)
	sw $t4, 4($sp)
	mul $t4, $t0, 4
	add $t4, $t5, $t4
	sw $s4, 0($t4)
	seq $s4, $s2, $s7
	beq $zero, $s4, L263
	seq $t4, $t0, $s0
	sw $t5, 656($sp)
	and $t5, $s4, $t4
L263:
	beq $zero, $t5, L264
	li $t3, 1
	b L265
L264:
L265:
	b L262
L261:
L262:
	seq $s4, $t3, 1
	beq $zero, $s4, L266
	b L209
	b L267
L266:
L267:
	lw $t9, 20($sp)
	sw $t9, 660($sp)
	add $t9, $t9, 1
	b L208
L209:
	seq $s3, $t3, 1
	beq $zero, $s3, L268
	mul $s3, $s7, 4
	add $s3, $t1, $s3
	lw $s3, 0($s3)
	mul $s5, $s0, 4
	add $s3, $s3, $s5
	lw $s3, 0($s3)
	move $a0, $s3
	jal f_toString
	move $s3, $v0
	move $a0, $s3
	li $v0, 4
	syscall
	la $a0, msg_0
	li $v0, 4
	syscall
	b L269
L268:
	la $a0, msg_1
	li $v0, 4
	syscall
L269:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 664
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 664
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
	move $s3, $a0
	move $s5, $a1
	slt $s5, $s3, $s5
	beq $zero, $s5, L195
	sge $s3, $s3, 0
	and $s2, $s5, $s3
L195:
	move $v0, $s2
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
