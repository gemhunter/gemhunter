.text 
main:
addi $sp, $sp, -12
#t0 , 9 ,  , =
ld $s6, 0($sp)
li $s6, 9
#t1 , 0 ,  , =
ld $s7, 4($sp)
li $s7, 0
#t2 , t0 , t1 , >=
ld $s4, 8($sp)
slt $s4, $s6, $s7
not $s4, $s4
li $v0, 10 
syscall