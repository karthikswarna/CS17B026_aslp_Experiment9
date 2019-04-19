# MIPS program to use floating point instructions.
			.data
float1:		.float	3.254464
float2:		.float	5.654754
double1:	.double	8.1456486787847986486
double2:	.double	1.5648748677867
	
			.text
main:
	l.s $f0, float1
	l.s $f1, float2
	add.s $f2, $f0, $f1
 	sub.s $f3, $f0, $f1
	mul.s $f4, $f0, $f1
	div.s $f5, $f0, $f1

	l.d $f6, double1
	l.d $f8, double2
	add.d $f10, $f6, $f8
	sub.d $f12, $f6, $f8
	mul.d $f14, $f6, $f8
	div.d $f16, $f6, $f8
	jr $ra
.end main