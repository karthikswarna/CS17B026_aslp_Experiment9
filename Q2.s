# MIPS program to perform addition of matrices.
		.data
matA:	.float	1.5, 6.2, 3.2, 7.5, 4.1, 8.4, 9.1, 7.0, 0.0
matB:	.float	8.65, 8.14, 16.25, 7.32, 5.21, 7.32, 9.21, 4.21, 1.1123
matC:	.float	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 
degree:	.word	3

		.text
main:
	la $t0, matA
	la $t1, matB
	la $t2, matC
	lw $s0, degree
	mult $s0, $s0
	mflo $s0
	li $t4, 0		# loop counter

for:
	beq $t4, $s0, Exit
	l.s $f2, 0($t0)
	l.s $f4, 0($t1)
	add.s $f6, $f4, $f2
	s.s $f6, 0($t2)
	addi $t0, $t0, 4
	addi $t1, $t1, 4
	addi $t2, $t2, 4
	addi $t4, $t4, 1
	j for

Exit:
	jr $ra
.end main