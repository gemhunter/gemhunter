.text 
main:
addi  $sp, $sp, -12
#t0 , 1 ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#putint , t1 ,  , 
lw  $a0, 0($gp)
li  $v0, 1
syscall 
#t2 , '\n' ,  , =
li  $t0, 10
sw  $t0, 4($sp)
#putchar , t2 ,  , 
lw  $a0, 4($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall