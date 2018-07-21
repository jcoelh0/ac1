# Mapa de registos
# p: $t0
# pultimo:$t1
# *p $t2
# soma: $t3
	.data
array:	.word 	-7692,23,5,234
	.eqv 	print_int10,1
	.eqv 	SIZE,4
	.text
	.globl 	main
main: 	li 	$t3,0 		# soma = 0;
	li 	$t4,SIZE 	#
 	sub 	$t4,$t4,1 	# $t4 = 3
 	la 	$t0,array	# p = array ou &array[0];
	la	$t1,array
 #   	addiu	$t1,$t1,12
    	li	$t4,SIZE
    	sub	$t4,$t4,1
    	
    	sll 	$t4,$t4,2 	# ou "mul $t4,$t4,4"

 	addu 	$t1,$t1,$t4	# pultimo = array + SIZE - 1;
while: 				# while(p <= pultimo)
 	bgtu 	$t0,$t1,endw 	# {
	lw 	$t2,0($t0) 	# $t2 = *p;
	add 	$t3,$t3,$t2 	# soma = soma + (*p);
 	addu 	$t0,$t0,4	# p++;
 	j	while
endw:	 			# }
 	ori	$a0,$t3,0
 	li	$v0,print_int10
 	syscall			# print_int10(soma);
 	jr 	$ra 		# termina o programa
