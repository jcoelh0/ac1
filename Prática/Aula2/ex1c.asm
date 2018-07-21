	.data
	.text
	.globl main
main: 	ori 	$t0,$0,0xF0F1 	# substituir val_1 e val_2 pelos
	nor 	$t1,$t0,$0	# $t1 = $t0 NOR $0 negação bit a bit
	jr 	$ra 		# fim do programa