	.data
	.text
	.globl main
main: 	li	$t0,0x12345678	# $t0 é inicializado na janela
	sll 	$t2,$t0,1 	# "Registers" do MARS
	srl 	$t3,$t0,1 	#
	sra 	$t4,$t0,1 	#
	jr	$ra 		# fim do programa
