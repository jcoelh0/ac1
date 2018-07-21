# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i
# $t4 - flag
 	.data
str1: 	.asciiz "Introduza um numero: "
str2: 	.asciiz "\nO valor em binário é:"
 	.eqv 	print_string,4
 	.eqv 	read_int,5
 	.eqv	print_char,11 
 	.text
 	.globl 	main
main: 	li	$t4,0			# flag = 0
	la	$a0,str1
 	li	$v0,print_string 	# (instrução virtual)
 	syscall 			# print_string(str1);
 	li	$v0,read_int
 	syscall				
 	or	$t0,$0,$v0		# value=read_int();
 	
 	la	$a0,str2
 	li	$v0,print_string
 	syscall				# print_string(str2);
 	li 	$t2,0 			# i = 0
 	
for: 	bge 	$t2,32,endfor 		# while(i < 32) {
	
	srl	$t1,$t0,31		# bit = value >> 31; 

iff:	bne	$t4,1,iff2
	j	prog
iff2:	beqz	$t1,endf	
prog:	ori	$t4,$t4,1

	rem	$t3,$t2,4
if:	bnez	$t3,endif	
 	la	$a0,' '
 	li	$v0,print_char 		# print_char(' ');
 	syscall
endif:		
 	andi 	$t1,$t0,0x80000000 	# (instrução virtual)
	
	srl	$t1,$t1,31
	
	addi	$a0,$t1,0x30
	
 	li	$v0,print_char 		# print_char(0x30 + bit);
 	syscall
endf:
	sll	$t0,$t0,1		# value = value << 1;
 	addi	$t2,$t2,1		# i++;
 	j 	for 			# }
endfor: 
 	jr 	$ra 			# fim do programa 