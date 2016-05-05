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
L208:
	mul $t4, $s3, $s3
	slt $t4, $t0, $t4
	beq $zero, $t4, L209
	mul $t4, $t0, 4
	add $t4, $s4, $t4
	li $t1, 0
	sw $t1, 0($t4)
L210:
	add $t0, $t0, 1
	b L208
L209:
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
L211:
	mul $t1, $s3, $s3
	slt $t1, $t0, $t1
	beq $zero, $t1, L212
	mul $t1, $t0, 4
	add $t1, $t4, $t1
	li $s1, 0
	sw $s1, 0($t1)
L213:
	add $t0, $t0, 1
	b L211
L212:
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
L214:
	slt $s1, $t0, $s3
	beq $zero, $s1, L215
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
L217:
	slt $t8, $s1, $s3
	beq $zero, $t8, L218
	mul $t8, $t0, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $s1, 4
	add $t8, $t8, $t7
	li $t7, -1
	sw $t7, 0($t8)
L219:
	add $s1, $s1, 1
	b L217
L218:
L216:
	add $t0, $t0, 1
	b L214
L215:
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
L220:
	sle $s5, $t9, $t6
	beq $zero, $s5, L221
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L222
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $s1, 52($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $s1, 52($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L223
L222:
	li $s1, 0
L223:
	beq $zero, $s1, L224
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L225
L224:
	li $s1, 0
L225:
	beq $zero, $s1, L226
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
	beq $zero, $s2, L228
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L229
L228:
	li $s2, 0
L229:
	beq $zero, $s2, L230
	li $t3, 1
	b L231
L230:
L231:
	b L227
L226:
L227:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L232
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $s1, 56($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $s1, 56($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L233
L232:
	li $s1, 0
L233:
	beq $zero, $s1, L234
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L235
L234:
	li $s1, 0
L235:
	beq $zero, $s1, L236
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
	beq $zero, $s2, L238
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L239
L238:
	li $s2, 0
L239:
	beq $zero, $s2, L240
	li $t3, 1
	b L241
L240:
L241:
	b L237
L236:
L237:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L242
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s1, 60($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s1, 60($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L243
L242:
	li $s1, 0
L243:
	beq $zero, $s1, L244
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L245
L244:
	li $s1, 0
L245:
	beq $zero, $s1, L246
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
	beq $zero, $s2, L248
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L249
L248:
	li $s2, 0
L249:
	beq $zero, $s2, L250
	li $t3, 1
	b L251
L250:
L251:
	b L247
L246:
L247:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L252
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $s1, 64($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $s1, 64($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L253
L252:
	li $s1, 0
L253:
	beq $zero, $s1, L254
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L255
L254:
	li $s1, 0
L255:
	beq $zero, $s1, L256
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
	beq $zero, $s2, L258
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L259
L258:
	li $s2, 0
L259:
	beq $zero, $s2, L260
	li $t3, 1
	b L261
L260:
L261:
	b L257
L256:
L257:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L262
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $s1, 68($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $s1, 68($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L263
L262:
	li $s1, 0
L263:
	beq $zero, $s1, L264
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L265
L264:
	li $s1, 0
L265:
	beq $zero, $s1, L266
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
	beq $zero, $s2, L268
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L269
L268:
	li $s2, 0
L269:
	beq $zero, $s2, L270
	li $t3, 1
	b L271
L270:
L271:
	b L267
L266:
L267:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L272
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s1, 72($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s1, 72($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L273
L272:
	li $s1, 0
L273:
	beq $zero, $s1, L274
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L275
L274:
	li $s1, 0
L275:
	beq $zero, $s1, L276
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
	beq $zero, $s2, L278
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L279
L278:
	li $s2, 0
L279:
	beq $zero, $s2, L280
	li $t3, 1
	b L281
L280:
L281:
	b L277
L276:
L277:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L282
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s1, 76($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s1, 76($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L283
L282:
	li $s1, 0
L283:
	beq $zero, $s1, L284
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L285
L284:
	li $s1, 0
L285:
	beq $zero, $s1, L286
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
	beq $zero, $s2, L288
	seq $t0, $t0, $s0
	and $s2, $s2, $t0
	b L289
L288:
	li $s2, 0
L289:
	beq $zero, $s2, L290
	li $t3, 1
	b L291
L290:
L291:
	b L287
L286:
L287:
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
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $s1, $v0
	beq $zero, $s1, L292
	move $a0, $t0
	move $a1, $s3
	sw $t1, 4($sp)
	sw $s0, 8($sp)
	sw $s7, 12($sp)
	sw $t0, 16($sp)
	sw $s2, 20($sp)
	sw $t3, 24($sp)
	sw $s5, 28($sp)
	sw $s4, 32($sp)
	sw $s1, 80($sp)
	sw $t4, 36($sp)
	sw $s3, 40($sp)
	sw $t6, 44($sp)
	sw $t9, 48($sp)
	jal f_check
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s7, 12($sp)
	lw $t0, 16($sp)
	lw $s2, 20($sp)
	lw $t3, 24($sp)
	lw $s5, 28($sp)
	lw $s4, 32($sp)
	lw $s1, 80($sp)
	lw $t4, 36($sp)
	lw $s3, 40($sp)
	lw $t6, 44($sp)
	lw $t9, 48($sp)
	move $t8, $v0
	and $s1, $s1, $t8
	b L293
L292:
	li $s1, 0
L293:
	beq $zero, $s1, L294
	mul $t8, $s2, 4
	add $t8, $t1, $t8
	lw $t8, 0($t8)
	mul $t7, $t0, 4
	add $t8, $t8, $t7
	lw $t8, 0($t8)
	seq $t8, $t8, -1
	and $s1, $s1, $t8
	b L295
L294:
	li $s1, 0
L295:
	beq $zero, $s1, L296
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
	beq $zero, $s5, L298
	seq $s2, $t0, $s0
	and $s5, $s5, $s2
	b L299
L298:
	li $s5, 0
L299:
	beq $zero, $s5, L300
	li $t3, 1
	b L301
L300:
L301:
	b L297
L296:
L297:
	seq $s5, $t3, 1
	beq $zero, $s5, L302
	b L221
	b L303
L302:
L303:
	add $s5, $t9, 1
	move $t9, $s5
	b L220
L221:
	seq $s3, $t3, 1
	beq $zero, $s3, L304
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
	b L305
L304:
	la $a0, msg_1
	li $v0, 4
	syscall
L305:
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
