	.data
str:	.asciiz	"warning: zero digits!"
	.text
	.globl 	main

main:	subiu	$sp,$sp,28
	sw	$s0,0($sp)
	sw	$s1,4($sp)
	sw	$s2,8($sp)
	sw	$s2,12($sp)
	sw	$s4,16($sp)
	sw	$s5,20($sp)
	sw	$ra,24($sp)
	
	li	$s4,0		#int i = 0;
	li	$t0,0		#int j = 0;
	li	$s5,0		#int t = 0;
	
	move	$s0,$a0
	move	$s1,$a1
	move	$s2,$a2
	move	$s3,$a3
	
if:	bnez	$s0,endif
	
	la	$a0,str
	li	$v0,4
	syscall
endif: 

for:	bge	$s4,$s0,endfor
	
ifinit:	sll	$t3,$s4,2	# $t3 = i*4
	addu	$t3,$t3,$s1
	lw	$t4,0($t3)
	
	beqz	$t4,endifinit
	
	
for2:	bge	$t0,$s0,endfor2
	
	add	$t9,$s4,$t0
	sll	$t8,$t9,2
	addu	$t8,$t8,$s3
	lw	$t7,0($t8)
	
	# $t4 = aa[i]   $t5= b[j]
	mul	$t6,$t4,$t5
	
	add	$t7,$t7,$t6
	
	
	add	$t0,$t0,1
	j	for2
endfor2:
	
	add	$s5,$s5,1		# t++;
	
ifmed:
	andi	$t1,$s5,15
	beqz	$t1,endifm
	
	mul	$t2,$s0,2
	la	$a0,$t2
	la	$a1,$s3
	jal	normalize	
endifm:	
endifinit:	
	j	for
endfor:
	
	
iffinal:
	andi	$t1,$s5,15
	bnez	$t1,endiff
	
	mul	$t2,$s0,2
	la	$a0,$t2
	la	$a1,$s3
	jal	normalize	
endiff:	
	
	lw	$ra,24($sp)
	lw	$s0,0($sp)
	lw	$s1,4($sp)
	lw	$s2,8($sp)
	lw	$s2,12($sp)
	lw	$s4,16($sp)
	lw	$s5,20($sp)
	addiu	$sp,$sp,28
	
	jr	$ra