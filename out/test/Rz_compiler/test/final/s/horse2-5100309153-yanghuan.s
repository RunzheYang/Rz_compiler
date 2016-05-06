.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	"\n"
	.word	13
msg_1:	.asciiz	"no solution!\n"
.text
main:
	sub $sp, $sp, 84
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
L191:
	mul $t4, $s3, $s3
	slt $t4, $t0, $t4
	beq $zero, $t4, L192
	mul $t4, $t0, 4
	add $t4, $s4, $t4
	li $t1, 0
	sw $t1, 0($t4)
L193:
	add $t0, $t0, 1
	b L191
L192:
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
L194:
	mul $t1, $s3, $s3
	slt $t1, $t0, $t1
	beq $zero, $t1, L195
	mul $t1, $t0, 4
	add $t1, $t4, $t1
	li $s1, 0
	sw $s1, 0($t1)
L196:
	add $t0, $t0, 1
	b L194
L195:
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
L197:
	slt $s1, $t0, $s3
	beq $zero, $s1, L198
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
L200:
	slt $t8, $s1, $s3
	beq $zero, $t8, L201
	mul $t8, $t0, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $s1, 4
	add $t8, $t8, $t7
	li $t7, -1
	sw $t7, 0($t8)
L202:
	add $s1, $s1, 1
	b L200
L201:
L199:
	add $t0, $t0, 1
	b L197
L198:
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
L203:
	sle $s5, $t9, $t6
	beq $zero, $s5, L204
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
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L205
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $s1, 52($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $s1, 52($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L206
L205:
	li $s1, 0
L206:
	beq $zero, $s1, L207
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L208
L207:
	li $s1, 0
L208:
	beq $zero, $s1, L209
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
	beq $zero, $s2, L211
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L212
L211:
	li $s2, 0
L212:
	beq $zero, $s2, L213
	li $t3, 1
	b L214
L213:
L214:
	b L210
L209:
L210:
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
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L215
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $s1, 56($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $s1, 56($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L216
L215:
	li $s1, 0
L216:
	beq $zero, $s1, L217
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L218
L217:
	li $s1, 0
L218:
	beq $zero, $s1, L219
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
	beq $zero, $s2, L221
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L222
L221:
	li $s2, 0
L222:
	beq $zero, $s2, L223
	li $t3, 1
	b L224
L223:
L224:
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
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L225
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s1, 60($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s1, 60($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L226
L225:
	li $s1, 0
L226:
	beq $zero, $s1, L227
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L228
L227:
	li $s1, 0
L228:
	beq $zero, $s1, L229
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
	beq $zero, $s2, L231
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L232
L231:
	li $s2, 0
L232:
	beq $zero, $s2, L233
	li $t3, 1
	b L234
L233:
L234:
	b L230
L229:
L230:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	add $s2, $s2, 1
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 2
	move $a0, $s2
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L235
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $s1, 64($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $s1, 64($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L236
L235:
	li $s1, 0
L236:
	beq $zero, $s1, L237
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L238
L237:
	li $s1, 0
L238:
	beq $zero, $s1, L239
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
	beq $zero, $s2, L241
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L242
L241:
	li $s2, 0
L242:
	beq $zero, $s2, L243
	li $t3, 1
	b L244
L243:
L244:
	b L240
L239:
L240:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 2
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 1
	move $a0, $s2
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L245
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $s1, 68($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $s1, 68($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L246
L245:
	li $s1, 0
L246:
	beq $zero, $s1, L247
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L248
L247:
	li $s1, 0
L248:
	beq $zero, $s1, L249
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
	beq $zero, $s2, L251
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L252
L251:
	li $s2, 0
L252:
	beq $zero, $s2, L253
	li $t3, 1
	b L254
L253:
L254:
	b L250
L249:
L250:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	sub $s2, $s2, 2
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 1
	move $a0, $s2
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L255
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s1, 72($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s1, 72($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L256
L255:
	li $s1, 0
L256:
	beq $zero, $s1, L257
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L258
L257:
	li $s1, 0
L258:
	beq $zero, $s1, L259
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
	beq $zero, $s2, L261
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L262
L261:
	li $s2, 0
L262:
	beq $zero, $s2, L263
	li $t3, 1
	b L264
L263:
L264:
	b L260
L259:
L260:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	add $s2, $s2, 2
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	sub $t0, $t0, 1
	move $a0, $s2
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L265
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s1, 76($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s1, 76($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L266
L265:
	li $s1, 0
L266:
	beq $zero, $s1, L267
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L268
L267:
	li $s1, 0
L268:
	beq $zero, $s1, L269
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
	beq $zero, $s2, L271
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L272
L271:
	li $s2, 0
L272:
	beq $zero, $s2, L273
	li $t3, 1
	b L274
L273:
L274:
	b L270
L269:
L270:
	mul $s2, $t9, 4
	add $s2, $s4, $s2
	lw $s2, 0($s2)
	add $s2, $s2, 2
	mul $t0, $t9, 4
	add $t0, $t4, $t0
	lw $t0, 0($t0)
	add $t0, $t0, 1
	move $a0, $s2
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L275
	move $a0, $t0
	move $a1, $s3
	sw $s7, 4($sp)
	sw $t0, 8($sp)
	sw $s2, 12($sp)
	sw $t3, 16($sp)
	sw $s5, 20($sp)
	sw $s4, 24($sp)
	sw $s1, 80($sp)
	sw $t4, 28($sp)
	sw $s3, 32($sp)
	sw $t6, 36($sp)
	sw $t9, 40($sp)
	sw $t1, 44($sp)
	sw $s0, 48($sp)
	jal f_check
	lw $s7, 4($sp)
	lw $t0, 8($sp)
	lw $s2, 12($sp)
	lw $t3, 16($sp)
	lw $s5, 20($sp)
	lw $s4, 24($sp)
	lw $s1, 80($sp)
	lw $t4, 28($sp)
	lw $s3, 32($sp)
	lw $t6, 36($sp)
	lw $t9, 40($sp)
	lw $t1, 44($sp)
	lw $s0, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L276
L275:
	li $s1, 0
L276:
	beq $zero, $s1, L277
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L278
L277:
	li $s1, 0
L278:
	beq $zero, $s1, L279
	add $t6, $t6, 1
	mul $s1, $t6, 4
	add $s1, $s4, $s1
	move $t8, $s2
	sw $t8, 0($s1)
	mul $s1, $t6, 4
	add $s1, $t4, $s1
	move $t8, $t0
	sw $t8, 0($s1)
	add $s5, $s5, 1
	mul $s1, $s2, 4
	add $s1, $t1, $s1
	lw $s1, 0($s1)
	mul $t8, $t0, 4
	add $s1, $s1, $t8
	sw $s5, 0($s1)
	seq $s5, $s2, $s7
	beq $zero, $s5, L281
	seq $s2, $t0, $s0
	and $s5, $s5, $s2
	b L282
L281:
	li $s5, 0
L282:
	beq $zero, $s5, L283
	li $t3, 1
	b L284
L283:
L284:
	b L280
L279:
L280:
	seq $s5, $t3, 1
	beq $zero, $s5, L285
	b L204
	b L286
L285:
L286:
	add $s5, $t9, 1
	move $t9, $s5
	b L203
L204:
	seq $s3, $t3, 1
	beq $zero, $s3, L287
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
	b L288
L287:
	la $a0, msg_1
	li $v0, 4
	syscall
L288:
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 84
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 84
	jr $ra
	b main_end
main_end:
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
f_check:
	move $s3, $a0
	move $s5, $a1
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	slt $s5, $s3, $s5
	beq $zero, $s5, L189
	sge $s3, $s3, 0
	and $s3, $s5, $s3
	b L190
L189:
	li $s3, 0
L190:
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
