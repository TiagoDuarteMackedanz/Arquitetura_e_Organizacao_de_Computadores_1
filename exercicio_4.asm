.text

ori $t4, $zero, 4 #4
ori $t1, $zero, 1 #X
mult $t4, $t1
mflo $s2
  
ori $t5, $zero, 2 #2
ori $t2, $zero, 1 #Y
mult $t5, $t2
mflo $t8

sub $s1, $s2, $t8

ori $t6, $zero, 3 #3
ori $t3, $zero, 1 #Z
mult $t6, $t3
mflo $t9

add $t7, $t8, $t9