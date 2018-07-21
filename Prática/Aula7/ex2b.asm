# Mapa de registos
# $t0 = val
# 
# 
	.data
str: 	.space	132			#MAX_STR_SIZE*4
	.eqv	MAX_STR_SIZE,33
	.eqv	print_string,4
	.eqv	read_int,5
	.text 
	.globl 	main

main:	subu	$sp,$sp,4
	sw	$ra,0($sp)
	
do:	
	la	$a0,read_int
	syscall

	move	$t0,$v0			# val = read_int();
			
	move	$a0,$t0
	li	$a1,2
	la	$a2,str
	jal	itoa
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 2, str) ); 
	syscall
	
	li	$a1,8
	jal	itoa
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 8, str) ); 
	syscall
	
	li	$a1,16
	jal	itoa
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 16, str) ); 
	syscall

while:	bnez	$t0,do	

	li	$v0,0
	
	lw	$ra,0($sp)
	addu	$sp,$sp,4
	jr	$ra

# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermédia
itoa: 	subu 	$sp,$sp,20 	# reserva espaço na stack
	sw	$ra,0($sp)
 	sw 	$s0,4($sp) 	# guarda registos $sx e $ra
 	sw	$s1,8($sp)
 	sw 	$s2,12($sp)
 	sw 	$s3,16($sp)
 	
 	move 	$s0,$a0 	# copia n, b e s para registos
 	move	$s1,$a1		# "callee-saved"
 	move	$s2,$a2
 	move 	$s3,$a2 	# p = s;
 	
 	
doitoa:				# do {
 	rem	$t0,$s0,$s1
 	div	$s0,$s0,$s1
 	
 	lw	$t1,($s2)
 	
 	
 	move	$a0,$t0
 	jal	toascii
 	
 	sw	$v0,($s2)	
 	
 	addu	$s2,$s2,1
 	
 	bgt 	$s0,$0,doitoa 	# } while(n > 0);
 	sb 	$0,0($s3) 	# *p = 0;
 	
 	move	$a0,$s2			
 	jal 	strrev 		# strrev( s );
 	
 	move	$v0,$s2		# return s;
 	
 	lw 	$s0,0($sp)	# repõe registos $sx e $ra
	sw	$s1,4($sp)
 	sw 	$s2,8($sp) 	
 	sw	$s3,12($sp)
 	sw 	$ra,16($sp)
 	addu 	$sp,$sp,20	# liberta espaço na stack
 	jr 	$ra 		# 
 	
toascii:
	add	$a0,$a0,'0'
ifta:	ble	$a0,'9',endifta
	add	$a0,$a0,7

endifta:	
	
	move	$v0,$a0
	
	jr	$ra