# Mapa de registos
# i: $t0
# houve_troca: $t4
# 
# lista: $t6
# lista + i: $t7
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
lista:	.space 	40
   	.text
 	.globl 	main
main: 	
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

do: 				# do {
 	li 	$t4,FALSE 	# houve_troca = FALSE;
 	li 	$t0,0 		# i = 0;
 	
 	li	$t7,SIZE
 	subiu 	$t7,$t7,1
while: 	bge 	$t0,$t7,endw 	# while(i < SIZE-1){ ????????????????????????????????????????????'
	
if:	la	$t3,lista	
	sll 	$t5,$t0,2 	# $t5 = i * 4
 	addu 	$t3,$t3,$t5 	# $t3 = &lista[i]
 	lw 	$t8,0($t3) 	# $t8 = lista[i]
	
	la	$t2,lista	
	add	$t5,$t0,1
	sll 	$t5,$t5,2 	# $t5 = i * 4
 	addu 	$t2,$t2,$t5 	# $t3 = &lista[i+1]
 	lw 	$t9,0($t2) 	# $t9 = lista[i+1]
 	
 	ble 	$t8,$t9,endif 	# if(lista[i] > lista[i+1]){
 	sw 	$t8,0($t2) 	# lista[i+1] = $t8
 	sw 	$t9,0($t3) 	# lista[i] = $t9
 	li 	$t4,TRUE 	#
 				# }
endif: 	addi	$t0,$t0,1	# i++;
	j 	while
endw:		 		# }
 	beq 	$t4,TRUE,do	# } while(houve_troca == TRUE);
 	
 	
 				# codigo de impressao do
 				# conteudo do array
 	la	$v0,print_string
	la	$a0,str2
	syscall			# print_string(str2);
	
 	la 	$t0,lista 	# p = lista
	li 	$t2,SIZE 	#
	sll 	$t2,$t2,2 	#
	addu 	$t2,$t0,$t2 	# $t2 = lista + SIZE;
 	
whilef:	bge	$t0,$t2,endwf	# while(i < lista + SIZE){
	lw 	$t1,0($t0) 	# $t1 = *p;
	
	la	$v0,print_int10
	ori	$a0,$t1,0
	syscall 		# print_int10();
	
	la	$v0,print_string
	la	$a0,str1
	syscall			# print_string(str1);

	addi	$t0,$t0,4	# p++;
	j 	whilef		# }
endwf:	
 	jr 	$ra 		# termina o programa
