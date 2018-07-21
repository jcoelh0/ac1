# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
#
	.data
str: 	.asciiz "ITED - orievA ed edadisrevinU"
	.eqv	print_string,4
	.text 
	.globl 	main
main:	subiu 	$sp,$sp,4
	sw 	$ra,0($sp)
	
	la	$a0,str
	jal	strrev
	
	move 	$a0,$v0
	li	$v0,print_string
	syscall
	
	lw 	$ra,0($sp)	#restore $ra
	addu 	$sp,$sp,4 	#store stack pointer
	
	jr	$ra 		# termina programa
	


strrev: subu 	$sp,$sp,16 	# reserva espaço na stack
 	sw 	$ra,0($sp) 	# guarda endereço de retorno
 	sw 	$s0,4($sp) 	# guarda valor dos registos
 	sw 	$s1,8($sp) 	# $s0, $s1 e $s2
 	sw 	$s2,12($sp) 	#
 	move 	$s0,$a0 	# registo "callee-saved"
 	move 	$s1,$a0 	# p1 = str
 	move 	$s2,$a0 	# p2 = str
 	
wstrrev:	
	lb 	$t2,0($s2)
	beq	$t2,'\0',endwstrr# while( *p2 != '\0' ) {
 	addu	$s2,$s2,1	# p2++;
 	j 	wstrrev		# }
endwstrr:	
	subu	$s2,$s2,1	# p2--;
while2strr: 
	bgeu	$s1,$s2,endw2strr	# while(p1 < p2) {
 	
 	move 	$a0,$s1 	#
 	move 	$a1,$s2		#
 	jal 	exchange 	# exchange(p1,p2)
 	addu	$s1,$s1,1
 	subu	$s2,$s2,1
 	j 	while2strr 	# }
endw2strr: 	
 	move 	$v0,$s0 	# return str
 	lw 	$ra,0($sp) 	# repõe endereço de retorno
 	lw 	$s0,4($sp) 	# repõe o valor dos registos
 	lw 	$s1,8($sp)	# $s0, $s1 e $s2
 	lw 	$s2,12($sp)	#
 	addu 	$sp,$sp,16	# liberta espaço da stack
 	jr 	$ra 		# termina a sub-rotina

exchange:
	lb 	$t0,($a0)	# aux = *ptr1
	lb 	$t1,($a1)
	sb 	$t1,($a0)	# *ptr2 = *ptr1
	sb 	$t0,($a1)	# *ptr1 = aux
	jr 	$ra
