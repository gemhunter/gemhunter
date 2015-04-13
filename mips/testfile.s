.text 
main:
addi  $sp, $sp, -64
#t0 , 1 ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#t2 , 2 ,  , =
li  $t0, 2
sw  $t0, 4($sp)
#t3 , t2 ,  , =
lw  $t0, 4($sp)
sw  $t0, 8($sp)
#t4 , 42 ,  , =
li  $t0, 42
sw  $t0, 12($sp)
#t5 , t4 ,  , =
lw  $t0, 12($sp)
sw  $t0, 4($gp)
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -16
#t6 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t7 , 5 ,  , =
li  $t0, 5
sw  $t0, 4($sp)
#t8 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t6 , t8 , t7 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t6 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t9 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t9 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t10 , 4 ,  , new
li  $a0, 4
li  $v0, 9
syscall 
sw  $v0, 16($sp)
#param , t10 ,  , 
lw  $t0, 16($sp)
sw  $t0, -4($sp)
#t11 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 20($sp)
#t12 , t11 ,  , =
lw  $t0, 20($sp)
sw  $t0, 24($sp)
#t13 , 4 ,  , new
li  $a0, 4
li  $v0, 9
syscall 
sw  $v0, 28($sp)
#param , t13 ,  , 
lw  $t0, 28($sp)
sw  $t0, -4($sp)
#t14 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 32($sp)
#t15 , t14 ,  , =
lw  $t0, 32($sp)
sw  $t0, 36($sp)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 40($sp)
#t17 , 4 ,  , =
li  $t0, 4
sw  $t0, 44($sp)
#t12 , t16 , t17 , *=
lw  $t0, 24($sp)
lw  $t1, 40($sp)
lw  $t2, 44($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t19 , 0 ,  , =
li  $t0, 0
sw  $t0, 48($sp)
#t18 , t12 , t19 , =*
lw  $t1, 24($sp)
lw  $t2, 48($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 52($sp)
#putint , t18 ,  , 
lw  $a0, 52($sp)
li  $v0, 1
syscall 
exit:
li $v0, 10 
syscall