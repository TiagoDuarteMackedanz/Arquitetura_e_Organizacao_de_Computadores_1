.text
ori $t1, $zero, 0x7000
sll $t1, $t1, 16
addu $t3, $t1, $t1 #soma t1+t1
ori $t5, $zero,5
ori $t6, $zero,3
sub $t7, $t5, $t6