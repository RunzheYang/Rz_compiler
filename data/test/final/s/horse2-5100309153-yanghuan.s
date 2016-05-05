.data
.align 2
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
.text
main:
	sub $sp, $sp, 756
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
L196:
	mul $s6, $t5, $t5
	slt $s6, $t1, $s6
	beq $zero, $s6, L197
	mul $s6, $t1, 4
	add $s6, $t2, $s6
	li $t3, 0
	sw $t3, 0($s6)
L198:
	add $t1, $t1, 1
	b L196
L197:
	mul $t1, $t5, $t5
	mul $t1, $t1, 4
	add $a0, $zero, $t1
	li $v0, 9
	syscall
	move $s6, $v0
	li $t1, 0
L199:
	mul $t3, $t5, $t5
	slt $t3, $t1, $t3
	beq $zero, $t3, L200
	mul $t3, $t1, 4
	add $t3, $s6, $t3
	li $t7, 0
	sw $t7, 0($t3)
L201:
	add $t1, $t1, 1
	b L199
L200:
	mul $t1, $t5, 4
	add $a0, $zero, $t1
	li $v0, 9
	syscall
	move $t3, $v0
	li $t1, 0
L202:
	slt $t7, $t1, $t5
	beq $zero, $t7, L203
	mul $t7, $t5, 4
	add $a0, $zero, $t7
	li $v0, 9
	syscall
	mul $t7, $t1, 4
	add $t7, $t3, $t7
	move $s0, $v0
	sw $s0, 0($t7)
	li $t7, 0
L205:
	slt $s0, $t7, $t5
	beq $zero, $s0, L206
	mul $s0, $t1, 4
	add $s0, $t3, $s0
	lw $s0, 0($s0)
	mul $t9, $t7, 4
	add $s0, $s0, $t9
	li $t9, -1
	sw $t9, 0($s0)
L207:
	add $t7, $t7, 1
	b L205
L206:
L204:
	add $t1, $t1, 1
	b L202
L203:
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
L208:
	sle $s2, $s4, $t6
	beq $zero, $s2, L209
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
	beq $zero, $t7, L210
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
L210:
	beq $zero, $t8, L211
	mul $t7, $s3, 4
	add $t7, $t3, $t7
	lw $t7, 0($t7)
	mul $s0, $t1, 4
	add $t7, $t7, $s0
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	and $s7, $t8, $t7
L211:
	beq $zero, $s7, L212
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
	beq $zero, $s3, L214
	seq $t1, $t1, $s5
	and $s1, $s3, $t1
L214:
	beq $zero, $s1, L215
	li $t0, 1
	b L216
L215:
L216:
	b L213
L212:
L213:
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
	beq $zero, $t7, L217
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
	sw $s0, 72($sp)
	and $s0, $t7, $s0
L217:
	beq $zero, $s0, L218
	mul $t7, $s3, 4
	add $t7, $t3, $t7
	lw $t7, 0($t7)
	mul $t9, $t1, 4
	add $t7, $t7, $t9
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	sw $t1, 76($sp)
	and $t1, $s0, $t7
L218:
	beq $zero, $t1, L219
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
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t9, $t9, $t1
	sw $t7, 0($t9)
	seq $s3, $s3, $t4
	beq $zero, $s3, L221
	lw $t1, 24($sp)
	sw $t1, 80($sp)
	seq $t7, $t1, $s5
	sw $t3, 84($sp)
	and $t3, $s3, $t7
L221:
	beq $zero, $t3, L222
	li $t0, 1
	b L223
L222:
L223:
	b L220
L219:
L220:
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	add $s3, $s3, 1
	mul $t7, $s4, 4
	add $t7, $s6, $t7
	lw $t7, 0($t7)
	sub $t7, $t7, 2
	move $t1, $t7
	move $a0, $s3
	move $a1, $t5
	sw $t1, 88($sp)
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
	sw $t3, 92($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 100($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	sw $t3, 104($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s1, 64($sp)
	lw $s0, 96($sp)
	sw $s0, 108($sp)
	move $t7, $v0
	beq $zero, $t7, L224
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
	sw $t7, 112($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 116($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	sw $t3, 120($sp)
	lw $t8, 56($sp)
	lw $t7, 112($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s1, 64($sp)
	lw $s0, 96($sp)
	sw $s0, 124($sp)
	move $t9, $v0
	sw $s2, 36($sp)
	and $s2, $t7, $t9
L224:
	beq $zero, $s2, L225
	mul $t7, $s3, 4
	add $t7, $t3, $t7
	lw $t7, 0($t7)
	mul $t9, $t1, 4
	add $t7, $t7, $t9
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	sw $s3, 128($sp)
	and $s3, $s2, $t7
L225:
	beq $zero, $s3, L226
	add $t6, $t6, 1
	mul $t7, $t6, 4
	add $t7, $t2, $t7
	move $t9, $s3
	sw $t9, 0($t7)
	mul $t7, $t6, 4
	add $t7, $s6, $t7
	move $t9, $t1
	sw $t9, 0($t7)
	lw $s2, 36($sp)
	sw $s2, 132($sp)
	add $t7, $s2, 1
	mul $t9, $s3, 4
	add $t9, $t3, $t9
	lw $t9, 0($t9)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t1, $t9, $t1
	sw $t7, 0($t1)
	seq $t1, $s3, $t4
	beq $zero, $t1, L228
	lw $t1, 24($sp)
	sw $t1, 136($sp)
	seq $t7, $t1, $s5
	sw $s2, 36($sp)
	and $s2, $t1, $t7
L228:
	beq $zero, $s2, L229
	li $t0, 1
	b L230
L229:
L230:
	b L227
L226:
L227:
	mul $t1, $s4, 4
	add $t1, $t2, $t1
	lw $t1, 0($t1)
	add $t1, $t1, 1
	move $s3, $t1
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
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $s1, 64($sp)
	sw $s2, 144($sp)
	sw $s0, 96($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 148($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 152($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	sw $t3, 156($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $s2, 132($sp)
	sw $s2, 36($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 160($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 164($sp)
	lw $s0, 96($sp)
	sw $s0, 168($sp)
	move $t7, $v0
	beq $zero, $t7, L231
	move $a0, $t1
	move $a1, $t5
	sw $t1, 88($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $s2, 132($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $s1, 64($sp)
	sw $s2, 144($sp)
	sw $s0, 96($sp)
	sw $t7, 172($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 176($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 180($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	sw $t3, 184($sp)
	lw $t8, 56($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	lw $s2, 132($sp)
	sw $s2, 36($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 188($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 192($sp)
	lw $s0, 96($sp)
	sw $s0, 196($sp)
	lw $t7, 172($sp)
	move $t9, $v0
	sw $t9, 200($sp)
	and $t9, $t7, $t9
L231:
	beq $zero, $t9, L232
	mul $t7, $s3, 4
	add $t7, $t3, $t7
	lw $t7, 0($t7)
	sw $t7, 204($sp)
	mul $t7, $t1, 4
	lw $t7, 204($sp)
	sw $t7, 208($sp)
	lw $t7, 208($sp)
	sw $t7, 204($sp)
	add $t7, $t7, $t7
	lw $t7, 0($t7)
	seq $t7, $t7, -1
	sw $t7, 212($sp)
	and $t7, $t9, $t7
L232:
	beq $zero, $t7, L233
	add $t6, $t6, 1
	sw $t1, 24($sp)
	mul $t1, $t6, 4
	sw $s3, 28($sp)
	add $s3, $t2, $t1
	lw $s3, 28($sp)
	sw $s3, 216($sp)
	sw $s3, 28($sp)
	lw $s3, 216($sp)
	sw $s3, 140($sp)
	sw $s3, 0($s3)
	mul $s3, $t6, 4
	add $s3, $s6, $s3
	lw $t1, 24($sp)
	sw $t1, 220($sp)
	sw $t1, 24($sp)
	sw $t1, 0($s3)
	lw $s2, 36($sp)
	sw $s2, 144($sp)
	add $s3, $s2, 1
	lw $s3, 28($sp)
	sw $s3, 224($sp)
	sw $s3, 28($sp)
	mul $s3, $s3, 4
	sw $s7, 60($sp)
	add $s7, $t3, $s3
	lw $s7, 0($s7)
	lw $t1, 24($sp)
	sw $t1, 228($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $s7, $s7, $t1
	sw $s3, 0($s7)
	lw $s3, 28($sp)
	sw $s3, 232($sp)
	seq $s3, $s3, $t4
	beq $zero, $s3, L235
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	seq $t1, $t1, $s5
	sw $s2, 36($sp)
	and $s2, $s3, $t1
L235:
	beq $zero, $s2, L236
	li $t0, 1
	b L237
L236:
L237:
	b L234
L233:
L234:
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	sub $s3, $s3, 2
	mul $t1, $s4, 4
	add $t1, $s6, $t1
	lw $t1, 0($t1)
	sub $t1, $t1, 1
	move $a0, $s3
	move $a1, $t5
	sw $t9, 236($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s2, 244($sp)
	sw $s6, 44($sp)
	sw $s2, 132($sp)
	sw $t3, 48($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 248($sp)
	lw $t9, 236($sp)
	sw $t9, 252($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 256($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	lw $s3, 28($sp)
	sw $s3, 216($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 260($sp)
	lw $s2, 132($sp)
	sw $s2, 264($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 268($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 272($sp)
	lw $s0, 96($sp)
	sw $s0, 276($sp)
	sw $t1, 24($sp)
	move $t1, $v0
	beq $zero, $t1, L238
	lw $t1, 24($sp)
	sw $t1, 280($sp)
	move $a0, $t1
	move $a1, $t5
	sw $t9, 236($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s2, 244($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $s2, 132($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $s1, 64($sp)
	sw $s2, 144($sp)
	sw $s0, 96($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 284($sp)
	lw $t9, 236($sp)
	sw $t9, 288($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 292($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 88($sp)
	lw $s3, 28($sp)
	sw $s3, 296($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 300($sp)
	lw $s2, 132($sp)
	sw $s2, 304($sp)
	lw $t1, 280($sp)
	sw $t1, 24($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 308($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 312($sp)
	sw $s3, 28($sp)
	move $s3, $v0
	sw $t7, 68($sp)
	and $t7, $t1, $s3
L238:
	beq $zero, $t7, L239
	lw $s3, 28($sp)
	sw $s3, 316($sp)
	mul $t1, $s3, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	lw $t1, 24($sp)
	sw $t1, 320($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t1, $t1, $t1
	lw $t1, 0($t1)
	seq $t1, $t1, -1
	sw $t0, 32($sp)
	and $t0, $t7, $t1
L239:
	beq $zero, $t0, L240
	add $t6, $t6, 1
	mul $t1, $t6, 4
	add $t1, $t2, $t1
	sw $s3, 28($sp)
	sw $s3, 0($t1)
	mul $t1, $t6, 4
	add $t1, $s6, $t1
	lw $t1, 24($sp)
	sw $t1, 324($sp)
	sw $t1, 24($sp)
	sw $t1, 0($t1)
	lw $s2, 36($sp)
	sw $s2, 144($sp)
	add $t1, $s2, 1
	lw $s3, 28($sp)
	sw $s3, 328($sp)
	sw $s3, 28($sp)
	mul $s3, $s3, 4
	sw $s7, 60($sp)
	add $s7, $t3, $s3
	lw $s7, 0($s7)
	lw $t1, 24($sp)
	sw $t1, 332($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $s7, $s7, $t1
	sw $t1, 0($s7)
	lw $s3, 28($sp)
	sw $s3, 336($sp)
	seq $t1, $s3, $t4
	beq $zero, $t1, L242
	lw $t1, 24($sp)
	sw $t1, 340($sp)
	seq $s7, $t1, $s5
	sw $s2, 36($sp)
	and $s2, $t1, $s7
L242:
	beq $zero, $s2, L243
	lw $t0, 32($sp)
	sw $t0, 344($sp)
	li $t0, 1
	b L244
L243:
L244:
	b L241
L240:
L241:
	mul $t1, $s4, 4
	add $t1, $t2, $t1
	lw $t1, 0($t1)
	sub $t1, $t1, 2
	move $s3, $t1
	mul $t1, $s4, 4
	add $t1, $s6, $t1
	lw $t1, 0($t1)
	add $t1, $t1, 1
	move $a0, $s3
	move $a1, $t5
	sw $t9, 236($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s2, 244($sp)
	sw $s6, 44($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $t7, 348($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	sw $s2, 352($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 356($sp)
	lw $t9, 236($sp)
	sw $t9, 360($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 364($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 368($sp)
	lw $s3, 28($sp)
	sw $s3, 372($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 376($sp)
	lw $s2, 132($sp)
	sw $s2, 380($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 384($sp)
	lw $t7, 348($sp)
	sw $t7, 388($sp)
	lw $t0, 344($sp)
	sw $t0, 32($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 392($sp)
	lw $s2, 352($sp)
	sw $s2, 144($sp)
	sw $t1, 24($sp)
	move $t1, $v0
	beq $zero, $t1, L245
	lw $t1, 24($sp)
	sw $t1, 396($sp)
	move $a0, $t1
	move $a1, $t5
	sw $t1, 88($sp)
	sw $t9, 236($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $t1, 400($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s2, 244($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $t7, 348($sp)
	sw $t0, 344($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	sw $s2, 352($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 404($sp)
	lw $t9, 236($sp)
	sw $t9, 408($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $t1, 400($sp)
	sw $t1, 88($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 412($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 400($sp)
	lw $s3, 28($sp)
	sw $s3, 416($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 420($sp)
	lw $s2, 132($sp)
	sw $s2, 424($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 428($sp)
	lw $t7, 348($sp)
	sw $t7, 432($sp)
	lw $t0, 344($sp)
	sw $t0, 32($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 436($sp)
	lw $s2, 352($sp)
	sw $s2, 144($sp)
	sw $t1, 24($sp)
	move $t1, $v0
	lw $t1, 400($sp)
	sw $t1, 440($sp)
	lw $t1, 440($sp)
	sw $t1, 400($sp)
	sw $t7, 444($sp)
	and $t7, $t1, $t1
L245:
	beq $zero, $t7, L246
	mul $t1, $s3, 4
	add $t1, $t3, $t1
	lw $t1, 0($t1)
	lw $t1, 24($sp)
	sw $t1, 448($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t1, $t1, $t1
	lw $t1, 0($t1)
	seq $t1, $t1, -1
	sw $t1, 440($sp)
	and $t1, $t7, $t1
L246:
	beq $zero, $t1, L247
	add $t6, $t6, 1
	sw $s3, 28($sp)
	mul $s3, $t6, 4
	sw $s7, 60($sp)
	add $s7, $t2, $s3
	lw $s3, 28($sp)
	sw $s3, 452($sp)
	sw $s3, 28($sp)
	sw $s3, 0($s7)
	mul $s7, $t6, 4
	add $s7, $s6, $s7
	lw $t1, 24($sp)
	sw $t1, 456($sp)
	sw $t1, 24($sp)
	sw $t1, 0($s7)
	lw $s2, 36($sp)
	sw $s2, 244($sp)
	add $s7, $s2, 1
	lw $s3, 28($sp)
	sw $s3, 460($sp)
	sw $s3, 28($sp)
	mul $s3, $s3, 4
	sw $t9, 236($sp)
	add $t9, $t3, $s3
	lw $t9, 0($t9)
	lw $t1, 24($sp)
	sw $t1, 464($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t9, $t9, $t1
	sw $s7, 0($t9)
	lw $s3, 28($sp)
	sw $s3, 468($sp)
	seq $t9, $s3, $t4
	beq $zero, $t9, L249
	lw $t1, 24($sp)
	sw $t1, 472($sp)
	seq $s7, $t1, $s5
	sw $s7, 476($sp)
	and $s7, $t9, $s7
L249:
	beq $zero, $s7, L250
	lw $t0, 32($sp)
	sw $t0, 344($sp)
	li $t0, 1
	b L251
L250:
L251:
	b L248
L247:
L248:
	mul $t9, $s4, 4
	add $t9, $t2, $t9
	lw $t9, 0($t9)
	add $t9, $t9, 2
	move $s3, $t9
	mul $t9, $s4, 4
	add $t9, $s6, $t9
	lw $t9, 0($t9)
	sub $t9, $t9, 1
	move $t1, $t9
	move $a0, $s3
	move $a1, $t5
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t7, 480($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t1, 484($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $s7, 488($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $t7, 348($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	sw $s2, 352($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 492($sp)
	lw $t9, 236($sp)
	sw $t9, 496($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 500($sp)
	lw $t7, 480($sp)
	sw $t7, 504($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 508($sp)
	lw $s3, 28($sp)
	sw $s3, 512($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t1, 484($sp)
	sw $t1, 24($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 516($sp)
	lw $s2, 132($sp)
	sw $s2, 520($sp)
	lw $s7, 488($sp)
	sw $s7, 524($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 528($sp)
	lw $t7, 348($sp)
	sw $t7, 532($sp)
	lw $t0, 344($sp)
	sw $t0, 32($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 536($sp)
	lw $s2, 352($sp)
	sw $s2, 144($sp)
	sw $s3, 28($sp)
	move $s3, $v0
	beq $zero, $s3, L252
	lw $t1, 24($sp)
	sw $t1, 540($sp)
	move $a0, $t1
	move $a1, $t5
	sw $t1, 88($sp)
	sw $t9, 236($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t7, 480($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $t2, 40($sp)
	sw $t1, 484($sp)
	sw $t8, 56($sp)
	sw $s2, 244($sp)
	sw $s6, 44($sp)
	sw $s7, 60($sp)
	sw $s7, 488($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $t7, 348($sp)
	sw $s3, 544($sp)
	sw $t0, 344($sp)
	sw $s1, 64($sp)
	sw $s0, 96($sp)
	sw $s2, 352($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 548($sp)
	lw $t9, 236($sp)
	sw $t9, 552($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 556($sp)
	lw $t7, 480($sp)
	sw $t7, 560($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 564($sp)
	lw $s3, 28($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t1, 484($sp)
	sw $t1, 24($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 568($sp)
	lw $s2, 132($sp)
	sw $s2, 572($sp)
	lw $s7, 488($sp)
	sw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 576($sp)
	lw $t7, 348($sp)
	sw $t7, 580($sp)
	lw $s3, 544($sp)
	sw $s3, 28($sp)
	lw $t0, 344($sp)
	sw $t0, 32($sp)
	lw $s1, 64($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 584($sp)
	lw $s2, 352($sp)
	sw $s2, 144($sp)
	sw $t9, 236($sp)
	move $t9, $v0
	sw $s7, 488($sp)
	and $s7, $s3, $t9
L252:
	beq $zero, $s7, L253
	lw $s3, 28($sp)
	sw $s3, 544($sp)
	mul $t9, $s3, 4
	add $t9, $t3, $t9
	lw $t9, 0($t9)
	lw $t1, 24($sp)
	sw $t1, 484($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t9, $t9, $t1
	lw $t9, 0($t9)
	seq $t9, $t9, -1
	sw $s7, 588($sp)
	and $s7, $s7, $t9
L253:
	beq $zero, $s7, L254
	add $t6, $t6, 1
	mul $t9, $t6, 4
	add $t9, $t2, $t9
	sw $s3, 28($sp)
	sw $s3, 0($t9)
	mul $t9, $t6, 4
	add $t9, $s6, $t9
	lw $t1, 24($sp)
	sw $t1, 592($sp)
	sw $t1, 24($sp)
	sw $t1, 0($t9)
	lw $s2, 36($sp)
	sw $s2, 244($sp)
	add $t9, $s2, 1
	lw $s3, 28($sp)
	sw $s3, 140($sp)
	sw $s3, 28($sp)
	mul $s3, $s3, 4
	add $s3, $t3, $s3
	lw $s3, 0($s3)
	lw $t1, 24($sp)
	sw $t1, 596($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $s3, $s3, $t1
	sw $t9, 0($s3)
	lw $s3, 28($sp)
	sw $s3, 600($sp)
	seq $s3, $s3, $t4
	beq $zero, $s3, L256
	lw $t1, 24($sp)
	sw $t1, 280($sp)
	seq $t9, $t1, $s5
	sw $t9, 604($sp)
	and $t9, $s3, $t9
L256:
	beq $zero, $t9, L257
	lw $t0, 32($sp)
	sw $t0, 344($sp)
	li $t0, 1
	b L258
L257:
L258:
	b L255
L254:
L255:
	mul $s3, $s4, 4
	add $s3, $t2, $s3
	lw $s3, 0($s3)
	add $s3, $s3, 2
	sw $s3, 28($sp)
	mul $s3, $s4, 4
	add $s3, $s6, $s3
	lw $s3, 0($s3)
	add $s3, $s3, 1
	move $t1, $s3
	lw $s3, 28($sp)
	sw $s3, 608($sp)
	move $a0, $s3
	move $a1, $t5
	sw $t1, 88($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $t9, 612($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t7, 480($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s6, 44($sp)
	sw $t3, 48($sp)
	sw $t7, 348($sp)
	sw $s1, 64($sp)
	sw $s7, 616($sp)
	sw $s0, 96($sp)
	sw $s2, 352($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 620($sp)
	lw $t9, 236($sp)
	sw $t9, 624($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $t9, 612($sp)
	sw $t9, 628($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 632($sp)
	lw $t7, 480($sp)
	sw $t7, 636($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 640($sp)
	lw $s3, 28($sp)
	sw $s3, 644($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $t2, 40($sp)
	lw $t1, 484($sp)
	sw $t1, 24($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 648($sp)
	lw $s2, 132($sp)
	sw $s2, 652($sp)
	lw $s7, 488($sp)
	sw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 656($sp)
	lw $t7, 348($sp)
	sw $t7, 660($sp)
	lw $t0, 344($sp)
	sw $t0, 32($sp)
	lw $s7, 588($sp)
	sw $s7, 488($sp)
	lw $s1, 64($sp)
	lw $s7, 616($sp)
	sw $s7, 588($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 664($sp)
	lw $s2, 352($sp)
	sw $s2, 144($sp)
	sw $s3, 28($sp)
	move $s3, $v0
	beq $zero, $s3, L259
	lw $t1, 24($sp)
	sw $t1, 484($sp)
	move $a0, $t1
	move $a1, $t5
	sw $t1, 88($sp)
	sw $t9, 236($sp)
	sw $t5, 4($sp)
	sw $t6, 8($sp)
	sw $t9, 612($sp)
	sw $s4, 12($sp)
	sw $s5, 16($sp)
	sw $t7, 240($sp)
	sw $t7, 480($sp)
	sw $t4, 20($sp)
	sw $t1, 24($sp)
	sw $s3, 668($sp)
	sw $t2, 40($sp)
	sw $t8, 56($sp)
	sw $s2, 244($sp)
	sw $s6, 44($sp)
	sw $t3, 48($sp)
	sw $s3, 140($sp)
	sw $t7, 348($sp)
	sw $t0, 344($sp)
	sw $s1, 64($sp)
	sw $s7, 616($sp)
	sw $s0, 96($sp)
	sw $s2, 352($sp)
	jal f_check
	lw $t1, 88($sp)
	sw $t1, 672($sp)
	lw $t9, 236($sp)
	sw $t9, 676($sp)
	lw $t5, 4($sp)
	lw $t6, 8($sp)
	lw $t9, 612($sp)
	sw $t9, 680($sp)
	lw $s4, 12($sp)
	lw $s5, 16($sp)
	lw $t7, 240($sp)
	sw $t7, 684($sp)
	lw $t7, 480($sp)
	sw $t7, 688($sp)
	lw $t4, 20($sp)
	lw $t1, 24($sp)
	sw $t1, 692($sp)
	lw $s3, 28($sp)
	sw $s3, 696($sp)
	lw $t0, 32($sp)
	lw $s2, 36($sp)
	lw $s3, 668($sp)
	sw $s3, 28($sp)
	lw $t2, 40($sp)
	lw $t1, 484($sp)
	sw $t1, 24($sp)
	lw $t3, 92($sp)
	lw $t8, 56($sp)
	lw $s2, 244($sp)
	sw $s2, 36($sp)
	lw $s6, 44($sp)
	lw $s7, 60($sp)
	sw $s7, 700($sp)
	lw $s2, 132($sp)
	sw $s2, 244($sp)
	lw $s7, 488($sp)
	sw $s7, 60($sp)
	lw $t3, 48($sp)
	sw $t3, 92($sp)
	lw $s3, 140($sp)
	sw $s3, 704($sp)
	lw $t7, 348($sp)
	sw $t7, 172($sp)
	lw $t0, 344($sp)
	sw $t0, 32($sp)
	lw $s7, 588($sp)
	sw $s7, 488($sp)
	lw $s1, 64($sp)
	lw $s7, 616($sp)
	sw $s7, 588($sp)
	lw $s2, 144($sp)
	sw $s2, 132($sp)
	lw $s0, 96($sp)
	sw $s0, 708($sp)
	lw $s2, 352($sp)
	sw $s2, 144($sp)
	sw $t9, 236($sp)
	move $t9, $v0
	sw $t9, 612($sp)
	and $t9, $s3, $t9
L259:
	beq $zero, $t9, L260
	lw $s3, 28($sp)
	sw $s3, 712($sp)
	sw $s3, 28($sp)
	mul $s3, $s3, 4
	sw $t9, 716($sp)
	add $t9, $t3, $s3
	lw $t9, 0($t9)
	lw $t1, 24($sp)
	sw $t1, 484($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t9, $t9, $t1
	lw $t9, 0($t9)
	seq $t9, $t9, -1
	lw $t9, 716($sp)
	sw $t9, 720($sp)
	sw $t9, 724($sp)
	and $t9, $t9, $t9
L260:
	beq $zero, $t9, L261
	add $t6, $t6, 1
	sw $t9, 716($sp)
	mul $t9, $t6, 4
	sw $t4, 20($sp)
	add $t4, $t2, $t9
	lw $s3, 28($sp)
	sw $s3, 728($sp)
	sw $s3, 28($sp)
	sw $s3, 0($t4)
	mul $t4, $t6, 4
	add $t4, $s6, $t4
	lw $t1, 24($sp)
	sw $t1, 732($sp)
	sw $t1, 24($sp)
	sw $t1, 0($t4)
	lw $s2, 36($sp)
	sw $s2, 352($sp)
	add $s2, $s2, 1
	lw $s3, 28($sp)
	sw $s3, 736($sp)
	mul $t4, $s3, 4
	add $t4, $t3, $t4
	lw $t4, 0($t4)
	lw $t1, 24($sp)
	sw $t1, 740($sp)
	sw $t1, 24($sp)
	mul $t1, $t1, 4
	add $t4, $t4, $t1
	sw $s2, 0($t4)
	lw $t4, 20($sp)
	sw $t4, 744($sp)
	seq $s2, $s3, $t4
	beq $zero, $s2, L263
	lw $t1, 24($sp)
	sw $t1, 748($sp)
	sw $t4, 20($sp)
	seq $t4, $t1, $s5
	sw $s2, 36($sp)
	and $s2, $s2, $t4
L263:
	beq $zero, $s2, L264
	lw $t0, 32($sp)
	sw $t0, 344($sp)
	li $t0, 1
	b L265
L264:
L265:
	b L262
L261:
L262:
	seq $t4, $t0, 1
	beq $zero, $t4, L266
	b L209
	b L267
L266:
L267:
	add $s4, $s4, 1
	b L208
L209:
	seq $t5, $t0, 1
	beq $zero, $t5, L268
	lw $t4, 20($sp)
	sw $t4, 752($sp)
	mul $t5, $t4, 4
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
	b L269
L268:
	la $a0, msg_1
	li $v0, 4
	syscall
L269:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 756
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 756
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
	beq $zero, $s2, L195
	sge $t5, $t5, 0
	and $s3, $s2, $t5
L195:
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
