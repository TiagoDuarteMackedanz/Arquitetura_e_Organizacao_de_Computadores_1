.data
.word 1
.word 2
.word 3
.word 4
.word 5
.word 6
.word 7
.word 8

.text
ori $t1, $zero, 0 #$t1 = 0 (i=0)
ori $t3, $0, 2 #$t3=2
lui $s6, 0x1001 #end base &vetor[0]
teste: slti $s1, $t1, 8 #teste i<8?
	beq $s1,$zero, fim
	div $t1, $t3 #(i%2)
	mfhi $t4 #resto da div
	bne $t4, $zero, impar
par: sll $s3, $t1, 1 #$s3 = i*2
	sll $t2, $t1, 2 #define (ix4) offset End.Mem
	addu $s4, $s6, $t2 #End Vet = base+offset
	sw $s3, 0($s4) #Vet[i] = i*2
	addi $t1, $t1, 1 #i++
	j teste
impar: sll $t2, $t1, 2 #define (ix4) offset End.Mem
	addu $s4, $s6, $t2 #End Vet = base+offset
	lw $s5, 0($s4) #Vet[i]
	lw $s7, -4($s4) #Vet[i-1]
	add $t5, $s5, $s7 #Vet[i]+Vet[i-1]
	sw $t5, 0($s4) #Vet[i]=Vet[i]+Vet[i-1]
	addi $t1, $t1, 1 #i++
	j teste
fim: sll $zero, $zero, 0
