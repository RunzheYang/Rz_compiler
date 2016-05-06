.data
.align 2
_buffer:	.space	256
	.word	1
msg_0:	.asciiz	" "
	.word	1
msg_1:	.asciiz	"\n"
	.word	0
msg_2:	.asciiz	""
var_0:	.word	0
.text
main:
	sub $sp, $sp, 8220
	sw $ra, 0($sp)
	li $a0, 8
	li $v0, 9
	syscall
	li $t0, 1
	sw $t0, 4($sp)
	lw $t0, 4($sp)
	sw $t0, 0($v0)
	add $t0, $v0, 4
	sw $t0, 8($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, 8($sp)
	move $t0, $t2
	sw $t0, var_0
	lw $t0, var_0
	sw $t0, var_0
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	la $t0, 0($t2)
	sw $t0, 12($sp)
	lw $t2, 12($sp)
	lw $t0, 0($t2)
	sw $t0, 16($sp)
	li $t0, 0
	sw $t0, 16($sp)
	lw $t2, 12($sp)
	lw $t0, 16($sp)
	sw $t0, 0($t2)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 20($sp)
	lw $t2, 20($sp)
	move $t0, $t2
	sw $t0, 24($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 28($sp)
	lw $t2, 28($sp)
	move $t0, $t2
	sw $t0, 32($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 36($sp)
	lw $t2, 36($sp)
	move $t0, $t2
	sw $t0, 40($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 44($sp)
	lw $t2, 44($sp)
	move $t0, $t2
	sw $t0, 48($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 52($sp)
	lw $t2, 52($sp)
	move $t0, $t2
	sw $t0, 56($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 60($sp)
	lw $t2, 60($sp)
	move $t0, $t2
	sw $t0, 64($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 68($sp)
	lw $t2, 68($sp)
	move $t0, $t2
	sw $t0, 72($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 76($sp)
	lw $t2, 76($sp)
	move $t0, $t2
	sw $t0, 80($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 84($sp)
	lw $t2, 84($sp)
	move $t0, $t2
	sw $t0, 88($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 92($sp)
	lw $t2, 92($sp)
	move $t0, $t2
	sw $t0, 96($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 100($sp)
	lw $t2, 100($sp)
	move $t0, $t2
	sw $t0, 104($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 108($sp)
	lw $t2, 108($sp)
	move $t0, $t2
	sw $t0, 112($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 116($sp)
	lw $t2, 116($sp)
	move $t0, $t2
	sw $t0, 120($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 124($sp)
	lw $t2, 124($sp)
	move $t0, $t2
	sw $t0, 128($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 132($sp)
	lw $t2, 132($sp)
	move $t0, $t2
	sw $t0, 136($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 140($sp)
	lw $t2, 140($sp)
	move $t0, $t2
	sw $t0, 144($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 148($sp)
	lw $t2, 148($sp)
	move $t0, $t2
	sw $t0, 152($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 156($sp)
	lw $t2, 156($sp)
	move $t0, $t2
	sw $t0, 160($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 164($sp)
	lw $t2, 164($sp)
	move $t0, $t2
	sw $t0, 168($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 172($sp)
	lw $t2, 172($sp)
	move $t0, $t2
	sw $t0, 176($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 180($sp)
	lw $t2, 180($sp)
	move $t0, $t2
	sw $t0, 184($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 188($sp)
	lw $t2, 188($sp)
	move $t0, $t2
	sw $t0, 192($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 196($sp)
	lw $t2, 196($sp)
	move $t0, $t2
	sw $t0, 200($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 204($sp)
	lw $t2, 204($sp)
	move $t0, $t2
	sw $t0, 208($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 212($sp)
	lw $t2, 212($sp)
	move $t0, $t2
	sw $t0, 216($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 220($sp)
	lw $t2, 220($sp)
	move $t0, $t2
	sw $t0, 224($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 228($sp)
	lw $t2, 228($sp)
	move $t0, $t2
	sw $t0, 232($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 236($sp)
	lw $t2, 236($sp)
	move $t0, $t2
	sw $t0, 240($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 244($sp)
	lw $t2, 244($sp)
	move $t0, $t2
	sw $t0, 248($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 252($sp)
	lw $t2, 252($sp)
	move $t0, $t2
	sw $t0, 256($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 260($sp)
	lw $t2, 260($sp)
	move $t0, $t2
	sw $t0, 264($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 268($sp)
	lw $t2, 268($sp)
	move $t0, $t2
	sw $t0, 272($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 276($sp)
	lw $t2, 276($sp)
	move $t0, $t2
	sw $t0, 280($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 284($sp)
	lw $t2, 284($sp)
	move $t0, $t2
	sw $t0, 288($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 292($sp)
	lw $t2, 292($sp)
	move $t0, $t2
	sw $t0, 296($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 300($sp)
	lw $t2, 300($sp)
	move $t0, $t2
	sw $t0, 304($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 308($sp)
	lw $t2, 308($sp)
	move $t0, $t2
	sw $t0, 312($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 316($sp)
	lw $t2, 316($sp)
	move $t0, $t2
	sw $t0, 320($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 324($sp)
	lw $t2, 324($sp)
	move $t0, $t2
	sw $t0, 328($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 332($sp)
	lw $t2, 332($sp)
	move $t0, $t2
	sw $t0, 336($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 340($sp)
	lw $t2, 340($sp)
	move $t0, $t2
	sw $t0, 344($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 348($sp)
	lw $t2, 348($sp)
	move $t0, $t2
	sw $t0, 352($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 356($sp)
	lw $t2, 356($sp)
	move $t0, $t2
	sw $t0, 360($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 364($sp)
	lw $t2, 364($sp)
	move $t0, $t2
	sw $t0, 368($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 372($sp)
	lw $t2, 372($sp)
	move $t0, $t2
	sw $t0, 376($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 380($sp)
	lw $t2, 380($sp)
	move $t0, $t2
	sw $t0, 384($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 388($sp)
	lw $t2, 388($sp)
	move $t0, $t2
	sw $t0, 392($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 396($sp)
	lw $t2, 396($sp)
	move $t0, $t2
	sw $t0, 400($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 404($sp)
	lw $t2, 404($sp)
	move $t0, $t2
	sw $t0, 408($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 412($sp)
	lw $t2, 412($sp)
	move $t0, $t2
	sw $t0, 416($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 420($sp)
	lw $t2, 420($sp)
	move $t0, $t2
	sw $t0, 424($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 428($sp)
	lw $t2, 428($sp)
	move $t0, $t2
	sw $t0, 432($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 436($sp)
	lw $t2, 436($sp)
	move $t0, $t2
	sw $t0, 440($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 444($sp)
	lw $t2, 444($sp)
	move $t0, $t2
	sw $t0, 448($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 452($sp)
	lw $t2, 452($sp)
	move $t0, $t2
	sw $t0, 456($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 460($sp)
	lw $t2, 460($sp)
	move $t0, $t2
	sw $t0, 464($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 468($sp)
	lw $t2, 468($sp)
	move $t0, $t2
	sw $t0, 472($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 476($sp)
	lw $t2, 476($sp)
	move $t0, $t2
	sw $t0, 480($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 484($sp)
	lw $t2, 484($sp)
	move $t0, $t2
	sw $t0, 488($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 492($sp)
	lw $t2, 492($sp)
	move $t0, $t2
	sw $t0, 496($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 500($sp)
	lw $t2, 500($sp)
	move $t0, $t2
	sw $t0, 504($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 508($sp)
	lw $t2, 508($sp)
	move $t0, $t2
	sw $t0, 512($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 516($sp)
	lw $t2, 516($sp)
	move $t0, $t2
	sw $t0, 520($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 524($sp)
	lw $t2, 524($sp)
	move $t0, $t2
	sw $t0, 528($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 532($sp)
	lw $t2, 532($sp)
	move $t0, $t2
	sw $t0, 536($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 540($sp)
	lw $t2, 540($sp)
	move $t0, $t2
	sw $t0, 544($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 548($sp)
	lw $t2, 548($sp)
	move $t0, $t2
	sw $t0, 552($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 556($sp)
	lw $t2, 556($sp)
	move $t0, $t2
	sw $t0, 560($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 564($sp)
	lw $t2, 564($sp)
	move $t0, $t2
	sw $t0, 568($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 572($sp)
	lw $t2, 572($sp)
	move $t0, $t2
	sw $t0, 576($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 580($sp)
	lw $t2, 580($sp)
	move $t0, $t2
	sw $t0, 584($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 588($sp)
	lw $t2, 588($sp)
	move $t0, $t2
	sw $t0, 592($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 596($sp)
	lw $t2, 596($sp)
	move $t0, $t2
	sw $t0, 600($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 604($sp)
	lw $t2, 604($sp)
	move $t0, $t2
	sw $t0, 608($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 612($sp)
	lw $t2, 612($sp)
	move $t0, $t2
	sw $t0, 616($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 620($sp)
	lw $t2, 620($sp)
	move $t0, $t2
	sw $t0, 624($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 628($sp)
	lw $t2, 628($sp)
	move $t0, $t2
	sw $t0, 632($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 636($sp)
	lw $t2, 636($sp)
	move $t0, $t2
	sw $t0, 640($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 644($sp)
	lw $t2, 644($sp)
	move $t0, $t2
	sw $t0, 648($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 652($sp)
	lw $t2, 652($sp)
	move $t0, $t2
	sw $t0, 656($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 660($sp)
	lw $t2, 660($sp)
	move $t0, $t2
	sw $t0, 664($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 668($sp)
	lw $t2, 668($sp)
	move $t0, $t2
	sw $t0, 672($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 676($sp)
	lw $t2, 676($sp)
	move $t0, $t2
	sw $t0, 680($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 684($sp)
	lw $t2, 684($sp)
	move $t0, $t2
	sw $t0, 688($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 692($sp)
	lw $t2, 692($sp)
	move $t0, $t2
	sw $t0, 696($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 700($sp)
	lw $t2, 700($sp)
	move $t0, $t2
	sw $t0, 704($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 708($sp)
	lw $t2, 708($sp)
	move $t0, $t2
	sw $t0, 712($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 716($sp)
	lw $t2, 716($sp)
	move $t0, $t2
	sw $t0, 720($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 724($sp)
	lw $t2, 724($sp)
	move $t0, $t2
	sw $t0, 728($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 732($sp)
	lw $t2, 732($sp)
	move $t0, $t2
	sw $t0, 736($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 740($sp)
	lw $t2, 740($sp)
	move $t0, $t2
	sw $t0, 744($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 748($sp)
	lw $t2, 748($sp)
	move $t0, $t2
	sw $t0, 752($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 756($sp)
	lw $t2, 756($sp)
	move $t0, $t2
	sw $t0, 760($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 764($sp)
	lw $t2, 764($sp)
	move $t0, $t2
	sw $t0, 768($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 772($sp)
	lw $t2, 772($sp)
	move $t0, $t2
	sw $t0, 776($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 780($sp)
	lw $t2, 780($sp)
	move $t0, $t2
	sw $t0, 784($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 788($sp)
	lw $t2, 788($sp)
	move $t0, $t2
	sw $t0, 792($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 796($sp)
	lw $t2, 796($sp)
	move $t0, $t2
	sw $t0, 800($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 804($sp)
	lw $t2, 804($sp)
	move $t0, $t2
	sw $t0, 808($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 812($sp)
	lw $t2, 812($sp)
	move $t0, $t2
	sw $t0, 816($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 820($sp)
	lw $t2, 820($sp)
	move $t0, $t2
	sw $t0, 824($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 828($sp)
	lw $t2, 828($sp)
	move $t0, $t2
	sw $t0, 832($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 836($sp)
	lw $t2, 836($sp)
	move $t0, $t2
	sw $t0, 840($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 844($sp)
	lw $t2, 844($sp)
	move $t0, $t2
	sw $t0, 848($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 852($sp)
	lw $t2, 852($sp)
	move $t0, $t2
	sw $t0, 856($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 860($sp)
	lw $t2, 860($sp)
	move $t0, $t2
	sw $t0, 864($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 868($sp)
	lw $t2, 868($sp)
	move $t0, $t2
	sw $t0, 872($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 876($sp)
	lw $t2, 876($sp)
	move $t0, $t2
	sw $t0, 880($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 884($sp)
	lw $t2, 884($sp)
	move $t0, $t2
	sw $t0, 888($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 892($sp)
	lw $t2, 892($sp)
	move $t0, $t2
	sw $t0, 896($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 900($sp)
	lw $t2, 900($sp)
	move $t0, $t2
	sw $t0, 904($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 908($sp)
	lw $t2, 908($sp)
	move $t0, $t2
	sw $t0, 912($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 916($sp)
	lw $t2, 916($sp)
	move $t0, $t2
	sw $t0, 920($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 924($sp)
	lw $t2, 924($sp)
	move $t0, $t2
	sw $t0, 928($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 932($sp)
	lw $t2, 932($sp)
	move $t0, $t2
	sw $t0, 936($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 940($sp)
	lw $t2, 940($sp)
	move $t0, $t2
	sw $t0, 944($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 948($sp)
	lw $t2, 948($sp)
	move $t0, $t2
	sw $t0, 952($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 956($sp)
	lw $t2, 956($sp)
	move $t0, $t2
	sw $t0, 960($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 964($sp)
	lw $t2, 964($sp)
	move $t0, $t2
	sw $t0, 968($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 972($sp)
	lw $t2, 972($sp)
	move $t0, $t2
	sw $t0, 976($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 980($sp)
	lw $t2, 980($sp)
	move $t0, $t2
	sw $t0, 984($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 988($sp)
	lw $t2, 988($sp)
	move $t0, $t2
	sw $t0, 992($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 996($sp)
	lw $t2, 996($sp)
	move $t0, $t2
	sw $t0, 1000($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1004($sp)
	lw $t2, 1004($sp)
	move $t0, $t2
	sw $t0, 1008($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1012($sp)
	lw $t2, 1012($sp)
	move $t0, $t2
	sw $t0, 1016($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1020($sp)
	lw $t2, 1020($sp)
	move $t0, $t2
	sw $t0, 1024($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1028($sp)
	lw $t2, 1028($sp)
	move $t0, $t2
	sw $t0, 1032($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1036($sp)
	lw $t2, 1036($sp)
	move $t0, $t2
	sw $t0, 1040($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1044($sp)
	lw $t2, 1044($sp)
	move $t0, $t2
	sw $t0, 1048($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1052($sp)
	lw $t2, 1052($sp)
	move $t0, $t2
	sw $t0, 1056($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1060($sp)
	lw $t2, 1060($sp)
	move $t0, $t2
	sw $t0, 1064($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1068($sp)
	lw $t2, 1068($sp)
	move $t0, $t2
	sw $t0, 1072($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1076($sp)
	lw $t2, 1076($sp)
	move $t0, $t2
	sw $t0, 1080($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1084($sp)
	lw $t2, 1084($sp)
	move $t0, $t2
	sw $t0, 1088($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1092($sp)
	lw $t2, 1092($sp)
	move $t0, $t2
	sw $t0, 1096($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1100($sp)
	lw $t2, 1100($sp)
	move $t0, $t2
	sw $t0, 1104($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1108($sp)
	lw $t2, 1108($sp)
	move $t0, $t2
	sw $t0, 1112($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1116($sp)
	lw $t2, 1116($sp)
	move $t0, $t2
	sw $t0, 1120($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1124($sp)
	lw $t2, 1124($sp)
	move $t0, $t2
	sw $t0, 1128($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1132($sp)
	lw $t2, 1132($sp)
	move $t0, $t2
	sw $t0, 1136($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1140($sp)
	lw $t2, 1140($sp)
	move $t0, $t2
	sw $t0, 1144($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1148($sp)
	lw $t2, 1148($sp)
	move $t0, $t2
	sw $t0, 1152($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1156($sp)
	lw $t2, 1156($sp)
	move $t0, $t2
	sw $t0, 1160($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1164($sp)
	lw $t2, 1164($sp)
	move $t0, $t2
	sw $t0, 1168($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1172($sp)
	lw $t2, 1172($sp)
	move $t0, $t2
	sw $t0, 1176($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1180($sp)
	lw $t2, 1180($sp)
	move $t0, $t2
	sw $t0, 1184($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1188($sp)
	lw $t2, 1188($sp)
	move $t0, $t2
	sw $t0, 1192($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1196($sp)
	lw $t2, 1196($sp)
	move $t0, $t2
	sw $t0, 1200($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1204($sp)
	lw $t2, 1204($sp)
	move $t0, $t2
	sw $t0, 1208($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1212($sp)
	lw $t2, 1212($sp)
	move $t0, $t2
	sw $t0, 1216($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1220($sp)
	lw $t2, 1220($sp)
	move $t0, $t2
	sw $t0, 1224($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1228($sp)
	lw $t2, 1228($sp)
	move $t0, $t2
	sw $t0, 1232($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1236($sp)
	lw $t2, 1236($sp)
	move $t0, $t2
	sw $t0, 1240($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1244($sp)
	lw $t2, 1244($sp)
	move $t0, $t2
	sw $t0, 1248($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1252($sp)
	lw $t2, 1252($sp)
	move $t0, $t2
	sw $t0, 1256($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1260($sp)
	lw $t2, 1260($sp)
	move $t0, $t2
	sw $t0, 1264($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1268($sp)
	lw $t2, 1268($sp)
	move $t0, $t2
	sw $t0, 1272($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1276($sp)
	lw $t2, 1276($sp)
	move $t0, $t2
	sw $t0, 1280($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1284($sp)
	lw $t2, 1284($sp)
	move $t0, $t2
	sw $t0, 1288($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1292($sp)
	lw $t2, 1292($sp)
	move $t0, $t2
	sw $t0, 1296($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1300($sp)
	lw $t2, 1300($sp)
	move $t0, $t2
	sw $t0, 1304($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1308($sp)
	lw $t2, 1308($sp)
	move $t0, $t2
	sw $t0, 1312($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1316($sp)
	lw $t2, 1316($sp)
	move $t0, $t2
	sw $t0, 1320($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1324($sp)
	lw $t2, 1324($sp)
	move $t0, $t2
	sw $t0, 1328($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1332($sp)
	lw $t2, 1332($sp)
	move $t0, $t2
	sw $t0, 1336($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1340($sp)
	lw $t2, 1340($sp)
	move $t0, $t2
	sw $t0, 1344($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1348($sp)
	lw $t2, 1348($sp)
	move $t0, $t2
	sw $t0, 1352($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1356($sp)
	lw $t2, 1356($sp)
	move $t0, $t2
	sw $t0, 1360($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1364($sp)
	lw $t2, 1364($sp)
	move $t0, $t2
	sw $t0, 1368($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1372($sp)
	lw $t2, 1372($sp)
	move $t0, $t2
	sw $t0, 1376($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1380($sp)
	lw $t2, 1380($sp)
	move $t0, $t2
	sw $t0, 1384($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1388($sp)
	lw $t2, 1388($sp)
	move $t0, $t2
	sw $t0, 1392($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1396($sp)
	lw $t2, 1396($sp)
	move $t0, $t2
	sw $t0, 1400($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1404($sp)
	lw $t2, 1404($sp)
	move $t0, $t2
	sw $t0, 1408($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1412($sp)
	lw $t2, 1412($sp)
	move $t0, $t2
	sw $t0, 1416($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1420($sp)
	lw $t2, 1420($sp)
	move $t0, $t2
	sw $t0, 1424($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1428($sp)
	lw $t2, 1428($sp)
	move $t0, $t2
	sw $t0, 1432($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1436($sp)
	lw $t2, 1436($sp)
	move $t0, $t2
	sw $t0, 1440($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1444($sp)
	lw $t2, 1444($sp)
	move $t0, $t2
	sw $t0, 1448($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1452($sp)
	lw $t2, 1452($sp)
	move $t0, $t2
	sw $t0, 1456($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1460($sp)
	lw $t2, 1460($sp)
	move $t0, $t2
	sw $t0, 1464($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1468($sp)
	lw $t2, 1468($sp)
	move $t0, $t2
	sw $t0, 1472($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1476($sp)
	lw $t2, 1476($sp)
	move $t0, $t2
	sw $t0, 1480($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1484($sp)
	lw $t2, 1484($sp)
	move $t0, $t2
	sw $t0, 1488($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1492($sp)
	lw $t2, 1492($sp)
	move $t0, $t2
	sw $t0, 1496($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1500($sp)
	lw $t2, 1500($sp)
	move $t0, $t2
	sw $t0, 1504($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1508($sp)
	lw $t2, 1508($sp)
	move $t0, $t2
	sw $t0, 1512($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1516($sp)
	lw $t2, 1516($sp)
	move $t0, $t2
	sw $t0, 1520($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1524($sp)
	lw $t2, 1524($sp)
	move $t0, $t2
	sw $t0, 1528($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1532($sp)
	lw $t2, 1532($sp)
	move $t0, $t2
	sw $t0, 1536($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1540($sp)
	lw $t2, 1540($sp)
	move $t0, $t2
	sw $t0, 1544($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1548($sp)
	lw $t2, 1548($sp)
	move $t0, $t2
	sw $t0, 1552($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1556($sp)
	lw $t2, 1556($sp)
	move $t0, $t2
	sw $t0, 1560($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1564($sp)
	lw $t2, 1564($sp)
	move $t0, $t2
	sw $t0, 1568($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1572($sp)
	lw $t2, 1572($sp)
	move $t0, $t2
	sw $t0, 1576($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1580($sp)
	lw $t2, 1580($sp)
	move $t0, $t2
	sw $t0, 1584($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1588($sp)
	lw $t2, 1588($sp)
	move $t0, $t2
	sw $t0, 1592($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1596($sp)
	lw $t2, 1596($sp)
	move $t0, $t2
	sw $t0, 1600($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1604($sp)
	lw $t2, 1604($sp)
	move $t0, $t2
	sw $t0, 1608($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1612($sp)
	lw $t2, 1612($sp)
	move $t0, $t2
	sw $t0, 1616($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1620($sp)
	lw $t2, 1620($sp)
	move $t0, $t2
	sw $t0, 1624($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1628($sp)
	lw $t2, 1628($sp)
	move $t0, $t2
	sw $t0, 1632($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1636($sp)
	lw $t2, 1636($sp)
	move $t0, $t2
	sw $t0, 1640($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1644($sp)
	lw $t2, 1644($sp)
	move $t0, $t2
	sw $t0, 1648($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1652($sp)
	lw $t2, 1652($sp)
	move $t0, $t2
	sw $t0, 1656($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1660($sp)
	lw $t2, 1660($sp)
	move $t0, $t2
	sw $t0, 1664($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1668($sp)
	lw $t2, 1668($sp)
	move $t0, $t2
	sw $t0, 1672($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1676($sp)
	lw $t2, 1676($sp)
	move $t0, $t2
	sw $t0, 1680($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1684($sp)
	lw $t2, 1684($sp)
	move $t0, $t2
	sw $t0, 1688($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1692($sp)
	lw $t2, 1692($sp)
	move $t0, $t2
	sw $t0, 1696($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1700($sp)
	lw $t2, 1700($sp)
	move $t0, $t2
	sw $t0, 1704($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1708($sp)
	lw $t2, 1708($sp)
	move $t0, $t2
	sw $t0, 1712($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1716($sp)
	lw $t2, 1716($sp)
	move $t0, $t2
	sw $t0, 1720($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1724($sp)
	lw $t2, 1724($sp)
	move $t0, $t2
	sw $t0, 1728($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1732($sp)
	lw $t2, 1732($sp)
	move $t0, $t2
	sw $t0, 1736($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1740($sp)
	lw $t2, 1740($sp)
	move $t0, $t2
	sw $t0, 1744($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1748($sp)
	lw $t2, 1748($sp)
	move $t0, $t2
	sw $t0, 1752($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1756($sp)
	lw $t2, 1756($sp)
	move $t0, $t2
	sw $t0, 1760($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1764($sp)
	lw $t2, 1764($sp)
	move $t0, $t2
	sw $t0, 1768($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1772($sp)
	lw $t2, 1772($sp)
	move $t0, $t2
	sw $t0, 1776($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1780($sp)
	lw $t2, 1780($sp)
	move $t0, $t2
	sw $t0, 1784($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1788($sp)
	lw $t2, 1788($sp)
	move $t0, $t2
	sw $t0, 1792($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1796($sp)
	lw $t2, 1796($sp)
	move $t0, $t2
	sw $t0, 1800($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1804($sp)
	lw $t2, 1804($sp)
	move $t0, $t2
	sw $t0, 1808($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1812($sp)
	lw $t2, 1812($sp)
	move $t0, $t2
	sw $t0, 1816($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1820($sp)
	lw $t2, 1820($sp)
	move $t0, $t2
	sw $t0, 1824($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1828($sp)
	lw $t2, 1828($sp)
	move $t0, $t2
	sw $t0, 1832($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1836($sp)
	lw $t2, 1836($sp)
	move $t0, $t2
	sw $t0, 1840($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1844($sp)
	lw $t2, 1844($sp)
	move $t0, $t2
	sw $t0, 1848($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1852($sp)
	lw $t2, 1852($sp)
	move $t0, $t2
	sw $t0, 1856($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1860($sp)
	lw $t2, 1860($sp)
	move $t0, $t2
	sw $t0, 1864($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1868($sp)
	lw $t2, 1868($sp)
	move $t0, $t2
	sw $t0, 1872($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1876($sp)
	lw $t2, 1876($sp)
	move $t0, $t2
	sw $t0, 1880($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1884($sp)
	lw $t2, 1884($sp)
	move $t0, $t2
	sw $t0, 1888($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1892($sp)
	lw $t2, 1892($sp)
	move $t0, $t2
	sw $t0, 1896($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1900($sp)
	lw $t2, 1900($sp)
	move $t0, $t2
	sw $t0, 1904($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1908($sp)
	lw $t2, 1908($sp)
	move $t0, $t2
	sw $t0, 1912($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1916($sp)
	lw $t2, 1916($sp)
	move $t0, $t2
	sw $t0, 1920($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1924($sp)
	lw $t2, 1924($sp)
	move $t0, $t2
	sw $t0, 1928($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1932($sp)
	lw $t2, 1932($sp)
	move $t0, $t2
	sw $t0, 1936($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1940($sp)
	lw $t2, 1940($sp)
	move $t0, $t2
	sw $t0, 1944($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1948($sp)
	lw $t2, 1948($sp)
	move $t0, $t2
	sw $t0, 1952($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1956($sp)
	lw $t2, 1956($sp)
	move $t0, $t2
	sw $t0, 1960($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1964($sp)
	lw $t2, 1964($sp)
	move $t0, $t2
	sw $t0, 1968($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1972($sp)
	lw $t2, 1972($sp)
	move $t0, $t2
	sw $t0, 1976($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1980($sp)
	lw $t2, 1980($sp)
	move $t0, $t2
	sw $t0, 1984($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1988($sp)
	lw $t2, 1988($sp)
	move $t0, $t2
	sw $t0, 1992($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 1996($sp)
	lw $t2, 1996($sp)
	move $t0, $t2
	sw $t0, 2000($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2004($sp)
	lw $t2, 2004($sp)
	move $t0, $t2
	sw $t0, 2008($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2012($sp)
	lw $t2, 2012($sp)
	move $t0, $t2
	sw $t0, 2016($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2020($sp)
	lw $t2, 2020($sp)
	move $t0, $t2
	sw $t0, 2024($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2028($sp)
	lw $t2, 2028($sp)
	move $t0, $t2
	sw $t0, 2032($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2036($sp)
	lw $t2, 2036($sp)
	move $t0, $t2
	sw $t0, 2040($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2044($sp)
	lw $t2, 2044($sp)
	move $t0, $t2
	sw $t0, 2048($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2052($sp)
	lw $t2, 2052($sp)
	move $t0, $t2
	sw $t0, 2056($sp)
	lw $t0, var_0
	sw $t0, var_0
	lw $t2, var_0
	move $a0, $t2
	jal f_getcount
	move $t0, $v0
	sw $t0, 2060($sp)
	lw $t2, 2060($sp)
	move $t0, $t2
	sw $t0, 2064($sp)
	lw $t2, 24($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2068($sp)
	lw $t2, 2068($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2072($sp)
	lw $t2, 2072($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2076($sp)
	lw $t2, 32($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2080($sp)
	lw $t2, 2080($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2084($sp)
	lw $t2, 2084($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2088($sp)
	lw $t2, 40($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2092($sp)
	lw $t2, 2092($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2096($sp)
	lw $t2, 2096($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2100($sp)
	lw $t2, 48($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2104($sp)
	lw $t2, 2104($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2108($sp)
	lw $t2, 2108($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2112($sp)
	lw $t2, 56($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2116($sp)
	lw $t2, 2116($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2120($sp)
	lw $t2, 2120($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2124($sp)
	lw $t2, 64($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2128($sp)
	lw $t2, 2128($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2132($sp)
	lw $t2, 2132($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2136($sp)
	lw $t2, 72($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2140($sp)
	lw $t2, 2140($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2144($sp)
	lw $t2, 2144($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2148($sp)
	lw $t2, 80($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2152($sp)
	lw $t2, 2152($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2156($sp)
	lw $t2, 2156($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2160($sp)
	lw $t2, 88($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2164($sp)
	lw $t2, 2164($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2168($sp)
	lw $t2, 2168($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2172($sp)
	lw $t2, 96($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2176($sp)
	lw $t2, 2176($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2180($sp)
	lw $t2, 2180($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2184($sp)
	lw $t2, 104($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2188($sp)
	lw $t2, 2188($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2192($sp)
	lw $t2, 2192($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2196($sp)
	lw $t2, 112($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2200($sp)
	lw $t2, 2200($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2204($sp)
	lw $t2, 2204($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2208($sp)
	lw $t2, 120($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2212($sp)
	lw $t2, 2212($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2216($sp)
	lw $t2, 2216($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2220($sp)
	lw $t2, 128($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2224($sp)
	lw $t2, 2224($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2228($sp)
	lw $t2, 2228($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2232($sp)
	lw $t2, 136($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2236($sp)
	lw $t2, 2236($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2240($sp)
	lw $t2, 2240($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2244($sp)
	lw $t2, 144($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2248($sp)
	lw $t2, 2248($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2252($sp)
	lw $t2, 2252($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2256($sp)
	lw $t2, 152($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2260($sp)
	lw $t2, 2260($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2264($sp)
	lw $t2, 2264($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2268($sp)
	lw $t2, 160($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2272($sp)
	lw $t2, 2272($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2276($sp)
	lw $t2, 2276($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2280($sp)
	lw $t2, 168($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2284($sp)
	lw $t2, 2284($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2288($sp)
	lw $t2, 2288($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2292($sp)
	lw $t2, 176($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2296($sp)
	lw $t2, 2296($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2300($sp)
	lw $t2, 2300($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2304($sp)
	lw $t2, 184($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2308($sp)
	lw $t2, 2308($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2312($sp)
	lw $t2, 2312($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2316($sp)
	lw $t2, 192($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2320($sp)
	lw $t2, 2320($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2324($sp)
	lw $t2, 2324($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2328($sp)
	lw $t2, 200($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2332($sp)
	lw $t2, 2332($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2336($sp)
	lw $t2, 2336($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2340($sp)
	lw $t2, 208($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2344($sp)
	lw $t2, 2344($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2348($sp)
	lw $t2, 2348($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2352($sp)
	lw $t2, 216($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2356($sp)
	lw $t2, 2356($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2360($sp)
	lw $t2, 2360($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2364($sp)
	lw $t2, 224($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2368($sp)
	lw $t2, 2368($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2372($sp)
	lw $t2, 2372($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2376($sp)
	lw $t2, 232($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2380($sp)
	lw $t2, 2380($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2384($sp)
	lw $t2, 2384($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2388($sp)
	lw $t2, 240($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2392($sp)
	lw $t2, 2392($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2396($sp)
	lw $t2, 2396($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2400($sp)
	lw $t2, 248($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2404($sp)
	lw $t2, 2404($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2408($sp)
	lw $t2, 2408($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2412($sp)
	lw $t2, 256($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2416($sp)
	lw $t2, 2416($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2420($sp)
	lw $t2, 2420($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2424($sp)
	lw $t2, 264($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2428($sp)
	lw $t2, 2428($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2432($sp)
	lw $t2, 2432($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2436($sp)
	lw $t2, 272($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2440($sp)
	lw $t2, 2440($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2444($sp)
	lw $t2, 2444($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2448($sp)
	lw $t2, 280($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2452($sp)
	lw $t2, 2452($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2456($sp)
	lw $t2, 2456($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2460($sp)
	lw $t2, 288($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2464($sp)
	lw $t2, 2464($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2468($sp)
	lw $t2, 2468($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2472($sp)
	lw $t2, 296($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2476($sp)
	lw $t2, 2476($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2480($sp)
	lw $t2, 2480($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2484($sp)
	lw $t2, 304($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2488($sp)
	lw $t2, 2488($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2492($sp)
	lw $t2, 2492($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2496($sp)
	lw $t2, 312($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2500($sp)
	lw $t2, 2500($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2504($sp)
	lw $t2, 2504($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2508($sp)
	lw $t2, 320($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2512($sp)
	lw $t2, 2512($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2516($sp)
	lw $t2, 2516($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2520($sp)
	lw $t2, 328($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2524($sp)
	lw $t2, 2524($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2528($sp)
	lw $t2, 2528($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2532($sp)
	lw $t2, 336($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2536($sp)
	lw $t2, 2536($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2540($sp)
	lw $t2, 2540($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2544($sp)
	lw $t2, 344($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2548($sp)
	lw $t2, 2548($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2552($sp)
	lw $t2, 2552($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2556($sp)
	lw $t2, 352($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2560($sp)
	lw $t2, 2560($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2564($sp)
	lw $t2, 2564($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2568($sp)
	lw $t2, 360($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2572($sp)
	lw $t2, 2572($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2576($sp)
	lw $t2, 2576($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2580($sp)
	lw $t2, 368($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2584($sp)
	lw $t2, 2584($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2588($sp)
	lw $t2, 2588($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2592($sp)
	lw $t2, 376($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2596($sp)
	lw $t2, 2596($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2600($sp)
	lw $t2, 2600($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2604($sp)
	lw $t2, 384($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2608($sp)
	lw $t2, 2608($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2612($sp)
	lw $t2, 2612($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2616($sp)
	lw $t2, 392($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2620($sp)
	lw $t2, 2620($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2624($sp)
	lw $t2, 2624($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2628($sp)
	lw $t2, 400($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2632($sp)
	lw $t2, 2632($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2636($sp)
	lw $t2, 2636($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2640($sp)
	lw $t2, 408($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2644($sp)
	lw $t2, 2644($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2648($sp)
	lw $t2, 2648($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2652($sp)
	lw $t2, 416($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2656($sp)
	lw $t2, 2656($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2660($sp)
	lw $t2, 2660($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2664($sp)
	lw $t2, 424($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2668($sp)
	lw $t2, 2668($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2672($sp)
	lw $t2, 2672($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2676($sp)
	lw $t2, 432($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2680($sp)
	lw $t2, 2680($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2684($sp)
	lw $t2, 2684($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2688($sp)
	lw $t2, 440($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2692($sp)
	lw $t2, 2692($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2696($sp)
	lw $t2, 2696($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2700($sp)
	lw $t2, 448($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2704($sp)
	lw $t2, 2704($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2708($sp)
	lw $t2, 2708($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2712($sp)
	lw $t2, 456($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2716($sp)
	lw $t2, 2716($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2720($sp)
	lw $t2, 2720($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2724($sp)
	lw $t2, 464($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2728($sp)
	lw $t2, 2728($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2732($sp)
	lw $t2, 2732($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2736($sp)
	lw $t2, 472($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2740($sp)
	lw $t2, 2740($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2744($sp)
	lw $t2, 2744($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2748($sp)
	lw $t2, 480($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2752($sp)
	lw $t2, 2752($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2756($sp)
	lw $t2, 2756($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2760($sp)
	lw $t2, 488($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2764($sp)
	lw $t2, 2764($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2768($sp)
	lw $t2, 2768($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2772($sp)
	lw $t2, 496($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2776($sp)
	lw $t2, 2776($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2780($sp)
	lw $t2, 2780($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2784($sp)
	lw $t2, 504($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2788($sp)
	lw $t2, 2788($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2792($sp)
	lw $t2, 2792($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2796($sp)
	lw $t2, 512($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2800($sp)
	lw $t2, 2800($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2804($sp)
	lw $t2, 2804($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2808($sp)
	lw $t2, 520($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2812($sp)
	lw $t2, 2812($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2816($sp)
	lw $t2, 2816($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2820($sp)
	lw $t2, 528($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2824($sp)
	lw $t2, 2824($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2828($sp)
	lw $t2, 2828($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2832($sp)
	lw $t2, 536($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2836($sp)
	lw $t2, 2836($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2840($sp)
	lw $t2, 2840($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2844($sp)
	lw $t2, 544($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2848($sp)
	lw $t2, 2848($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2852($sp)
	lw $t2, 2852($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2856($sp)
	lw $t2, 552($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2860($sp)
	lw $t2, 2860($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2864($sp)
	lw $t2, 2864($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2868($sp)
	lw $t2, 560($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2872($sp)
	lw $t2, 2872($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2876($sp)
	lw $t2, 2876($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2880($sp)
	lw $t2, 568($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2884($sp)
	lw $t2, 2884($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2888($sp)
	lw $t2, 2888($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2892($sp)
	lw $t2, 576($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2896($sp)
	lw $t2, 2896($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2900($sp)
	lw $t2, 2900($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2904($sp)
	lw $t2, 584($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2908($sp)
	lw $t2, 2908($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2912($sp)
	lw $t2, 2912($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2916($sp)
	lw $t2, 592($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2920($sp)
	lw $t2, 2920($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2924($sp)
	lw $t2, 2924($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2928($sp)
	lw $t2, 600($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2932($sp)
	lw $t2, 2932($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2936($sp)
	lw $t2, 2936($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2940($sp)
	lw $t2, 608($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2944($sp)
	lw $t2, 2944($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2948($sp)
	lw $t2, 2948($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2952($sp)
	lw $t2, 616($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2956($sp)
	lw $t2, 2956($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2960($sp)
	lw $t2, 2960($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2964($sp)
	lw $t2, 624($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2968($sp)
	lw $t2, 2968($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2972($sp)
	lw $t2, 2972($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2976($sp)
	lw $t2, 632($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2980($sp)
	lw $t2, 2980($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2984($sp)
	lw $t2, 2984($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 2988($sp)
	lw $t2, 640($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 2992($sp)
	lw $t2, 2992($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 2996($sp)
	lw $t2, 2996($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3000($sp)
	lw $t2, 648($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3004($sp)
	lw $t2, 3004($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3008($sp)
	lw $t2, 3008($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3012($sp)
	lw $t2, 656($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3016($sp)
	lw $t2, 3016($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3020($sp)
	lw $t2, 3020($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3024($sp)
	lw $t2, 664($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3028($sp)
	lw $t2, 3028($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3032($sp)
	lw $t2, 3032($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3036($sp)
	lw $t2, 672($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3040($sp)
	lw $t2, 3040($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3044($sp)
	lw $t2, 3044($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3048($sp)
	lw $t2, 680($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3052($sp)
	lw $t2, 3052($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3056($sp)
	lw $t2, 3056($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3060($sp)
	lw $t2, 688($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3064($sp)
	lw $t2, 3064($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3068($sp)
	lw $t2, 3068($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3072($sp)
	lw $t2, 696($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3076($sp)
	lw $t2, 3076($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3080($sp)
	lw $t2, 3080($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3084($sp)
	lw $t2, 704($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3088($sp)
	lw $t2, 3088($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3092($sp)
	lw $t2, 3092($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3096($sp)
	lw $t2, 712($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3100($sp)
	lw $t2, 3100($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3104($sp)
	lw $t2, 3104($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3108($sp)
	lw $t2, 720($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3112($sp)
	lw $t2, 3112($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3116($sp)
	lw $t2, 3116($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3120($sp)
	lw $t2, 728($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3124($sp)
	lw $t2, 3124($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3128($sp)
	lw $t2, 3128($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3132($sp)
	lw $t2, 736($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3136($sp)
	lw $t2, 3136($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3140($sp)
	lw $t2, 3140($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3144($sp)
	lw $t2, 744($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3148($sp)
	lw $t2, 3148($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3152($sp)
	lw $t2, 3152($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3156($sp)
	lw $t2, 752($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3160($sp)
	lw $t2, 3160($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3164($sp)
	lw $t2, 3164($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3168($sp)
	lw $t2, 760($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3172($sp)
	lw $t2, 3172($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3176($sp)
	lw $t2, 3176($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3180($sp)
	lw $t2, 768($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3184($sp)
	lw $t2, 3184($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3188($sp)
	lw $t2, 3188($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3192($sp)
	lw $t2, 776($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3196($sp)
	lw $t2, 3196($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3200($sp)
	lw $t2, 3200($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3204($sp)
	lw $t2, 784($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3208($sp)
	lw $t2, 3208($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3212($sp)
	lw $t2, 3212($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3216($sp)
	lw $t2, 792($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3220($sp)
	lw $t2, 3220($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3224($sp)
	lw $t2, 3224($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3228($sp)
	lw $t2, 800($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3232($sp)
	lw $t2, 3232($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3236($sp)
	lw $t2, 3236($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3240($sp)
	lw $t2, 808($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3244($sp)
	lw $t2, 3244($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3248($sp)
	lw $t2, 3248($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3252($sp)
	lw $t2, 816($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3256($sp)
	lw $t2, 3256($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3260($sp)
	lw $t2, 3260($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3264($sp)
	lw $t2, 824($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3268($sp)
	lw $t2, 3268($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3272($sp)
	lw $t2, 3272($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3276($sp)
	lw $t2, 832($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3280($sp)
	lw $t2, 3280($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3284($sp)
	lw $t2, 3284($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3288($sp)
	lw $t2, 840($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3292($sp)
	lw $t2, 3292($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3296($sp)
	lw $t2, 3296($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3300($sp)
	lw $t2, 848($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3304($sp)
	lw $t2, 3304($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3308($sp)
	lw $t2, 3308($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3312($sp)
	lw $t2, 856($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3316($sp)
	lw $t2, 3316($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3320($sp)
	lw $t2, 3320($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3324($sp)
	lw $t2, 864($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3328($sp)
	lw $t2, 3328($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3332($sp)
	lw $t2, 3332($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3336($sp)
	lw $t2, 872($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3340($sp)
	lw $t2, 3340($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3344($sp)
	lw $t2, 3344($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3348($sp)
	lw $t2, 880($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3352($sp)
	lw $t2, 3352($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3356($sp)
	lw $t2, 3356($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3360($sp)
	lw $t2, 888($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3364($sp)
	lw $t2, 3364($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3368($sp)
	lw $t2, 3368($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3372($sp)
	lw $t2, 896($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3376($sp)
	lw $t2, 3376($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3380($sp)
	lw $t2, 3380($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3384($sp)
	lw $t2, 904($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3388($sp)
	lw $t2, 3388($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3392($sp)
	lw $t2, 3392($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3396($sp)
	lw $t2, 912($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3400($sp)
	lw $t2, 3400($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3404($sp)
	lw $t2, 3404($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3408($sp)
	lw $t2, 920($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3412($sp)
	lw $t2, 3412($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3416($sp)
	lw $t2, 3416($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3420($sp)
	lw $t2, 928($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3424($sp)
	lw $t2, 3424($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3428($sp)
	lw $t2, 3428($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3432($sp)
	lw $t2, 936($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3436($sp)
	lw $t2, 3436($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3440($sp)
	lw $t2, 3440($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3444($sp)
	lw $t2, 944($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3448($sp)
	lw $t2, 3448($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3452($sp)
	lw $t2, 3452($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3456($sp)
	lw $t2, 952($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3460($sp)
	lw $t2, 3460($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3464($sp)
	lw $t2, 3464($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3468($sp)
	lw $t2, 960($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3472($sp)
	lw $t2, 3472($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3476($sp)
	lw $t2, 3476($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3480($sp)
	lw $t2, 968($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3484($sp)
	lw $t2, 3484($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3488($sp)
	lw $t2, 3488($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3492($sp)
	lw $t2, 976($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3496($sp)
	lw $t2, 3496($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3500($sp)
	lw $t2, 3500($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3504($sp)
	lw $t2, 984($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3508($sp)
	lw $t2, 3508($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3512($sp)
	lw $t2, 3512($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3516($sp)
	lw $t2, 992($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3520($sp)
	lw $t2, 3520($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3524($sp)
	lw $t2, 3524($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3528($sp)
	lw $t2, 1000($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3532($sp)
	lw $t2, 3532($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3536($sp)
	lw $t2, 3536($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3540($sp)
	lw $t2, 1008($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3544($sp)
	lw $t2, 3544($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3548($sp)
	lw $t2, 3548($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3552($sp)
	lw $t2, 1016($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3556($sp)
	lw $t2, 3556($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3560($sp)
	lw $t2, 3560($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3564($sp)
	lw $t2, 1024($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3568($sp)
	lw $t2, 3568($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3572($sp)
	lw $t2, 3572($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3576($sp)
	lw $t2, 1032($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3580($sp)
	lw $t2, 3580($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3584($sp)
	lw $t2, 3584($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3588($sp)
	lw $t2, 1040($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3592($sp)
	lw $t2, 3592($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3596($sp)
	lw $t2, 3596($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3600($sp)
	lw $t2, 1048($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3604($sp)
	lw $t2, 3604($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3608($sp)
	lw $t2, 3608($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3612($sp)
	lw $t2, 1056($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3616($sp)
	lw $t2, 3616($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3620($sp)
	lw $t2, 3620($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3624($sp)
	lw $t2, 1064($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3628($sp)
	lw $t2, 3628($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3632($sp)
	lw $t2, 3632($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3636($sp)
	lw $t2, 1072($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3640($sp)
	lw $t2, 3640($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3644($sp)
	lw $t2, 3644($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3648($sp)
	lw $t2, 1080($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3652($sp)
	lw $t2, 3652($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3656($sp)
	lw $t2, 3656($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3660($sp)
	lw $t2, 1088($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3664($sp)
	lw $t2, 3664($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3668($sp)
	lw $t2, 3668($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3672($sp)
	lw $t2, 1096($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3676($sp)
	lw $t2, 3676($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3680($sp)
	lw $t2, 3680($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3684($sp)
	lw $t2, 1104($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3688($sp)
	lw $t2, 3688($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3692($sp)
	lw $t2, 3692($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3696($sp)
	lw $t2, 1112($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3700($sp)
	lw $t2, 3700($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3704($sp)
	lw $t2, 3704($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3708($sp)
	lw $t2, 1120($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3712($sp)
	lw $t2, 3712($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3716($sp)
	lw $t2, 3716($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3720($sp)
	lw $t2, 1128($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3724($sp)
	lw $t2, 3724($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3728($sp)
	lw $t2, 3728($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3732($sp)
	lw $t2, 1136($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3736($sp)
	lw $t2, 3736($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3740($sp)
	lw $t2, 3740($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3744($sp)
	lw $t2, 1144($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3748($sp)
	lw $t2, 3748($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3752($sp)
	lw $t2, 3752($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3756($sp)
	lw $t2, 1152($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3760($sp)
	lw $t2, 3760($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3764($sp)
	lw $t2, 3764($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3768($sp)
	lw $t2, 1160($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3772($sp)
	lw $t2, 3772($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3776($sp)
	lw $t2, 3776($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3780($sp)
	lw $t2, 1168($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3784($sp)
	lw $t2, 3784($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3788($sp)
	lw $t2, 3788($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3792($sp)
	lw $t2, 1176($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3796($sp)
	lw $t2, 3796($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3800($sp)
	lw $t2, 3800($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3804($sp)
	lw $t2, 1184($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3808($sp)
	lw $t2, 3808($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3812($sp)
	lw $t2, 3812($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3816($sp)
	lw $t2, 1192($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3820($sp)
	lw $t2, 3820($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3824($sp)
	lw $t2, 3824($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3828($sp)
	lw $t2, 1200($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3832($sp)
	lw $t2, 3832($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3836($sp)
	lw $t2, 3836($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3840($sp)
	lw $t2, 1208($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3844($sp)
	lw $t2, 3844($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3848($sp)
	lw $t2, 3848($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3852($sp)
	lw $t2, 1216($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3856($sp)
	lw $t2, 3856($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3860($sp)
	lw $t2, 3860($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3864($sp)
	lw $t2, 1224($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3868($sp)
	lw $t2, 3868($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3872($sp)
	lw $t2, 3872($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3876($sp)
	lw $t2, 1232($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3880($sp)
	lw $t2, 3880($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3884($sp)
	lw $t2, 3884($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3888($sp)
	lw $t2, 1240($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3892($sp)
	lw $t2, 3892($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3896($sp)
	lw $t2, 3896($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3900($sp)
	lw $t2, 1248($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3904($sp)
	lw $t2, 3904($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3908($sp)
	lw $t2, 3908($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3912($sp)
	lw $t2, 1256($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3916($sp)
	lw $t2, 3916($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3920($sp)
	lw $t2, 3920($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3924($sp)
	lw $t2, 1264($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3928($sp)
	lw $t2, 3928($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3932($sp)
	lw $t2, 3932($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3936($sp)
	lw $t2, 1272($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3940($sp)
	lw $t2, 3940($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3944($sp)
	lw $t2, 3944($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3948($sp)
	lw $t2, 1280($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3952($sp)
	lw $t2, 3952($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3956($sp)
	lw $t2, 3956($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3960($sp)
	lw $t2, 1288($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3964($sp)
	lw $t2, 3964($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3968($sp)
	lw $t2, 3968($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3972($sp)
	lw $t2, 1296($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3976($sp)
	lw $t2, 3976($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3980($sp)
	lw $t2, 3980($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3984($sp)
	lw $t2, 1304($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 3988($sp)
	lw $t2, 3988($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 3992($sp)
	lw $t2, 3992($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 3996($sp)
	lw $t2, 1312($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4000($sp)
	lw $t2, 4000($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4004($sp)
	lw $t2, 4004($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4008($sp)
	lw $t2, 1320($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4012($sp)
	lw $t2, 4012($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4016($sp)
	lw $t2, 4016($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4020($sp)
	lw $t2, 1328($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4024($sp)
	lw $t2, 4024($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4028($sp)
	lw $t2, 4028($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4032($sp)
	lw $t2, 1336($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4036($sp)
	lw $t2, 4036($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4040($sp)
	lw $t2, 4040($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4044($sp)
	lw $t2, 1344($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4048($sp)
	lw $t2, 4048($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4052($sp)
	lw $t2, 4052($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4056($sp)
	lw $t2, 1352($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4060($sp)
	lw $t2, 4060($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4064($sp)
	lw $t2, 4064($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4068($sp)
	lw $t2, 1360($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4072($sp)
	lw $t2, 4072($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4076($sp)
	lw $t2, 4076($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4080($sp)
	lw $t2, 1368($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4084($sp)
	lw $t2, 4084($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4088($sp)
	lw $t2, 4088($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4092($sp)
	lw $t2, 1376($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4096($sp)
	lw $t2, 4096($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4100($sp)
	lw $t2, 4100($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4104($sp)
	lw $t2, 1384($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4108($sp)
	lw $t2, 4108($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4112($sp)
	lw $t2, 4112($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4116($sp)
	lw $t2, 1392($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4120($sp)
	lw $t2, 4120($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4124($sp)
	lw $t2, 4124($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4128($sp)
	lw $t2, 1400($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4132($sp)
	lw $t2, 4132($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4136($sp)
	lw $t2, 4136($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4140($sp)
	lw $t2, 1408($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4144($sp)
	lw $t2, 4144($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4148($sp)
	lw $t2, 4148($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4152($sp)
	lw $t2, 1416($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4156($sp)
	lw $t2, 4156($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4160($sp)
	lw $t2, 4160($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4164($sp)
	lw $t2, 1424($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4168($sp)
	lw $t2, 4168($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4172($sp)
	lw $t2, 4172($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4176($sp)
	lw $t2, 1432($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4180($sp)
	lw $t2, 4180($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4184($sp)
	lw $t2, 4184($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4188($sp)
	lw $t2, 1440($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4192($sp)
	lw $t2, 4192($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4196($sp)
	lw $t2, 4196($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4200($sp)
	lw $t2, 1448($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4204($sp)
	lw $t2, 4204($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4208($sp)
	lw $t2, 4208($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4212($sp)
	lw $t2, 1456($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4216($sp)
	lw $t2, 4216($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4220($sp)
	lw $t2, 4220($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4224($sp)
	lw $t2, 1464($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4228($sp)
	lw $t2, 4228($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4232($sp)
	lw $t2, 4232($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4236($sp)
	lw $t2, 1472($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4240($sp)
	lw $t2, 4240($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4244($sp)
	lw $t2, 4244($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4248($sp)
	lw $t2, 1480($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4252($sp)
	lw $t2, 4252($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4256($sp)
	lw $t2, 4256($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4260($sp)
	lw $t2, 1488($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4264($sp)
	lw $t2, 4264($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4268($sp)
	lw $t2, 4268($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4272($sp)
	lw $t2, 1496($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4276($sp)
	lw $t2, 4276($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4280($sp)
	lw $t2, 4280($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4284($sp)
	lw $t2, 1504($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4288($sp)
	lw $t2, 4288($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4292($sp)
	lw $t2, 4292($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4296($sp)
	lw $t2, 1512($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4300($sp)
	lw $t2, 4300($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4304($sp)
	lw $t2, 4304($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4308($sp)
	lw $t2, 1520($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4312($sp)
	lw $t2, 4312($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4316($sp)
	lw $t2, 4316($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4320($sp)
	lw $t2, 1528($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4324($sp)
	lw $t2, 4324($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4328($sp)
	lw $t2, 4328($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4332($sp)
	lw $t2, 1536($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4336($sp)
	lw $t2, 4336($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4340($sp)
	lw $t2, 4340($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4344($sp)
	lw $t2, 1544($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4348($sp)
	lw $t2, 4348($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4352($sp)
	lw $t2, 4352($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4356($sp)
	lw $t2, 1552($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4360($sp)
	lw $t2, 4360($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4364($sp)
	lw $t2, 4364($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4368($sp)
	lw $t2, 1560($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4372($sp)
	lw $t2, 4372($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4376($sp)
	lw $t2, 4376($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4380($sp)
	lw $t2, 1568($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4384($sp)
	lw $t2, 4384($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4388($sp)
	lw $t2, 4388($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4392($sp)
	lw $t2, 1576($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4396($sp)
	lw $t2, 4396($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4400($sp)
	lw $t2, 4400($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4404($sp)
	lw $t2, 1584($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4408($sp)
	lw $t2, 4408($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4412($sp)
	lw $t2, 4412($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4416($sp)
	lw $t2, 1592($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4420($sp)
	lw $t2, 4420($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4424($sp)
	lw $t2, 4424($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4428($sp)
	lw $t2, 1600($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4432($sp)
	lw $t2, 4432($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4436($sp)
	lw $t2, 4436($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4440($sp)
	lw $t2, 1608($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4444($sp)
	lw $t2, 4444($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4448($sp)
	lw $t2, 4448($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4452($sp)
	lw $t2, 1616($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4456($sp)
	lw $t2, 4456($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4460($sp)
	lw $t2, 4460($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4464($sp)
	lw $t2, 1624($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4468($sp)
	lw $t2, 4468($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4472($sp)
	lw $t2, 4472($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4476($sp)
	lw $t2, 1632($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4480($sp)
	lw $t2, 4480($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4484($sp)
	lw $t2, 4484($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4488($sp)
	lw $t2, 1640($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4492($sp)
	lw $t2, 4492($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4496($sp)
	lw $t2, 4496($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4500($sp)
	lw $t2, 1648($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4504($sp)
	lw $t2, 4504($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4508($sp)
	lw $t2, 4508($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4512($sp)
	lw $t2, 1656($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4516($sp)
	lw $t2, 4516($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4520($sp)
	lw $t2, 4520($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4524($sp)
	lw $t2, 1664($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4528($sp)
	lw $t2, 4528($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4532($sp)
	lw $t2, 4532($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4536($sp)
	lw $t2, 1672($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4540($sp)
	lw $t2, 4540($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4544($sp)
	lw $t2, 4544($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4548($sp)
	lw $t2, 1680($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4552($sp)
	lw $t2, 4552($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4556($sp)
	lw $t2, 4556($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4560($sp)
	lw $t2, 1688($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4564($sp)
	lw $t2, 4564($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4568($sp)
	lw $t2, 4568($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4572($sp)
	lw $t2, 1696($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4576($sp)
	lw $t2, 4576($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4580($sp)
	lw $t2, 4580($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4584($sp)
	lw $t2, 1704($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4588($sp)
	lw $t2, 4588($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4592($sp)
	lw $t2, 4592($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4596($sp)
	lw $t2, 1712($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4600($sp)
	lw $t2, 4600($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4604($sp)
	lw $t2, 4604($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4608($sp)
	lw $t2, 1720($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4612($sp)
	lw $t2, 4612($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4616($sp)
	lw $t2, 4616($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4620($sp)
	lw $t2, 1728($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4624($sp)
	lw $t2, 4624($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4628($sp)
	lw $t2, 4628($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4632($sp)
	lw $t2, 1736($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4636($sp)
	lw $t2, 4636($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4640($sp)
	lw $t2, 4640($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4644($sp)
	lw $t2, 1744($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4648($sp)
	lw $t2, 4648($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4652($sp)
	lw $t2, 4652($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4656($sp)
	lw $t2, 1752($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4660($sp)
	lw $t2, 4660($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4664($sp)
	lw $t2, 4664($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4668($sp)
	lw $t2, 1760($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4672($sp)
	lw $t2, 4672($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4676($sp)
	lw $t2, 4676($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4680($sp)
	lw $t2, 1768($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4684($sp)
	lw $t2, 4684($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4688($sp)
	lw $t2, 4688($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4692($sp)
	lw $t2, 1776($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4696($sp)
	lw $t2, 4696($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4700($sp)
	lw $t2, 4700($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4704($sp)
	lw $t2, 1784($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4708($sp)
	lw $t2, 4708($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4712($sp)
	lw $t2, 4712($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4716($sp)
	lw $t2, 1792($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4720($sp)
	lw $t2, 4720($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4724($sp)
	lw $t2, 4724($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4728($sp)
	lw $t2, 1800($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4732($sp)
	lw $t2, 4732($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4736($sp)
	lw $t2, 4736($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4740($sp)
	lw $t2, 1808($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4744($sp)
	lw $t2, 4744($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4748($sp)
	lw $t2, 4748($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4752($sp)
	lw $t2, 1816($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4756($sp)
	lw $t2, 4756($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4760($sp)
	lw $t2, 4760($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4764($sp)
	lw $t2, 1824($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4768($sp)
	lw $t2, 4768($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4772($sp)
	lw $t2, 4772($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4776($sp)
	lw $t2, 1832($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4780($sp)
	lw $t2, 4780($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4784($sp)
	lw $t2, 4784($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4788($sp)
	lw $t2, 1840($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4792($sp)
	lw $t2, 4792($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4796($sp)
	lw $t2, 4796($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4800($sp)
	lw $t2, 1848($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4804($sp)
	lw $t2, 4804($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4808($sp)
	lw $t2, 4808($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4812($sp)
	lw $t2, 1856($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4816($sp)
	lw $t2, 4816($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4820($sp)
	lw $t2, 4820($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4824($sp)
	lw $t2, 1864($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4828($sp)
	lw $t2, 4828($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4832($sp)
	lw $t2, 4832($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4836($sp)
	lw $t2, 1872($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4840($sp)
	lw $t2, 4840($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4844($sp)
	lw $t2, 4844($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4848($sp)
	lw $t2, 1880($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4852($sp)
	lw $t2, 4852($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4856($sp)
	lw $t2, 4856($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4860($sp)
	lw $t2, 1888($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4864($sp)
	lw $t2, 4864($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4868($sp)
	lw $t2, 4868($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4872($sp)
	lw $t2, 1896($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4876($sp)
	lw $t2, 4876($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4880($sp)
	lw $t2, 4880($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4884($sp)
	lw $t2, 1904($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4888($sp)
	lw $t2, 4888($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4892($sp)
	lw $t2, 4892($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4896($sp)
	lw $t2, 1912($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4900($sp)
	lw $t2, 4900($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4904($sp)
	lw $t2, 4904($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4908($sp)
	lw $t2, 1920($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4912($sp)
	lw $t2, 4912($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4916($sp)
	lw $t2, 4916($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4920($sp)
	lw $t2, 1928($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4924($sp)
	lw $t2, 4924($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4928($sp)
	lw $t2, 4928($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4932($sp)
	lw $t2, 1936($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4936($sp)
	lw $t2, 4936($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4940($sp)
	lw $t2, 4940($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4944($sp)
	lw $t2, 1944($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4948($sp)
	lw $t2, 4948($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4952($sp)
	lw $t2, 4952($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4956($sp)
	lw $t2, 1952($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4960($sp)
	lw $t2, 4960($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4964($sp)
	lw $t2, 4964($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4968($sp)
	lw $t2, 1960($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4972($sp)
	lw $t2, 4972($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4976($sp)
	lw $t2, 4976($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4980($sp)
	lw $t2, 1968($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4984($sp)
	lw $t2, 4984($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 4988($sp)
	lw $t2, 4988($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 4992($sp)
	lw $t2, 1976($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 4996($sp)
	lw $t2, 4996($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5000($sp)
	lw $t2, 5000($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5004($sp)
	lw $t2, 1984($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5008($sp)
	lw $t2, 5008($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5012($sp)
	lw $t2, 5012($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5016($sp)
	lw $t2, 1992($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5020($sp)
	lw $t2, 5020($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5024($sp)
	lw $t2, 5024($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5028($sp)
	lw $t2, 2000($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5032($sp)
	lw $t2, 5032($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5036($sp)
	lw $t2, 5036($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5040($sp)
	lw $t2, 2008($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5044($sp)
	lw $t2, 5044($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5048($sp)
	lw $t2, 5048($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5052($sp)
	lw $t2, 2016($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5056($sp)
	lw $t2, 5056($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5060($sp)
	lw $t2, 5060($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5064($sp)
	lw $t2, 2024($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5068($sp)
	lw $t2, 5068($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5072($sp)
	lw $t2, 5072($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5076($sp)
	lw $t2, 2032($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5080($sp)
	lw $t2, 5080($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5084($sp)
	lw $t2, 5084($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5088($sp)
	lw $t2, 2040($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5092($sp)
	lw $t2, 5092($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5096($sp)
	lw $t2, 5096($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5100($sp)
	lw $t2, 2048($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5104($sp)
	lw $t2, 5104($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5108($sp)
	lw $t2, 5108($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5112($sp)
	lw $t2, 2056($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5116($sp)
	lw $t2, 5116($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5120($sp)
	lw $t2, 5120($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5124($sp)
	lw $t2, 2064($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5128($sp)
	lw $t2, 5128($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5132($sp)
	lw $t2, 5132($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5136($sp)
	la $a0, msg_2
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5140($sp)
	lw $t2, 24($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5144($sp)
	lw $t2, 5144($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5148($sp)
	lw $t2, 5148($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5152($sp)
	lw $t2, 32($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5156($sp)
	lw $t2, 5156($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5160($sp)
	lw $t2, 5160($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5164($sp)
	lw $t2, 40($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5168($sp)
	lw $t2, 5168($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5172($sp)
	lw $t2, 5172($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5176($sp)
	lw $t2, 48($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5180($sp)
	lw $t2, 5180($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5184($sp)
	lw $t2, 5184($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5188($sp)
	lw $t2, 56($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5192($sp)
	lw $t2, 5192($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5196($sp)
	lw $t2, 5196($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5200($sp)
	lw $t2, 64($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5204($sp)
	lw $t2, 5204($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5208($sp)
	lw $t2, 5208($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5212($sp)
	lw $t2, 72($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5216($sp)
	lw $t2, 5216($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5220($sp)
	lw $t2, 5220($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5224($sp)
	lw $t2, 80($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5228($sp)
	lw $t2, 5228($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5232($sp)
	lw $t2, 5232($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5236($sp)
	lw $t2, 88($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5240($sp)
	lw $t2, 5240($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5244($sp)
	lw $t2, 5244($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5248($sp)
	lw $t2, 96($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5252($sp)
	lw $t2, 5252($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5256($sp)
	lw $t2, 5256($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5260($sp)
	lw $t2, 104($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5264($sp)
	lw $t2, 5264($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5268($sp)
	lw $t2, 5268($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5272($sp)
	lw $t2, 112($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5276($sp)
	lw $t2, 5276($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5280($sp)
	lw $t2, 5280($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5284($sp)
	lw $t2, 120($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5288($sp)
	lw $t2, 5288($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5292($sp)
	lw $t2, 5292($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5296($sp)
	lw $t2, 128($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5300($sp)
	lw $t2, 5300($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5304($sp)
	lw $t2, 5304($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5308($sp)
	lw $t2, 136($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5312($sp)
	lw $t2, 5312($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5316($sp)
	lw $t2, 5316($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5320($sp)
	lw $t2, 144($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5324($sp)
	lw $t2, 5324($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5328($sp)
	lw $t2, 5328($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5332($sp)
	lw $t2, 152($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5336($sp)
	lw $t2, 5336($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5340($sp)
	lw $t2, 5340($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5344($sp)
	lw $t2, 160($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5348($sp)
	lw $t2, 5348($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5352($sp)
	lw $t2, 5352($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5356($sp)
	lw $t2, 168($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5360($sp)
	lw $t2, 5360($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5364($sp)
	lw $t2, 5364($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5368($sp)
	lw $t2, 176($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5372($sp)
	lw $t2, 5372($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5376($sp)
	lw $t2, 5376($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5380($sp)
	lw $t2, 184($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5384($sp)
	lw $t2, 5384($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5388($sp)
	lw $t2, 5388($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5392($sp)
	lw $t2, 192($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5396($sp)
	lw $t2, 5396($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5400($sp)
	lw $t2, 5400($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5404($sp)
	lw $t2, 200($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5408($sp)
	lw $t2, 5408($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5412($sp)
	lw $t2, 5412($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5416($sp)
	lw $t2, 208($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5420($sp)
	lw $t2, 5420($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5424($sp)
	lw $t2, 5424($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5428($sp)
	lw $t2, 216($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5432($sp)
	lw $t2, 5432($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5436($sp)
	lw $t2, 5436($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5440($sp)
	lw $t2, 224($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5444($sp)
	lw $t2, 5444($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5448($sp)
	lw $t2, 5448($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5452($sp)
	lw $t2, 232($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5456($sp)
	lw $t2, 5456($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5460($sp)
	lw $t2, 5460($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5464($sp)
	lw $t2, 240($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5468($sp)
	lw $t2, 5468($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5472($sp)
	lw $t2, 5472($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5476($sp)
	lw $t2, 248($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5480($sp)
	lw $t2, 5480($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5484($sp)
	lw $t2, 5484($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5488($sp)
	lw $t2, 256($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5492($sp)
	lw $t2, 5492($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5496($sp)
	lw $t2, 5496($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5500($sp)
	lw $t2, 264($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5504($sp)
	lw $t2, 5504($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5508($sp)
	lw $t2, 5508($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5512($sp)
	lw $t2, 272($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5516($sp)
	lw $t2, 5516($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5520($sp)
	lw $t2, 5520($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5524($sp)
	lw $t2, 280($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5528($sp)
	lw $t2, 5528($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5532($sp)
	lw $t2, 5532($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5536($sp)
	lw $t2, 288($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5540($sp)
	lw $t2, 5540($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5544($sp)
	lw $t2, 5544($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5548($sp)
	lw $t2, 296($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5552($sp)
	lw $t2, 5552($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5556($sp)
	lw $t2, 5556($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5560($sp)
	lw $t2, 304($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5564($sp)
	lw $t2, 5564($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5568($sp)
	lw $t2, 5568($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5572($sp)
	lw $t2, 312($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5576($sp)
	lw $t2, 5576($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5580($sp)
	lw $t2, 5580($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5584($sp)
	lw $t2, 320($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5588($sp)
	lw $t2, 5588($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5592($sp)
	lw $t2, 5592($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5596($sp)
	lw $t2, 328($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5600($sp)
	lw $t2, 5600($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5604($sp)
	lw $t2, 5604($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5608($sp)
	lw $t2, 336($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5612($sp)
	lw $t2, 5612($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5616($sp)
	lw $t2, 5616($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5620($sp)
	lw $t2, 344($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5624($sp)
	lw $t2, 5624($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5628($sp)
	lw $t2, 5628($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5632($sp)
	lw $t2, 352($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5636($sp)
	lw $t2, 5636($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5640($sp)
	lw $t2, 5640($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5644($sp)
	lw $t2, 360($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5648($sp)
	lw $t2, 5648($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5652($sp)
	lw $t2, 5652($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5656($sp)
	lw $t2, 368($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5660($sp)
	lw $t2, 5660($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5664($sp)
	lw $t2, 5664($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5668($sp)
	lw $t2, 376($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5672($sp)
	lw $t2, 5672($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5676($sp)
	lw $t2, 5676($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5680($sp)
	lw $t2, 384($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5684($sp)
	lw $t2, 5684($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5688($sp)
	lw $t2, 5688($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5692($sp)
	lw $t2, 392($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5696($sp)
	lw $t2, 5696($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5700($sp)
	lw $t2, 5700($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5704($sp)
	lw $t2, 400($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5708($sp)
	lw $t2, 5708($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5712($sp)
	lw $t2, 5712($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5716($sp)
	lw $t2, 408($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5720($sp)
	lw $t2, 5720($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5724($sp)
	lw $t2, 5724($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5728($sp)
	lw $t2, 416($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5732($sp)
	lw $t2, 5732($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5736($sp)
	lw $t2, 5736($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5740($sp)
	lw $t2, 424($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5744($sp)
	lw $t2, 5744($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5748($sp)
	lw $t2, 5748($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5752($sp)
	lw $t2, 432($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5756($sp)
	lw $t2, 5756($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5760($sp)
	lw $t2, 5760($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5764($sp)
	lw $t2, 440($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5768($sp)
	lw $t2, 5768($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5772($sp)
	lw $t2, 5772($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5776($sp)
	lw $t2, 448($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5780($sp)
	lw $t2, 5780($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5784($sp)
	lw $t2, 5784($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5788($sp)
	lw $t2, 456($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5792($sp)
	lw $t2, 5792($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5796($sp)
	lw $t2, 5796($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5800($sp)
	lw $t2, 464($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5804($sp)
	lw $t2, 5804($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5808($sp)
	lw $t2, 5808($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5812($sp)
	lw $t2, 472($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5816($sp)
	lw $t2, 5816($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5820($sp)
	lw $t2, 5820($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5824($sp)
	lw $t2, 480($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5828($sp)
	lw $t2, 5828($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5832($sp)
	lw $t2, 5832($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5836($sp)
	lw $t2, 488($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5840($sp)
	lw $t2, 5840($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5844($sp)
	lw $t2, 5844($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5848($sp)
	lw $t2, 496($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5852($sp)
	lw $t2, 5852($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5856($sp)
	lw $t2, 5856($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5860($sp)
	lw $t2, 504($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5864($sp)
	lw $t2, 5864($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5868($sp)
	lw $t2, 5868($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5872($sp)
	lw $t2, 512($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5876($sp)
	lw $t2, 5876($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5880($sp)
	lw $t2, 5880($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5884($sp)
	lw $t2, 520($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5888($sp)
	lw $t2, 5888($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5892($sp)
	lw $t2, 5892($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5896($sp)
	lw $t2, 528($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5900($sp)
	lw $t2, 5900($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5904($sp)
	lw $t2, 5904($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5908($sp)
	lw $t2, 536($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5912($sp)
	lw $t2, 5912($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5916($sp)
	lw $t2, 5916($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5920($sp)
	lw $t2, 544($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5924($sp)
	lw $t2, 5924($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5928($sp)
	lw $t2, 5928($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5932($sp)
	lw $t2, 552($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5936($sp)
	lw $t2, 5936($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5940($sp)
	lw $t2, 5940($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5944($sp)
	lw $t2, 560($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5948($sp)
	lw $t2, 5948($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5952($sp)
	lw $t2, 5952($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5956($sp)
	lw $t2, 568($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5960($sp)
	lw $t2, 5960($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5964($sp)
	lw $t2, 5964($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5968($sp)
	lw $t2, 576($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5972($sp)
	lw $t2, 5972($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5976($sp)
	lw $t2, 5976($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5980($sp)
	lw $t2, 584($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5984($sp)
	lw $t2, 5984($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 5988($sp)
	lw $t2, 5988($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 5992($sp)
	lw $t2, 592($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 5996($sp)
	lw $t2, 5996($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6000($sp)
	lw $t2, 6000($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6004($sp)
	lw $t2, 600($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6008($sp)
	lw $t2, 6008($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6012($sp)
	lw $t2, 6012($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6016($sp)
	lw $t2, 608($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6020($sp)
	lw $t2, 6020($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6024($sp)
	lw $t2, 6024($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6028($sp)
	lw $t2, 616($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6032($sp)
	lw $t2, 6032($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6036($sp)
	lw $t2, 6036($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6040($sp)
	lw $t2, 624($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6044($sp)
	lw $t2, 6044($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6048($sp)
	lw $t2, 6048($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6052($sp)
	lw $t2, 632($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6056($sp)
	lw $t2, 6056($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6060($sp)
	lw $t2, 6060($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6064($sp)
	lw $t2, 640($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6068($sp)
	lw $t2, 6068($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6072($sp)
	lw $t2, 6072($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6076($sp)
	lw $t2, 648($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6080($sp)
	lw $t2, 6080($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6084($sp)
	lw $t2, 6084($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6088($sp)
	lw $t2, 656($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6092($sp)
	lw $t2, 6092($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6096($sp)
	lw $t2, 6096($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6100($sp)
	lw $t2, 664($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6104($sp)
	lw $t2, 6104($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6108($sp)
	lw $t2, 6108($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6112($sp)
	lw $t2, 672($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6116($sp)
	lw $t2, 6116($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6120($sp)
	lw $t2, 6120($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6124($sp)
	lw $t2, 680($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6128($sp)
	lw $t2, 6128($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6132($sp)
	lw $t2, 6132($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6136($sp)
	lw $t2, 688($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6140($sp)
	lw $t2, 6140($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6144($sp)
	lw $t2, 6144($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6148($sp)
	lw $t2, 696($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6152($sp)
	lw $t2, 6152($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6156($sp)
	lw $t2, 6156($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6160($sp)
	lw $t2, 704($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6164($sp)
	lw $t2, 6164($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6168($sp)
	lw $t2, 6168($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6172($sp)
	lw $t2, 712($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6176($sp)
	lw $t2, 6176($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6180($sp)
	lw $t2, 6180($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6184($sp)
	lw $t2, 720($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6188($sp)
	lw $t2, 6188($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6192($sp)
	lw $t2, 6192($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6196($sp)
	lw $t2, 728($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6200($sp)
	lw $t2, 6200($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6204($sp)
	lw $t2, 6204($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6208($sp)
	lw $t2, 736($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6212($sp)
	lw $t2, 6212($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6216($sp)
	lw $t2, 6216($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6220($sp)
	lw $t2, 744($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6224($sp)
	lw $t2, 6224($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6228($sp)
	lw $t2, 6228($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6232($sp)
	lw $t2, 752($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6236($sp)
	lw $t2, 6236($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6240($sp)
	lw $t2, 6240($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6244($sp)
	lw $t2, 760($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6248($sp)
	lw $t2, 6248($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6252($sp)
	lw $t2, 6252($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6256($sp)
	lw $t2, 768($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6260($sp)
	lw $t2, 6260($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6264($sp)
	lw $t2, 6264($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6268($sp)
	lw $t2, 776($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6272($sp)
	lw $t2, 6272($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6276($sp)
	lw $t2, 6276($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6280($sp)
	lw $t2, 784($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6284($sp)
	lw $t2, 6284($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6288($sp)
	lw $t2, 6288($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6292($sp)
	lw $t2, 792($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6296($sp)
	lw $t2, 6296($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6300($sp)
	lw $t2, 6300($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6304($sp)
	lw $t2, 800($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6308($sp)
	lw $t2, 6308($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6312($sp)
	lw $t2, 6312($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6316($sp)
	lw $t2, 808($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6320($sp)
	lw $t2, 6320($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6324($sp)
	lw $t2, 6324($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6328($sp)
	lw $t2, 816($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6332($sp)
	lw $t2, 6332($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6336($sp)
	lw $t2, 6336($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6340($sp)
	lw $t2, 824($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6344($sp)
	lw $t2, 6344($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6348($sp)
	lw $t2, 6348($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6352($sp)
	lw $t2, 832($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6356($sp)
	lw $t2, 6356($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6360($sp)
	lw $t2, 6360($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6364($sp)
	lw $t2, 840($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6368($sp)
	lw $t2, 6368($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6372($sp)
	lw $t2, 6372($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6376($sp)
	lw $t2, 848($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6380($sp)
	lw $t2, 6380($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6384($sp)
	lw $t2, 6384($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6388($sp)
	lw $t2, 856($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6392($sp)
	lw $t2, 6392($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6396($sp)
	lw $t2, 6396($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6400($sp)
	lw $t2, 864($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6404($sp)
	lw $t2, 6404($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6408($sp)
	lw $t2, 6408($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6412($sp)
	lw $t2, 872($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6416($sp)
	lw $t2, 6416($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6420($sp)
	lw $t2, 6420($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6424($sp)
	lw $t2, 880($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6428($sp)
	lw $t2, 6428($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6432($sp)
	lw $t2, 6432($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6436($sp)
	lw $t2, 888($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6440($sp)
	lw $t2, 6440($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6444($sp)
	lw $t2, 6444($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6448($sp)
	lw $t2, 896($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6452($sp)
	lw $t2, 6452($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6456($sp)
	lw $t2, 6456($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6460($sp)
	lw $t2, 904($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6464($sp)
	lw $t2, 6464($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6468($sp)
	lw $t2, 6468($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6472($sp)
	lw $t2, 912($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6476($sp)
	lw $t2, 6476($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6480($sp)
	lw $t2, 6480($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6484($sp)
	lw $t2, 920($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6488($sp)
	lw $t2, 6488($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6492($sp)
	lw $t2, 6492($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6496($sp)
	lw $t2, 928($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6500($sp)
	lw $t2, 6500($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6504($sp)
	lw $t2, 6504($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6508($sp)
	lw $t2, 936($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6512($sp)
	lw $t2, 6512($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6516($sp)
	lw $t2, 6516($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6520($sp)
	lw $t2, 944($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6524($sp)
	lw $t2, 6524($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6528($sp)
	lw $t2, 6528($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6532($sp)
	lw $t2, 952($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6536($sp)
	lw $t2, 6536($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6540($sp)
	lw $t2, 6540($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6544($sp)
	lw $t2, 960($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6548($sp)
	lw $t2, 6548($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6552($sp)
	lw $t2, 6552($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6556($sp)
	lw $t2, 968($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6560($sp)
	lw $t2, 6560($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6564($sp)
	lw $t2, 6564($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6568($sp)
	lw $t2, 976($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6572($sp)
	lw $t2, 6572($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6576($sp)
	lw $t2, 6576($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6580($sp)
	lw $t2, 984($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6584($sp)
	lw $t2, 6584($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6588($sp)
	lw $t2, 6588($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6592($sp)
	lw $t2, 992($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6596($sp)
	lw $t2, 6596($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6600($sp)
	lw $t2, 6600($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6604($sp)
	lw $t2, 1000($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6608($sp)
	lw $t2, 6608($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6612($sp)
	lw $t2, 6612($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6616($sp)
	lw $t2, 1008($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6620($sp)
	lw $t2, 6620($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6624($sp)
	lw $t2, 6624($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6628($sp)
	lw $t2, 1016($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6632($sp)
	lw $t2, 6632($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6636($sp)
	lw $t2, 6636($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6640($sp)
	lw $t2, 1024($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6644($sp)
	lw $t2, 6644($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6648($sp)
	lw $t2, 6648($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6652($sp)
	lw $t2, 1032($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6656($sp)
	lw $t2, 6656($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6660($sp)
	lw $t2, 6660($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6664($sp)
	lw $t2, 1040($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6668($sp)
	lw $t2, 6668($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6672($sp)
	lw $t2, 6672($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6676($sp)
	lw $t2, 1048($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6680($sp)
	lw $t2, 6680($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6684($sp)
	lw $t2, 6684($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6688($sp)
	lw $t2, 1056($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6692($sp)
	lw $t2, 6692($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6696($sp)
	lw $t2, 6696($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6700($sp)
	lw $t2, 1064($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6704($sp)
	lw $t2, 6704($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6708($sp)
	lw $t2, 6708($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6712($sp)
	lw $t2, 1072($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6716($sp)
	lw $t2, 6716($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6720($sp)
	lw $t2, 6720($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6724($sp)
	lw $t2, 1080($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6728($sp)
	lw $t2, 6728($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6732($sp)
	lw $t2, 6732($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6736($sp)
	lw $t2, 1088($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6740($sp)
	lw $t2, 6740($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6744($sp)
	lw $t2, 6744($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6748($sp)
	lw $t2, 1096($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6752($sp)
	lw $t2, 6752($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6756($sp)
	lw $t2, 6756($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6760($sp)
	lw $t2, 1104($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6764($sp)
	lw $t2, 6764($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6768($sp)
	lw $t2, 6768($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6772($sp)
	lw $t2, 1112($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6776($sp)
	lw $t2, 6776($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6780($sp)
	lw $t2, 6780($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6784($sp)
	lw $t2, 1120($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6788($sp)
	lw $t2, 6788($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6792($sp)
	lw $t2, 6792($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6796($sp)
	lw $t2, 1128($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6800($sp)
	lw $t2, 6800($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6804($sp)
	lw $t2, 6804($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6808($sp)
	lw $t2, 1136($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6812($sp)
	lw $t2, 6812($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6816($sp)
	lw $t2, 6816($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6820($sp)
	lw $t2, 1144($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6824($sp)
	lw $t2, 6824($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6828($sp)
	lw $t2, 6828($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6832($sp)
	lw $t2, 1152($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6836($sp)
	lw $t2, 6836($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6840($sp)
	lw $t2, 6840($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6844($sp)
	lw $t2, 1160($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6848($sp)
	lw $t2, 6848($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6852($sp)
	lw $t2, 6852($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6856($sp)
	lw $t2, 1168($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6860($sp)
	lw $t2, 6860($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6864($sp)
	lw $t2, 6864($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6868($sp)
	lw $t2, 1176($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6872($sp)
	lw $t2, 6872($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6876($sp)
	lw $t2, 6876($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6880($sp)
	lw $t2, 1184($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6884($sp)
	lw $t2, 6884($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6888($sp)
	lw $t2, 6888($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6892($sp)
	lw $t2, 1192($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6896($sp)
	lw $t2, 6896($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6900($sp)
	lw $t2, 6900($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6904($sp)
	lw $t2, 1200($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6908($sp)
	lw $t2, 6908($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6912($sp)
	lw $t2, 6912($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6916($sp)
	lw $t2, 1208($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6920($sp)
	lw $t2, 6920($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6924($sp)
	lw $t2, 6924($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6928($sp)
	lw $t2, 1216($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6932($sp)
	lw $t2, 6932($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6936($sp)
	lw $t2, 6936($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6940($sp)
	lw $t2, 1224($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6944($sp)
	lw $t2, 6944($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6948($sp)
	lw $t2, 6948($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6952($sp)
	lw $t2, 1232($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6956($sp)
	lw $t2, 6956($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6960($sp)
	lw $t2, 6960($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6964($sp)
	lw $t2, 1240($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6968($sp)
	lw $t2, 6968($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6972($sp)
	lw $t2, 6972($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6976($sp)
	lw $t2, 1248($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6980($sp)
	lw $t2, 6980($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6984($sp)
	lw $t2, 6984($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 6988($sp)
	lw $t2, 1256($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 6992($sp)
	lw $t2, 6992($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 6996($sp)
	lw $t2, 6996($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7000($sp)
	lw $t2, 1264($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7004($sp)
	lw $t2, 7004($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7008($sp)
	lw $t2, 7008($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7012($sp)
	lw $t2, 1272($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7016($sp)
	lw $t2, 7016($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7020($sp)
	lw $t2, 7020($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7024($sp)
	lw $t2, 1280($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7028($sp)
	lw $t2, 7028($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7032($sp)
	lw $t2, 7032($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7036($sp)
	lw $t2, 1288($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7040($sp)
	lw $t2, 7040($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7044($sp)
	lw $t2, 7044($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7048($sp)
	lw $t2, 1296($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7052($sp)
	lw $t2, 7052($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7056($sp)
	lw $t2, 7056($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7060($sp)
	lw $t2, 1304($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7064($sp)
	lw $t2, 7064($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7068($sp)
	lw $t2, 7068($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7072($sp)
	lw $t2, 1312($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7076($sp)
	lw $t2, 7076($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7080($sp)
	lw $t2, 7080($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7084($sp)
	lw $t2, 1320($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7088($sp)
	lw $t2, 7088($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7092($sp)
	lw $t2, 7092($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7096($sp)
	lw $t2, 1328($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7100($sp)
	lw $t2, 7100($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7104($sp)
	lw $t2, 7104($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7108($sp)
	lw $t2, 1336($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7112($sp)
	lw $t2, 7112($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7116($sp)
	lw $t2, 7116($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7120($sp)
	lw $t2, 1344($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7124($sp)
	lw $t2, 7124($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7128($sp)
	lw $t2, 7128($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7132($sp)
	lw $t2, 1352($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7136($sp)
	lw $t2, 7136($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7140($sp)
	lw $t2, 7140($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7144($sp)
	lw $t2, 1360($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7148($sp)
	lw $t2, 7148($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7152($sp)
	lw $t2, 7152($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7156($sp)
	lw $t2, 1368($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7160($sp)
	lw $t2, 7160($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7164($sp)
	lw $t2, 7164($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7168($sp)
	lw $t2, 1376($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7172($sp)
	lw $t2, 7172($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7176($sp)
	lw $t2, 7176($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7180($sp)
	lw $t2, 1384($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7184($sp)
	lw $t2, 7184($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7188($sp)
	lw $t2, 7188($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7192($sp)
	lw $t2, 1392($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7196($sp)
	lw $t2, 7196($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7200($sp)
	lw $t2, 7200($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7204($sp)
	lw $t2, 1400($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7208($sp)
	lw $t2, 7208($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7212($sp)
	lw $t2, 7212($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7216($sp)
	lw $t2, 1408($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7220($sp)
	lw $t2, 7220($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7224($sp)
	lw $t2, 7224($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7228($sp)
	lw $t2, 1416($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7232($sp)
	lw $t2, 7232($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7236($sp)
	lw $t2, 7236($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7240($sp)
	lw $t2, 1424($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7244($sp)
	lw $t2, 7244($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7248($sp)
	lw $t2, 7248($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7252($sp)
	lw $t2, 1432($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7256($sp)
	lw $t2, 7256($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7260($sp)
	lw $t2, 7260($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7264($sp)
	lw $t2, 1440($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7268($sp)
	lw $t2, 7268($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7272($sp)
	lw $t2, 7272($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7276($sp)
	lw $t2, 1448($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7280($sp)
	lw $t2, 7280($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7284($sp)
	lw $t2, 7284($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7288($sp)
	lw $t2, 1456($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7292($sp)
	lw $t2, 7292($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7296($sp)
	lw $t2, 7296($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7300($sp)
	lw $t2, 1464($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7304($sp)
	lw $t2, 7304($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7308($sp)
	lw $t2, 7308($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7312($sp)
	lw $t2, 1472($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7316($sp)
	lw $t2, 7316($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7320($sp)
	lw $t2, 7320($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7324($sp)
	lw $t2, 1480($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7328($sp)
	lw $t2, 7328($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7332($sp)
	lw $t2, 7332($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7336($sp)
	lw $t2, 1488($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7340($sp)
	lw $t2, 7340($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7344($sp)
	lw $t2, 7344($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7348($sp)
	lw $t2, 1496($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7352($sp)
	lw $t2, 7352($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7356($sp)
	lw $t2, 7356($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7360($sp)
	lw $t2, 1504($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7364($sp)
	lw $t2, 7364($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7368($sp)
	lw $t2, 7368($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7372($sp)
	lw $t2, 1512($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7376($sp)
	lw $t2, 7376($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7380($sp)
	lw $t2, 7380($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7384($sp)
	lw $t2, 1520($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7388($sp)
	lw $t2, 7388($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7392($sp)
	lw $t2, 7392($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7396($sp)
	lw $t2, 1528($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7400($sp)
	lw $t2, 7400($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7404($sp)
	lw $t2, 7404($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7408($sp)
	lw $t2, 1536($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7412($sp)
	lw $t2, 7412($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7416($sp)
	lw $t2, 7416($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7420($sp)
	lw $t2, 1544($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7424($sp)
	lw $t2, 7424($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7428($sp)
	lw $t2, 7428($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7432($sp)
	lw $t2, 1552($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7436($sp)
	lw $t2, 7436($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7440($sp)
	lw $t2, 7440($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7444($sp)
	lw $t2, 1560($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7448($sp)
	lw $t2, 7448($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7452($sp)
	lw $t2, 7452($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7456($sp)
	lw $t2, 1568($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7460($sp)
	lw $t2, 7460($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7464($sp)
	lw $t2, 7464($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7468($sp)
	lw $t2, 1576($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7472($sp)
	lw $t2, 7472($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7476($sp)
	lw $t2, 7476($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7480($sp)
	lw $t2, 1584($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7484($sp)
	lw $t2, 7484($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7488($sp)
	lw $t2, 7488($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7492($sp)
	lw $t2, 1592($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7496($sp)
	lw $t2, 7496($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7500($sp)
	lw $t2, 7500($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7504($sp)
	lw $t2, 1600($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7508($sp)
	lw $t2, 7508($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7512($sp)
	lw $t2, 7512($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7516($sp)
	lw $t2, 1608($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7520($sp)
	lw $t2, 7520($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7524($sp)
	lw $t2, 7524($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7528($sp)
	lw $t2, 1616($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7532($sp)
	lw $t2, 7532($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7536($sp)
	lw $t2, 7536($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7540($sp)
	lw $t2, 1624($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7544($sp)
	lw $t2, 7544($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7548($sp)
	lw $t2, 7548($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7552($sp)
	lw $t2, 1632($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7556($sp)
	lw $t2, 7556($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7560($sp)
	lw $t2, 7560($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7564($sp)
	lw $t2, 1640($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7568($sp)
	lw $t2, 7568($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7572($sp)
	lw $t2, 7572($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7576($sp)
	lw $t2, 1648($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7580($sp)
	lw $t2, 7580($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7584($sp)
	lw $t2, 7584($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7588($sp)
	lw $t2, 1656($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7592($sp)
	lw $t2, 7592($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7596($sp)
	lw $t2, 7596($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7600($sp)
	lw $t2, 1664($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7604($sp)
	lw $t2, 7604($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7608($sp)
	lw $t2, 7608($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7612($sp)
	lw $t2, 1672($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7616($sp)
	lw $t2, 7616($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7620($sp)
	lw $t2, 7620($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7624($sp)
	lw $t2, 1680($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7628($sp)
	lw $t2, 7628($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7632($sp)
	lw $t2, 7632($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7636($sp)
	lw $t2, 1688($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7640($sp)
	lw $t2, 7640($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7644($sp)
	lw $t2, 7644($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7648($sp)
	lw $t2, 1696($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7652($sp)
	lw $t2, 7652($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7656($sp)
	lw $t2, 7656($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7660($sp)
	lw $t2, 1704($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7664($sp)
	lw $t2, 7664($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7668($sp)
	lw $t2, 7668($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7672($sp)
	lw $t2, 1712($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7676($sp)
	lw $t2, 7676($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7680($sp)
	lw $t2, 7680($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7684($sp)
	lw $t2, 1720($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7688($sp)
	lw $t2, 7688($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7692($sp)
	lw $t2, 7692($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7696($sp)
	lw $t2, 1728($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7700($sp)
	lw $t2, 7700($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7704($sp)
	lw $t2, 7704($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7708($sp)
	lw $t2, 1736($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7712($sp)
	lw $t2, 7712($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7716($sp)
	lw $t2, 7716($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7720($sp)
	lw $t2, 1744($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7724($sp)
	lw $t2, 7724($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7728($sp)
	lw $t2, 7728($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7732($sp)
	lw $t2, 1752($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7736($sp)
	lw $t2, 7736($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7740($sp)
	lw $t2, 7740($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7744($sp)
	lw $t2, 1760($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7748($sp)
	lw $t2, 7748($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7752($sp)
	lw $t2, 7752($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7756($sp)
	lw $t2, 1768($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7760($sp)
	lw $t2, 7760($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7764($sp)
	lw $t2, 7764($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7768($sp)
	lw $t2, 1776($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7772($sp)
	lw $t2, 7772($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7776($sp)
	lw $t2, 7776($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7780($sp)
	lw $t2, 1784($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7784($sp)
	lw $t2, 7784($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7788($sp)
	lw $t2, 7788($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7792($sp)
	lw $t2, 1792($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7796($sp)
	lw $t2, 7796($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7800($sp)
	lw $t2, 7800($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7804($sp)
	lw $t2, 1800($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7808($sp)
	lw $t2, 7808($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7812($sp)
	lw $t2, 7812($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7816($sp)
	lw $t2, 1808($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7820($sp)
	lw $t2, 7820($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7824($sp)
	lw $t2, 7824($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7828($sp)
	lw $t2, 1816($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7832($sp)
	lw $t2, 7832($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7836($sp)
	lw $t2, 7836($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7840($sp)
	lw $t2, 1824($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7844($sp)
	lw $t2, 7844($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7848($sp)
	lw $t2, 7848($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7852($sp)
	lw $t2, 1832($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7856($sp)
	lw $t2, 7856($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7860($sp)
	lw $t2, 7860($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7864($sp)
	lw $t2, 1840($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7868($sp)
	lw $t2, 7868($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7872($sp)
	lw $t2, 7872($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7876($sp)
	lw $t2, 1848($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7880($sp)
	lw $t2, 7880($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7884($sp)
	lw $t2, 7884($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7888($sp)
	lw $t2, 1856($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7892($sp)
	lw $t2, 7892($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7896($sp)
	lw $t2, 7896($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7900($sp)
	lw $t2, 1864($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7904($sp)
	lw $t2, 7904($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7908($sp)
	lw $t2, 7908($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7912($sp)
	lw $t2, 1872($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7916($sp)
	lw $t2, 7916($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7920($sp)
	lw $t2, 7920($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7924($sp)
	lw $t2, 1880($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7928($sp)
	lw $t2, 7928($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7932($sp)
	lw $t2, 7932($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7936($sp)
	lw $t2, 1888($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7940($sp)
	lw $t2, 7940($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7944($sp)
	lw $t2, 7944($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7948($sp)
	lw $t2, 1896($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7952($sp)
	lw $t2, 7952($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7956($sp)
	lw $t2, 7956($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7960($sp)
	lw $t2, 1904($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7964($sp)
	lw $t2, 7964($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7968($sp)
	lw $t2, 7968($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7972($sp)
	lw $t2, 1912($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7976($sp)
	lw $t2, 7976($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7980($sp)
	lw $t2, 7980($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7984($sp)
	lw $t2, 1920($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 7988($sp)
	lw $t2, 7988($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 7992($sp)
	lw $t2, 7992($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 7996($sp)
	lw $t2, 1928($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8000($sp)
	lw $t2, 8000($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8004($sp)
	lw $t2, 8004($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8008($sp)
	lw $t2, 1936($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8012($sp)
	lw $t2, 8012($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8016($sp)
	lw $t2, 8016($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8020($sp)
	lw $t2, 1944($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8024($sp)
	lw $t2, 8024($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8028($sp)
	lw $t2, 8028($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8032($sp)
	lw $t2, 1952($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8036($sp)
	lw $t2, 8036($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8040($sp)
	lw $t2, 8040($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8044($sp)
	lw $t2, 1960($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8048($sp)
	lw $t2, 8048($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8052($sp)
	lw $t2, 8052($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8056($sp)
	lw $t2, 1968($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8060($sp)
	lw $t2, 8060($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8064($sp)
	lw $t2, 8064($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8068($sp)
	lw $t2, 1976($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8072($sp)
	lw $t2, 8072($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8076($sp)
	lw $t2, 8076($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8080($sp)
	lw $t2, 1984($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8084($sp)
	lw $t2, 8084($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8088($sp)
	lw $t2, 8088($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8092($sp)
	lw $t2, 1992($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8096($sp)
	lw $t2, 8096($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8100($sp)
	lw $t2, 8100($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8104($sp)
	lw $t2, 2000($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8108($sp)
	lw $t2, 8108($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8112($sp)
	lw $t2, 8112($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8116($sp)
	lw $t2, 2008($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8120($sp)
	lw $t2, 8120($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8124($sp)
	lw $t2, 8124($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8128($sp)
	lw $t2, 2016($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8132($sp)
	lw $t2, 8132($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8136($sp)
	lw $t2, 8136($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8140($sp)
	lw $t2, 2024($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8144($sp)
	lw $t2, 8144($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8148($sp)
	lw $t2, 8148($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8152($sp)
	lw $t2, 2032($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8156($sp)
	lw $t2, 8156($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8160($sp)
	lw $t2, 8160($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8164($sp)
	lw $t2, 2040($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8168($sp)
	lw $t2, 8168($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8172($sp)
	lw $t2, 8172($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8176($sp)
	lw $t2, 2048($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8180($sp)
	lw $t2, 8180($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8184($sp)
	lw $t2, 8184($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8188($sp)
	lw $t2, 2056($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8192($sp)
	lw $t2, 8192($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8196($sp)
	lw $t2, 8196($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8200($sp)
	lw $t2, 2064($sp)
	move $a0, $t2
	jal f_toString
	move $t0, $v0
	sw $t0, 8204($sp)
	lw $t2, 8204($sp)
	move $a0, $t2
	la $a1, msg_0
	jal f_str.stringConcatenate
	move $t0, $v0
	sw $t0, 8208($sp)
	lw $t2, 8208($sp)
	move $a0, $t2
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8212($sp)
	la $a0, msg_2
	li $v0, 4
	syscall
	la $a0, msg_1
	li $v0, 4
	syscall
	move $t0, $v0
	sw $t0, 8216($sp)
	li $v0, 0
	lw $ra, 0($sp)
	add $sp, $sp, 8220
	jr $ra
	lw $ra, 0($sp)
	add $sp, $sp, 8220
	jr $ra
	b main_end
main_end:
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
f_getcount:
	move $s3, $a0
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	la $s3, 0($s3)
	lw $s5, 0($s3)
	add $s5, $s5, 1
	sw $s5, 0($s3)
	move $v0, $s5
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
