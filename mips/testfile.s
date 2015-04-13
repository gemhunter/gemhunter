.text 
main:
addi  $sp, $sp, -8
#t0 , 'a' ,  , =
li  $t0, 97
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 4($sp)
#putchar , t1 ,  , 
lw  $a0, 4($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall