	addi	$t0,$zero,4
	addi	$t1,$zero,5
	addi	$t2,$zero,9
label:
	addi	$t0,$t0,1
	beq	$t0,$t1,label
	addi	$t0,$t0,1
	bne	$t0,$t2,label
	sw	$t2,0($zero)
