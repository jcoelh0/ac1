# Mapa de registos:
# $t0 � value
# $t1 � bit
# $t2 - i
 	.data
str1: 	.asciiz "Introduza um numero: "
str2: 	.asciiz "\nO valor em bin�rio �:"
 	.eqv 	print_string,4
 	.eqv 	read_int,5
 	.eqv	print_char,11 
 	.text
 	.globl 	main
main: 	la	$a0,str1
 	li	$v0,print_string 	# (instru��o virtual)
 	syscall 			# print_string(str1);
 	li	$v0,read_int
 	syscall				
 	or	$t0,$0,$v0		# value=read_int();
 	
 	la	$a0,str2
 	li	$v0,print_string
 	syscall				# print_string(str2);
 	li 	$t2,0 			# i = 0
for: 	bge 	$t2,32,endfor 		# while(i < 32) {
	rem	$t3,$t2,4
ifsep:	bnez	$t3,endifs 	
 	la	$a0,' '
 	li	$v0,print_char 		# print_char(' ');
 	syscall
endifs:		
 	andi 	$t1,$t0,0x80000000 	# (instru��o virtual)

	
	srl	$t1,$t1,31
	
	addi	$a0,$t1,0x30
	
 	li	$v0,print_char 		# print_char(' ');
 	syscall

	sll	$t0,$t0,1		# value = value << 1;
 	addi	$t2,$t2,1		# i++;
 	j 	for 			# }
endfor: 
 	jr 	$ra 			# fim do programa 