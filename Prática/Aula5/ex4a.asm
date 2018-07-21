# Mapa de registos
# i: $t3
# houve_troca: $t4
# p: $t5
# pUltimo: $t6
	.data
str1: 	.asciiz "; "
str2: 	.asciiz "\nConteudo do array:\n"
str3: 	.asciiz	"\nIntroduza um numero: "
	.align 	2
	.eqv 	FALSE,0
 	.eqv 	TRUE, 1
 	.eqv 	SIZE, 10
 	.eqv 	print_int10,1
	.eqv 	print_string,4
	.eqv	read_int,5
lista:	.space	40
	.text
	.globl 	main
main: 				# codigo para leitura de valores
	li 	$t0,0
for:	bge 	$t0,SIZE,endfor	# while(i < SIZE) {
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string();
	
	li 	$v0,read_int
	syscall			# $v0 = read_int(); 

	la 	$t1,lista 	# $t1 = lista (ou &lista[0])
	sll  	$t2,$t0,2	#
	addu 	$t1,$t2,$t1	# $t2 = &lista[i]
	sw 	$v0,0($t1) 	# lista[i] = read_int();
	
	addi 	$t0,$t0,1	# i++
	j 	for
endfor:	
				#######
	
	
 	la 	$t5,lista 	# $t5 = &lista[0]
 	li 	$t6,SIZE	#
 	subiu 	$t6,$t6,1 	# $t6 = SIZE – 1
 	sll 	$t6,$t6,2	# $t6 = (SIZE – 1) * 4
 	addu 	$t6,$t6,$t5 	# $t6 = lista + (SIZE – 1)
do:				# do {
 	li	$t4,FALSE	# houveTroca = FALSE;
 	la	$t5,lista
 	#li 	$t6,SIZE 	#
	#sll 	$t6,$t6,2 	#
	#addu 	$t6,$t5,$t6 	# $t2 = lista + SIZE;
	
while:	bge 	$t5,$t6,endw 	# while(p < pUltimo){
	
if: 	
	lw	$t1,0($t5)	# $t1 = *p
 	lw	$t2,4($t5)	# $t2 = *(p+1)
 	
 	ble 	$t1,$t2,endif 	# if(*p > *(p+1)){
 	
 	ori	$t7,$t1,0
 	sw  	$t2,0($t5)
 	sw	$t7,4($t5)
	
 	li 	$t4,TRUE 	#
 				# }
endif: 	addi	$t5,$t5,4	# p++;
	j 	while
endw:		 		# }

 	beq 	$t4,TRUE,do	# } while(houve_troca == TRUE);
 	
 				######CÓDIGO DE IMPRESSAO
 	
 	la	$t5,lista			
whilef:	bgt	$t5,$t6,endwf	# while(p < pUltimo){

	
	la	$v0,print_int10
	lw	$a0,0($t5)
	syscall 		# print_int10();
	
	la	$v0,print_string
	la	$a0,str1
	syscall			# print_string(str1);

	addi	$t5,$t5,4	# p++;
	j 	whilef		# }
endwf:	
 	jr 	$ra 		# termina o programa
