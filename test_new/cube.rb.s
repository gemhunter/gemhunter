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
#goto , l1 ,  , 
b  l1
#label , m1 ,  , 
m1: 
#methodStarts , m1 ,  , 
addi  $sp, $sp, -12
#t1 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t2 , t1 , t1 , *
lw  $t1, 0($sp)
lw  $t2, 0($sp)
mul  $t0, $t1, $t2
sw  $t0, 4($sp)
#return , t2 ,  , 
lw  $v0, 4($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t3 , nil ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#return , t3 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l1 ,  , 
l1: 
#param , t0 ,  , 
lw  $t0, 0($sp)
sw  $t0, -4($sp)
#t4 , m1 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m1
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 4($sp)
#t5 , t0 , t4 , *
lw  $t1, 0($sp)
lw  $t2, 4($sp)
mul  $t0, $t1, $t2
sw  $t0, 8($sp)
#return , t5 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t6 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t6 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t7 , 0 ,  , =
li  $t0, 0
sw  $t0, 0($sp)
#t8 , t7 ,  , =
lw  $t0, 0($sp)
sw  $t0, 4($sp)
#readint , t8 ,  , 
li  $v0, 5
syscall 
sw  $v0, 4($sp)
#param , t8 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#t9 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 8($sp)
#putint , t9 ,  , 
lw  $a0, 8($sp)
li  $v0, 1
syscall 
#t10 , '\n' ,  , =
li  $t0, 10
sw  $t0, 12($sp)
#putchar , t10 ,  , 
lw  $a0, 12($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall