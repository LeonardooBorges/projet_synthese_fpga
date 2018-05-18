	addi	$t0,$zero,3	# i = i + 1 0
	addi	$t1,$zero,4	# i = i + 1 4
	addi	$t2,$zero,5	# i = i + 1 8
	addi	$t3,$zero,6	# i = i + 1 12
	beq	$t7,$t8,4	# 16
	addi	$t4,$zero,7	# i = i + 1 20
	addi	$t5,$zero,8	# i = i + 1 24
	addi	$t6,$zero,9	# i = i + 1 28
	addi	$t7,$zero,10	# i = i + 1 32
	sb	$t3,11($t1)	# sum = sum + i 36
	addi	$t5,$zero,255	# i = i + 1 40
	sb	$t5,12($t1)	# sum = sum + i 44
