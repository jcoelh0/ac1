# Mapa de registos
# soma: $t1
# i: $t5
	.data
array:	.word 	-7692,23,5,234
	.eqv 	print_int10,1
	.eqv 	SIZE,4
	.text
	.globl 	main
main: 	la 	$t0,array	# $t0 = array;
	li 	$t1,0 		# soma = 0;
	li	$t2,0		# i = 0;
 	
while: 	bgeu 	$t2,SIZE,endw	# while(var < SIZE)
 	
 	sll	$t3,$t2,2	# $t5 = i * 4
	addu	$t4,$t0,$t3	# $t0 = &array[i]
	lw 	$t6,0($t4)	# $t6 = array[i]
	
	add 	$t1,$t1,$t6 	# soma = soma + array[i];
 	addi	$t2,$t2,1	# i++;
 	j	while
endw:	 			# }
 	ori	$a0,$t1,0
 	li	$v0,print_int10
 	syscall			# print_int10(soma);
 	
 	jr 	$ra 		# termina o programa
