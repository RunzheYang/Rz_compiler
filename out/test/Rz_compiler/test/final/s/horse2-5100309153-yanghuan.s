.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
.text
main:
	sub $sp, $sp, 732
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
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $s6, 64($sp)
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
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $t2, 60($sp)
	lw $t1, 8($sp)
	lw $s6, 64($sp)
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
	beq $zero, $s1, L217
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $s6, 64($sp)
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
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $t2, 60($sp)
	lw $t1, 8($sp)
	lw $s6, 64($sp)
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
	move $t8, $v0
	sw $s1, 72($sp)
	and $s1, $s1, $t8
L217:
	beq $zero, $s1, L218
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	sw $t0, 76($sp)
	and $t0, $s1, $t8
L218:
	beq $zero, $t0, L219
	add $t6, $t6, 1
	mul $t8, $t6, 4
	add $t8, $s4, $t8
	move $t7, $s2
	sw $t7, 0($t8)
	mul $t8, $t6, 4
	add $t8, $t4, $t8
	move $t7, $t0
	sw $t7, 0($t8)
	add $t8, $s5, 1
	mul $t7, $s2, 4
	add $t7, $t1, $t7
	lw $t7, 0($t7)
	sw $s4, 48($sp)
	mul $s4, $t0, 4
	add $s4, $t7, $s4
	sw $t8, 0($s4)
	seq $s2, $s2, $s7
	beq $zero, $s2, L221
	seq $s4, $t0, $s0
	sw $s2, 80($sp)
	and $s2, $s2, $s4
L221:
	beq $zero, $s2, L222
	li $t3, 1
	b L223
L222:
L223:
	b L220
L219:
L220:
	mul $s4, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 84($sp)
	lw $s4, 84($sp)
	sw $s4, 48($sp)
	add $s4, $s4, $s4
	lw $s4, 0($s4)
	add $s4, $s4, 1
	move $s2, $s4
	mul $s4, $t9, 4
	add $s4, $t4, $s4
	lw $s4, 0($s4)
	sub $s4, $s4, 2
	move $t0, $s4
	move $a0, $s2
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t0, 92($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $t2, 60($sp)
	lw $t1, 8($sp)
	lw $s6, 64($sp)
	lw $s1, 88($sp)
	sw $s1, 100($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 104($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	sw $s4, 108($sp)
	lw $s2, 96($sp)
	sw $s2, 112($sp)
	move $t8, $v0
	beq $zero, $t8, L224
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t8, 116($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
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
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $t8, 116($sp)
	lw $t2, 60($sp)
	lw $t1, 8($sp)
	lw $s6, 64($sp)
	lw $s1, 88($sp)
	sw $s1, 120($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 124($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	sw $s4, 128($sp)
	lw $s2, 96($sp)
	sw $s2, 132($sp)
	move $t7, $v0
	sw $t8, 136($sp)
	and $t8, $t8, $t7
L224:
	beq $zero, $t8, L225
	mul $t7, $s2, 4
	add $t7, $t1, $t7
	lw $t7, 0($t7)
	sw $s4, 48($sp)
	mul $s4, $t0, 4
	add $s4, $t7, $s4
	lw $s4, 0($s4)
	seq $s4, $s4, -1
	sw $t7, 140($sp)
	and $t7, $t8, $s4
L225:
	beq $zero, $t7, L226
	add $t6, $t6, 1
	mul $s4, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 144($sp)
	sw $s4, 48($sp)
	add $s4, $s4, $s4
	sw $t3, 40($sp)
	move $t3, $s2
	sw $t3, 0($s4)
	mul $t3, $t6, 4
	add $t3, $t4, $t3
	move $s4, $t0
	sw $s4, 0($t3)
	add $t3, $s5, 1
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	sw $t8, 148($sp)
	mul $t8, $t0, 4
	add $s4, $s4, $t8
	sw $t3, 0($s4)
	seq $t3, $s2, $s7
	beq $zero, $t3, L228
	seq $t0, $t0, $s0
	sw $t6, 16($sp)
	and $t6, $t3, $t0
L228:
	beq $zero, $t6, L229
	lw $t3, 40($sp)
	sw $t3, 152($sp)
	li $t3, 1
	b L230
L229:
L230:
	b L227
L226:
L227:
	mul $t0, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 156($sp)
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 1
	move $s2, $t0
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 2
	move $a0, $s2
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $s6, 64($sp)
	sw $t6, 164($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 48($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 168($sp)
	lw $t1, 8($sp)
	lw $t7, 160($sp)
	sw $t7, 172($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	sw $t6, 176($sp)
	lw $s1, 88($sp)
	sw $s1, 180($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 184($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 188($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	sw $s4, 192($sp)
	lw $s2, 96($sp)
	sw $s2, 196($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	beq $zero, $s4, L231
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t8, 148($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $s4, 200($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 204($sp)
	lw $t1, 8($sp)
	lw $t7, 160($sp)
	sw $t7, 208($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	sw $t6, 212($sp)
	lw $s1, 88($sp)
	sw $s1, 216($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s4, 200($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 220($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 224($sp)
	lw $s5, 44($sp)
	lw $s4, 48($sp)
	sw $s4, 200($sp)
	lw $s2, 96($sp)
	sw $s2, 228($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	lw $s4, 200($sp)
	sw $s4, 232($sp)
	lw $s4, 232($sp)
	sw $s4, 200($sp)
	sw $t6, 16($sp)
	and $t6, $s4, $s4
L231:
	beq $zero, $t6, L232
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	sw $t3, 40($sp)
	mul $t3, $t0, 4
	add $t3, $s4, $t3
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	sw $s1, 236($sp)
	and $s1, $t6, $t3
L232:
	beq $zero, $s1, L233
	lw $t6, 16($sp)
	sw $t6, 240($sp)
	add $t6, $t6, 1
	mul $t3, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 244($sp)
	add $t3, $s4, $t3
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t3)
	mul $t3, $t6, 4
	add $t3, $t4, $t3
	move $s4, $t0
	sw $s4, 0($t3)
	add $t3, $s5, 1
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	sw $t8, 148($sp)
	mul $t8, $t0, 4
	add $s4, $s4, $t8
	sw $t3, 0($s4)
	seq $t3, $s2, $s7
	beq $zero, $t3, L235
	seq $t0, $t0, $s0
	sw $s4, 248($sp)
	and $s4, $t3, $t0
L235:
	beq $zero, $s4, L236
	lw $t3, 40($sp)
	sw $t3, 252($sp)
	li $t3, 1
	b L237
L236:
L237:
	b L234
L233:
L234:
	mul $t0, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 256($sp)
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 2
	move $s2, $t0
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 1
	move $a0, $s2
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $s4, 260($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $s4, 48($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 268($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 272($sp)
	lw $t1, 8($sp)
	lw $t7, 160($sp)
	sw $t7, 276($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	sw $t6, 280($sp)
	lw $s1, 88($sp)
	sw $s1, 284($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 288($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 292($sp)
	lw $s5, 44($sp)
	lw $s1, 264($sp)
	sw $s1, 52($sp)
	lw $s4, 48($sp)
	sw $s4, 296($sp)
	lw $s2, 96($sp)
	sw $s2, 300($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	beq $zero, $s4, L238
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $s4, 260($sp)
	sw $t2, 60($sp)
	sw $t8, 148($sp)
	sw $t1, 8($sp)
	sw $s4, 304($sp)
	sw $t7, 160($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t6, 240($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 308($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 312($sp)
	lw $t1, 8($sp)
	lw $s4, 304($sp)
	sw $s4, 260($sp)
	lw $t7, 160($sp)
	sw $t7, 316($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	sw $t6, 320($sp)
	lw $s1, 88($sp)
	sw $s1, 324($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 328($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 332($sp)
	lw $s5, 44($sp)
	lw $s1, 264($sp)
	sw $s1, 336($sp)
	lw $s4, 48($sp)
	sw $s4, 304($sp)
	lw $s2, 96($sp)
	sw $s2, 340($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	lw $s4, 304($sp)
	sw $s4, 344($sp)
	lw $s4, 344($sp)
	sw $s4, 304($sp)
	sw $t0, 32($sp)
	and $t0, $s4, $s4
L238:
	beq $zero, $t0, L239
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	lw $t0, 32($sp)
	sw $t0, 348($sp)
	sw $t3, 40($sp)
	mul $t3, $t0, 4
	add $t3, $s4, $t3
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	lw $t0, 348($sp)
	sw $t0, 32($sp)
	sw $s5, 352($sp)
	and $s5, $t0, $t3
L239:
	beq $zero, $s5, L240
	lw $t6, 16($sp)
	sw $t6, 240($sp)
	add $t6, $t6, 1
	mul $t3, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 356($sp)
	add $t3, $s4, $t3
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t3)
	mul $t3, $t6, 4
	add $t3, $t4, $t3
	lw $t0, 32($sp)
	sw $t0, 348($sp)
	move $s4, $t0
	sw $s4, 0($t3)
	add $t3, $s5, 1
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	sw $t3, 360($sp)
	mul $t3, $t0, 4
	add $t3, $s4, $t3
	lw $t3, 360($sp)
	sw $t3, 364($sp)
	lw $t3, 364($sp)
	sw $t3, 360($sp)
	sw $t3, 0($t3)
	seq $t3, $s2, $s7
	beq $zero, $t3, L242
	seq $t0, $t0, $s0
	sw $s5, 368($sp)
	and $s5, $t3, $t0
L242:
	beq $zero, $s5, L243
	lw $t3, 40($sp)
	sw $t3, 372($sp)
	li $t3, 1
	b L244
L243:
L244:
	b L241
L240:
L241:
	mul $t0, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 376($sp)
	add $t0, $s4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 2
	move $s2, $t0
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 1
	move $a0, $s2
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t8, 148($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $s5, 380($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $s4, 48($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 384($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 388($sp)
	lw $t1, 8($sp)
	lw $t7, 160($sp)
	sw $t7, 392($sp)
	lw $t0, 348($sp)
	sw $t0, 396($sp)
	lw $s5, 368($sp)
	sw $s5, 400($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	sw $t6, 404($sp)
	lw $s1, 88($sp)
	sw $s1, 408($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s5, 380($sp)
	sw $s5, 368($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 412($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 416($sp)
	lw $s5, 44($sp)
	sw $s5, 380($sp)
	lw $s1, 264($sp)
	sw $s1, 68($sp)
	lw $s4, 48($sp)
	sw $s4, 420($sp)
	lw $s2, 96($sp)
	sw $s2, 424($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	beq $zero, $s4, L245
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $s4, 260($sp)
	sw $t2, 60($sp)
	sw $t8, 148($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $t0, 348($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t6, 240($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s4, 428($sp)
	sw $s1, 264($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 432($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 436($sp)
	lw $t1, 8($sp)
	lw $t7, 160($sp)
	sw $t7, 440($sp)
	lw $t0, 348($sp)
	sw $t0, 444($sp)
	lw $s5, 368($sp)
	sw $s5, 448($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	lw $s1, 88($sp)
	sw $s1, 452($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s5, 380($sp)
	sw $s5, 368($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 456($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 460($sp)
	lw $s5, 44($sp)
	sw $s5, 380($sp)
	lw $s4, 428($sp)
	sw $s4, 260($sp)
	lw $s1, 264($sp)
	sw $s1, 464($sp)
	lw $s4, 48($sp)
	sw $s4, 428($sp)
	lw $s2, 96($sp)
	sw $s2, 468($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	lw $s4, 428($sp)
	sw $s4, 472($sp)
	lw $s4, 472($sp)
	sw $s4, 428($sp)
	sw $t0, 32($sp)
	and $t0, $s4, $s4
L245:
	beq $zero, $t0, L246
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	lw $t0, 32($sp)
	sw $t0, 476($sp)
	sw $t3, 40($sp)
	mul $t3, $t0, 4
	add $t3, $s4, $t3
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	lw $t0, 476($sp)
	sw $t0, 32($sp)
	sw $t4, 480($sp)
	and $t4, $t0, $t3
L246:
	beq $zero, $t4, L247
	lw $t6, 16($sp)
	sw $t6, 240($sp)
	add $t6, $t6, 1
	mul $t3, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 484($sp)
	add $t3, $s4, $t3
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t3)
	mul $t3, $t6, 4
	add $t3, $t4, $t3
	lw $t0, 32($sp)
	sw $t0, 476($sp)
	move $s4, $t0
	sw $s4, 0($t3)
	add $t3, $s5, 1
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	sw $t8, 148($sp)
	mul $t8, $t0, 4
	add $s4, $s4, $t8
	sw $t3, 0($s4)
	seq $t3, $s2, $s7
	beq $zero, $t3, L249
	seq $s4, $t0, $s0
	sw $s4, 488($sp)
	and $s4, $t3, $s4
L249:
	beq $zero, $s4, L250
	lw $t3, 40($sp)
	sw $t3, 492($sp)
	li $t3, 1
	b L251
L250:
L251:
	b L248
L247:
L248:
	mul $t8, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 496($sp)
	add $t8, $s4, $t8
	lw $t8, 0($t8)
	add $t8, $t8, 2
	move $s2, $t8
	mul $t8, $t9, 4
	add $t8, $t4, $t8
	lw $t8, 0($t8)
	sub $t8, $t8, 1
	move $t0, $t8
	move $a0, $s2
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $s4, 500($sp)
	sw $t7, 160($sp)
	sw $t0, 348($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $s4, 48($sp)
	sw $t4, 504($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 508($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 512($sp)
	lw $t1, 8($sp)
	lw $s4, 500($sp)
	sw $s4, 516($sp)
	lw $t7, 160($sp)
	sw $t7, 520($sp)
	lw $t0, 348($sp)
	sw $t0, 524($sp)
	lw $s5, 368($sp)
	sw $s5, 528($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	sw $t6, 532($sp)
	lw $s1, 88($sp)
	sw $s1, 536($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s5, 380($sp)
	sw $s5, 368($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 540($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 544($sp)
	lw $s5, 44($sp)
	sw $s5, 380($sp)
	lw $s1, 264($sp)
	sw $s1, 548($sp)
	lw $t0, 476($sp)
	sw $t0, 32($sp)
	lw $s4, 48($sp)
	sw $s4, 500($sp)
	lw $t4, 504($sp)
	sw $t4, 4($sp)
	lw $s2, 96($sp)
	sw $s2, 552($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	beq $zero, $s4, L252
	lw $t0, 32($sp)
	sw $t0, 476($sp)
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $s4, 260($sp)
	sw $t2, 60($sp)
	sw $t8, 148($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $t0, 348($sp)
	sw $s4, 556($sp)
	sw $s6, 64($sp)
	sw $s1, 88($sp)
	sw $s3, 12($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t6, 240($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $t4, 504($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 560($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 564($sp)
	lw $t1, 8($sp)
	lw $s4, 500($sp)
	sw $s4, 84($sp)
	lw $t7, 160($sp)
	sw $t7, 568($sp)
	lw $t0, 348($sp)
	sw $t0, 572($sp)
	lw $s4, 556($sp)
	sw $s4, 260($sp)
	lw $s5, 368($sp)
	sw $s5, 576($sp)
	lw $s6, 64($sp)
	lw $t6, 164($sp)
	lw $s1, 88($sp)
	sw $s1, 580($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s5, 380($sp)
	sw $s5, 368($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 584($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 588($sp)
	lw $s5, 44($sp)
	sw $s5, 380($sp)
	lw $s1, 264($sp)
	sw $s1, 88($sp)
	lw $t0, 476($sp)
	sw $t0, 32($sp)
	lw $s4, 48($sp)
	sw $s4, 556($sp)
	lw $t4, 504($sp)
	sw $t4, 4($sp)
	lw $s2, 96($sp)
	sw $s2, 592($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	lw $s4, 556($sp)
	sw $s4, 596($sp)
	lw $s4, 596($sp)
	sw $s4, 556($sp)
	sw $t7, 600($sp)
	and $t7, $s4, $s4
L252:
	beq $zero, $t7, L253
	sw $t0, 476($sp)
	mul $t0, $s2, 4
	sw $t3, 40($sp)
	add $t3, $t1, $t0
	lw $t3, 0($t3)
	lw $t0, 32($sp)
	sw $t0, 604($sp)
	sw $t8, 148($sp)
	mul $t8, $t0, 4
	add $t3, $t3, $t8
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	sw $t0, 32($sp)
	and $t0, $t7, $t3
L253:
	beq $zero, $t0, L254
	lw $t6, 16($sp)
	sw $t6, 240($sp)
	add $t6, $t6, 1
	mul $t3, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 500($sp)
	add $t3, $s4, $t3
	move $t8, $s2
	sw $t8, 0($t3)
	mul $t3, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 504($sp)
	add $t3, $t4, $t3
	lw $t0, 32($sp)
	sw $t0, 608($sp)
	move $t8, $t0
	sw $t8, 0($t3)
	add $t3, $s5, 1
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	sw $s4, 48($sp)
	mul $s4, $t0, 4
	add $s4, $t8, $s4
	sw $t3, 0($s4)
	seq $t3, $s2, $s7
	beq $zero, $t3, L256
	seq $s4, $t0, $s0
	sw $s4, 612($sp)
	and $s4, $t3, $s4
L256:
	beq $zero, $s4, L257
	lw $t3, 40($sp)
	sw $t3, 616($sp)
	li $t3, 1
	b L258
L257:
L258:
	b L255
L254:
L255:
	mul $t8, $t9, 4
	lw $s4, 48($sp)
	sw $s4, 620($sp)
	add $t8, $s4, $t8
	lw $t8, 0($t8)
	add $t8, $t8, 2
	move $s2, $t8
	mul $t8, $t9, 4
	add $t8, $t4, $t8
	lw $t8, 0($t8)
	add $t8, $t8, 1
	move $t0, $t8
	move $a0, $s2
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t4, 4($sp)
	sw $t2, 60($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $t0, 348($sp)
	sw $t7, 624($sp)
	sw $s6, 64($sp)
	sw $s3, 12($sp)
	sw $t6, 16($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $s4, 48($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 628($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 632($sp)
	lw $t1, 8($sp)
	lw $s4, 500($sp)
	sw $s4, 260($sp)
	lw $t7, 160($sp)
	sw $t7, 636($sp)
	lw $t0, 348($sp)
	sw $t0, 640($sp)
	lw $s5, 368($sp)
	sw $s5, 644($sp)
	lw $t7, 624($sp)
	sw $t7, 648($sp)
	lw $s6, 64($sp)
	lw $t0, 608($sp)
	sw $t0, 652($sp)
	lw $t6, 164($sp)
	sw $t6, 656($sp)
	lw $s1, 88($sp)
	sw $s1, 660($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s5, 380($sp)
	sw $s5, 368($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 664($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 668($sp)
	lw $s5, 44($sp)
	sw $s5, 380($sp)
	lw $s4, 620($sp)
	sw $s4, 500($sp)
	lw $s1, 264($sp)
	sw $s1, 88($sp)
	lw $t0, 476($sp)
	sw $t0, 32($sp)
	lw $s4, 48($sp)
	sw $s4, 620($sp)
	lw $t4, 504($sp)
	sw $t4, 4($sp)
	lw $s2, 96($sp)
	sw $s2, 672($sp)
	sw $s4, 48($sp)
	move $s4, $v0
	beq $zero, $s4, L259
	lw $t0, 32($sp)
	sw $t0, 608($sp)
	move $a0, $t0
	move $a1, $s3
	sw $t5, 56($sp)
	sw $t2, 60($sp)
	sw $t8, 148($sp)
	sw $t1, 8($sp)
	sw $t7, 160($sp)
	sw $t0, 348($sp)
	sw $t7, 624($sp)
	sw $s6, 64($sp)
	sw $s3, 12($sp)
	sw $t9, 20($sp)
	sw $s0, 24($sp)
	sw $t6, 240($sp)
	sw $s7, 28($sp)
	sw $t0, 32($sp)
	sw $s2, 36($sp)
	sw $t3, 40($sp)
	sw $s5, 44($sp)
	sw $s1, 264($sp)
	sw $t0, 476($sp)
	sw $s4, 676($sp)
	sw $t4, 504($sp)
	sw $s2, 96($sp)
	jal f_check
	lw $t5, 56($sp)
	lw $t4, 4($sp)
	lw $s4, 260($sp)
	sw $s4, 680($sp)
	lw $t2, 60($sp)
	lw $t8, 148($sp)
	sw $t8, 684($sp)
	lw $t1, 8($sp)
	lw $s4, 500($sp)
	sw $s4, 260($sp)
	lw $t7, 160($sp)
	lw $t0, 348($sp)
	sw $t0, 688($sp)
	lw $s5, 368($sp)
	sw $s5, 692($sp)
	lw $t7, 624($sp)
	sw $t7, 696($sp)
	lw $s6, 64($sp)
	lw $t0, 608($sp)
	sw $t0, 700($sp)
	lw $t6, 164($sp)
	lw $s1, 88($sp)
	sw $s1, 704($sp)
	lw $s3, 12($sp)
	lw $t6, 16($sp)
	sw $t6, 164($sp)
	lw $s5, 380($sp)
	sw $s5, 368($sp)
	lw $t9, 20($sp)
	lw $s0, 24($sp)
	lw $t0, 92($sp)
	sw $t0, 608($sp)
	lw $t6, 240($sp)
	sw $t6, 16($sp)
	lw $s7, 28($sp)
	lw $t0, 32($sp)
	sw $t0, 92($sp)
	lw $s2, 36($sp)
	lw $t3, 40($sp)
	sw $t3, 708($sp)
	lw $s5, 44($sp)
	sw $s5, 380($sp)
	lw $s4, 620($sp)
	sw $s4, 500($sp)
	lw $s1, 264($sp)
	sw $s1, 88($sp)
	lw $t0, 476($sp)
	sw $t0, 32($sp)
	lw $s4, 48($sp)
	sw $s4, 620($sp)
	lw $s4, 676($sp)
	sw $s4, 48($sp)
	lw $t4, 504($sp)
	sw $t4, 4($sp)
	lw $s2, 96($sp)
	sw $s2, 712($sp)
	sw $t0, 476($sp)
	move $t0, $v0
	sw $t2, 60($sp)
	and $t2, $s4, $t0
L259:
	beq $zero, $t2, L260
	mul $s4, $s2, 4
	add $s4, $t1, $s4
	lw $s4, 0($s4)
	lw $t0, 32($sp)
	sw $t0, 716($sp)
	sw $t3, 40($sp)
	mul $t3, $t0, 4
	add $t3, $s4, $t3
	lw $t3, 0($t3)
	seq $t3, $t3, -1
	sw $t0, 32($sp)
	and $t0, $t2, $t3
L260:
	beq $zero, $t0, L261
	lw $t6, 16($sp)
	sw $t6, 240($sp)
	add $t6, $t6, 1
	mul $t3, $t6, 4
	lw $s4, 48($sp)
	sw $s4, 720($sp)
	add $t3, $s4, $t3
	sw $s4, 48($sp)
	move $s4, $s2
	sw $s4, 0($t3)
	mul $t3, $t6, 4
	lw $t4, 4($sp)
	sw $t4, 504($sp)
	add $t3, $t4, $t3
	lw $t0, 32($sp)
	sw $t0, 724($sp)
	move $s4, $t0
	sw $s4, 0($t3)
	add $s5, $s5, 1
	mul $t3, $s2, 4
	add $t3, $t1, $t3
	lw $t3, 0($t3)
	mul $s4, $t0, 4
	add $t3, $t3, $s4
	sw $s5, 0($t3)
	seq $s5, $s2, $s7
	beq $zero, $s5, L263
	seq $t3, $t0, $s0
	sw $t6, 16($sp)
	and $t6, $s5, $t3
L263:
	beq $zero, $t6, L264
	lw $t3, 40($sp)
	sw $t3, 728($sp)
	li $t3, 1
	b L265
L264:
L265:
	b L262
L261:
L262:
	seq $s5, $t3, 1
	beq $zero, $s5, L266
	b L209
	b L267
L266:
L267:
	add $s5, $t9, 1
	move $t9, $s5
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
	add $sp, $sp, 732
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 732
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
