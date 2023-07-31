.text

ori $t1, $zero, 0xAAAAAAAA
srl $t2, $t1, 1

or $t3, $t1, $t2
and $t4, $t1, $t2
xor $t5, $t1, $t2
