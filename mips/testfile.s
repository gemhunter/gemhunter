.text 
main:
addi  $sp, $sp, -4
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -12
#t0 , 1 ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 4($sp)
#exit ,  ,  , 
b exit 
#putint , t1 ,  , 
lw  $a0, 4($sp)
li  $v0, 1
syscall 
#t2 , nil ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#return , t2 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t3 , m0 ,  , call
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 8
sw  $v0, 0($sp)
exit:
li $v0, 10 
syscall