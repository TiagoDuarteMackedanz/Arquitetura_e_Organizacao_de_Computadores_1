.text
ori $t1, $zero, 10
ori $t2, $zero, 0xFFF
sll $t1,$t1,16
ori $t1,$t1, 0xFFFD
addi $t2, $zero, -3
add $t3, $t1, $t2 #soma t1+t2
