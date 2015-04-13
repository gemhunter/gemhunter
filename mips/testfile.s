.text 
main:
addi  $sp, $sp, -32
#t0 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 0($sp)
#t1 , 'd' ,  , =
li  $t0, 100
sw  $t0, 4($sp)
#t2 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t0 , t2 , t1 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t3 , 'a' ,  , =
li  $t0, 97
sw  $t0, 12($sp)
#t4 , 4 ,  , =
li  $t0, 4
sw  $t0, 16($sp)
#t0 , t4 , t3 , *=
lw  $t0, 0($sp)
lw  $t1, 16($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t5 , '\0' ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t6 , 8 ,  , =
li  $t0, 8
sw  $t0, 24($sp)
#t0 , t6 , t5 , *=
lw  $t0, 0($sp)
lw  $t1, 24($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t7 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 28($sp)
#putstring , t7 ,  , 
lw  $t0, 28($sp)
lw $t4, 8($t0)

move $a0, $t0
li $v0, 4
syscall

exit:
li $v0, 10 
syscall