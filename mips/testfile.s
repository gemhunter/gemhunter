.text 
main:
addi $sp, $sp, -28
#t0 , 9 ,  , =
ld $s6, 0($sp)
li $s6, 9
#t1 , t0 ,  , =
ld $s7, 0($gp)
move $s7, $s6
#t2 , 10 ,  , =
ld $s4, 4($sp)
li $s4, 10
#t3 , t2 ,  , =
ld $s5, 4($gp)
move $s5, $s4
#t4 , 0 ,  , =
ld $s2, 8($sp)
li $s2, 0
#t5 , t1 , t4 , *
ld $s3, 12($sp)
mul $s3, $s7, $s2
#t6 , t5 ,  , =
ld $s0, 8($gp)
move $s0, $s3
li $v0, 10 
syscall