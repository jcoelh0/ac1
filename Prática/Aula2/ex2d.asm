	.data
	.eqv print_int16,34
	.eqv print_char,11
	.text
	.globl main
main: 	ori 	$t0,$0,0xABCD 		# valor inicial
	andi 	$a0,$t0,0xF000		# $a0 = $t0 & 0x0000F000
	srl 	$a0,$a0,12 		# $a0 = digito3
	ori 	$v0,$0,print_int16 	# assembl. substitui por 34
	syscall 			# print_int16(digito3)
	ori 	$v0,$0,print_char 	# assembl. substitui por 11
	ori 	$a0,$0,' '
	syscall 			# print_char(' ')
	
	andi 	$a0,$t0,0x0F00 		# $a0 = $t0 & 0x00000F00
	srl 	$a0,$a0,8 		# $a0 = digito2
	ori 	$v0,$0,print_int16 	# assembl. substitui por 34
	syscall 
	ori 	$v0,$0,print_char 	# assembl. substitui por 11
	ori 	$a0,$0,' '
	syscall 			# print_char(' ')
	
	andi 	$a0,$t0,0x00F0 		# $a0 = $t0 & 0x000000F0
	srl 	$a0,$a0,4 		# $a0 = digito1
	ori 	$v0,$0,print_int16 	# assembl. substitui por 34
	syscall 
	ori 	$v0,$0,print_char 	# assembl. substitui por 11
	ori 	$a0,$0,' '
	syscall 			# print_char(' ')
	
	andi 	$a0,$t0,0x000F 		# $a0 = $t0 & 0x0000000F
	srl 	$a0,$a0,0		# $a0 = digito0
	ori 	$v0,$0,print_int16 	# assembl. substitui por 34
	syscall 
	
	jr 	$ra 			# fim do programa 
