.text 
main:
addi  $sp, $sp, -16
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -16
#t0 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t1 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t2 , t1 , t0 , -
lw  $t1, 4($sp)
lw  $t2, 0($sp)
sub  $t0, $t1, $t2
sw  $t0, 8($sp)
#return , t2 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t3 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t3 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t4 , 2 ,  , =
li  $t0, 2
sw  $t0, 0($sp)
#t5 , 3 ,  , =
li  $t0, 3
sw  $t0, 4($sp)
#param , t4 ,  , 
lw  $t0, 0($sp)
sw  $t0, -4($sp)
#param , t5 ,  , 
lw  $t0, 4($sp)
sw  $t0, -8($sp)
#t6 , m0 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 8($sp)
#t7 , t6 ,  , =
lw  $t0, 8($sp)
sw  $t0, 12($sp)
#putint , t7 ,  , 
lw  $a0, 12($sp)
li  $v0, 1
syscall 
exit:
li $v0, 10 
syscall