.data
x: .word 10 #0x10010000
y: .word -3 #0x10010004
a: .half 6
res: .space 4
z: .word 15 #0x10010008

.text #instrucao
lui $t0, 0x1001 #$t0 registrador base
lw $t1, 0 ($t0) #$t1 = 10S
lw $t2, 4 ($t0) #$t2 = -3
lw $t3, 8 ($t0) #$t3 = 15
add $t3, $t2,$t3 #$t3 = 15-3
sw $t3, 12 ($t0)
lhu $t4, 7 ($t0)