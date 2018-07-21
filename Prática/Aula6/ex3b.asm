#MAPAA DE REGISTOS
# $t0 = i
# $t1 = src
# $t2 = dst
# $t3 = exit_value
	.data
str1: 	.asciiz "I serodatupmoC ed arutetiuqrA"
	.align 	2
str2:	.space	124		# (STR_MAX_SIZE + 1) *4
str3:	.asciiz	"\n"
strtl:	.asciiz	"String too long: "
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	STR_MAX_SIZE,30
	.text 
	.globl 	main
main:	subiu 	$sp,$sp,4
	sw 	$ra,0($sp)
	
	la	$a0,str1
	jal	strlen
	
if:	bgt	$v0,STR_MAX_SIZE,else
	
	la	$a0,str2
	la	$a1,str1
	jal	strcpy
	
	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string(str2); 
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string("\n"); 
	
	la	$a0,str2
	jal	strrev
	
	move 	$a0,$v0
	li	$v0,print_string
	syscall			# print_string(strlen(str1)); 
	
	li	$t3,0		# exit_value = 0;
	
	j	endif
else:	la	$a0,strtl
	li	$v0,print_string
	syscall			# print_string("String too long: "); 
	
	la	$a0,str1
	jal	strlen	
	
	move	$a0,$v0
	li	$v0,print_int10
	syscall			# print_int10(strlen(str1)); 
			
	li	$t3,-1		# exit_value = -1
endif:			
	move 	$v0,$t3		# return exit_value; 
	
	lw 	$ra,0($sp)
	addiu 	$sp,$sp,4
	
	jr	$ra 		# termina programa


strcpy:	subu 	$sp,$sp,12	# reserva espaço na stack
	sw 	$ra,0($sp) 	# guarda endereço de retorno
	sw	$s0,4($sp)
	sw	$a0,8($sp)
	li	$t0,0		# int i=0
do:	
	lb	$s0,0($a1)
	
	sb	$s0,0($a0)
	
	addu 	$a0,$a0,1
	addu 	$a1,$a1,1
	
while:	bne	$s0,'\0',do	# } while(src[i++] != '\0');
	
	move 	$v0,$a0 	# return dst
	
	lw 	$ra,0($sp)	#
	lw	$s0,4($sp)
	lw	$a0,8($sp)
 	addu 	$sp,$sp,12	# liberta espaço da stack
 	
	jr	$ra
	
# SUB ROTINAS DE EXERCICIOS ANTERIOS

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
	
strlen: 
	li 	$t1,0 		# len = 0;
while5: lb	$t0,0($a0) 	# while(*s++ != '\0')
 	addiu 	$a0,$a0,1 	#
 	beq 	$t0,'\0',endw 	# {
 	addi 	$t1,$t1,1 	# len++;
 	j 	while5		# }
endw: 	move 	$v0,$t1 	# return len;

 	jr 	$ra 		#
	
	
