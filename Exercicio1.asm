# igor
# igor.ponticelli@pucrs.br

# for(i=0; i<n; i++) # a[i] = b{i} + 10

# Fazer F = g + (h - 5)

.text
	.globl	main		# onde o c�digo inicia.
	
main:	xor	$t0,$t0,$t0	# zera o $t0=(i)

	la 	$t1,i		# $t0 recebe o endere�o de i.
	lw	$t1, 0($t1)	# $f recebe o valor de i.

	la	$t2, f		#$t2 recebe o endere�o base do vetor f.
    lw  $t2, 0($t2) #$t2 recebe o valor do vetor f.

	la	$t3, g		#$t3 recebe o endere�o base do vetor g.
    lw  $t2, 0($t2) #$t2 recebe o valor do vetor g.

    la	$t4, h		#$t4 recebe o endere�o base do vetor h.
    lw  $t4, 0($t4) #$t4 recebe o valor do vetor h.

loop:	lw	$t5, 0($t2)	# busca na memoria f[i]
	addi	$t5, $t3, 	# b[i]=b[i]+10
	sw	$t4, 0($t2)	# armazena em a[i] = b[i] + 10
	
	addi	$i,$i,1	    # incrementa o (i)
	addi	$t2,$t2,4	# incrementa o endere�o de a (+4 porque � uma word)
	addi	$t3,$t3,4	# incrementa o endere�o de a (+4 porque � uma word)
	blt	$i, $f, loop	# pula para o "loop" se i < n ($i < $f)

end:	j	end


.data

i:	.word	5
f:	.word	0x001	0x002	0x003	0x004	0x005
g:	.word	0x300	0x400	0x500	0x600	0x700
h:  .word   0x010	0x020	0x030	0x040	0x050

