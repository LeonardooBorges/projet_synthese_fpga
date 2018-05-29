	addi	$t0,$zero,255
	sb	$t0,0($zero)
	lb	$t0,0($zero)
	addi	$t1,$zero,21554
	xor	$t1,$t0,$t1
	sw	$t1,0($zero)

	addi	$t3,$zero,13
	addi	$t4,$zero,64
	or	$t3,$t3,$t4
	sb	$t3,4($zero)

	andi	$t3,$t3,0
	addi	$t3,$zero,249
	addi	$t4,$zero,15
	and	$t3,$t3,$t4
	ori	$t3,$t3,64
	sb	$t3,5($zero)

	addi	$t5,$zero,18943
	srl	$t5,$t5,8
	ori	$t5,$t5,19712
	sll	$t5,$t5,16
	ori	$t5,$t5,20563
	sw	$t5,8($zero) 
	
	
	


	
