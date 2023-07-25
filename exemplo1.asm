.text

ori $10,$0,0
ori $8,$0,0
teste:slti $9, $8, 32767 #testa se ( i < 101 )
	beq $9, $0, fim
	addu $10, $10, $8
	addiu $8, $8, 1
	j teste
fim: sll $0, $0, 0 #faz qualquer coisa 
	