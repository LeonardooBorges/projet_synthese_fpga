	addi	$t0,$zero,12
	addi	$t1,$zero,3
	addi	$t2,$zero,2
	addi	$t3,$zero,7
	
	addi	$s0,$zero,32

	jal	Division
	jr	$s0

Produit:
	mult	$t6,$t5,$t3

Soustraction:
	sub	$t5,$t4,$t2
	j	Produit

Division:
	div	$t4,$t0,$t1
	jr	$ra


