loop:
	addi	$t1,$t1,3	# i = i + 1
	add	$t2,$t5,$t1	# sum = sum + i
	j	loop
add	$t0,$t1,$t2	#  $t0 = $t1 + $t2;   add as signed (2's complement) integers
sub	$t2,$t3,$t4	#  $t2 = $t3 Ð $t4
addi	$t2,$t3,5	#  $t2 = $t3 + 5;   "add immediate" (no sub immediate)
	sll	$t1,$t2,7
exit:
sw	$zero,23($t0)
add	$t1,$t6,$t7	#  $t1 = $t6 + $t7;   add as unsigned integers
sub	$t1,$t6,$t7
	jr	$t3
	beq	$t0,$t1,exit	# if i = N, continue
	jal	exit
	j	4
	bne	$t4,$t1,8	# if i = N, continue
beq	$t0,$t1,exit	# if i = N, continu
