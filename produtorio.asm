#Escreva um programa que calcule o produtório abaixo. O valor de n deve ser lido da posição
#0x10010000 da memória no início do programa. O valor de A deve ser escrito na memória no fim do programa,
# na posição 0x10010004.
##Produtório calcula o produto.

.data
.word 4 #n=4
.space 4 #armazenar A
 
.text
lui $t0, 0x1001 #define $t0 end. base memoria
ori $t1, $zero, 0 #$t1 : i=0
ori $t2, $zero, 2 #$t2 =2 (constante)
ori $t3, $zero, 1 #$t3 =1 (acumulador do produto)
lw $t4, 0($t0) #$t4 = n = 4
inicio: div $t1, $t2 #i/2
	mflo $t5 #$t5 = i/2
	add $t6, $t5, $t4 #(n+1/2)
	mult $t3, $t6 #(produtório)
	mflo $t3 #acumula produtorio em $t3
	beq $t1,$t4, fim
	addi $t1, $t1, 1 #i++
j inicio
fim: sw $t3, 4($t0) #armazena A
	sll $zero, $zero, 0 #fim