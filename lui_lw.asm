.data
.word 10 #0x10010000
.word -3 #0x10010004
.word 15 #0x10010008

.text #instrucao
lui $t0, 0x1001 #$t0 registrador base
lw $t1, 0 ($t0) #$t1 = 10S