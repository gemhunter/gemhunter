.text 
main:
addi  $sp, $sp, -68
#t0 , 4 ,  , =
li  $t0, 4
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#t2 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t3 , t2 ,  , =
lw  $t0, 4($sp)
sw  $t0, 8($sp)
#t4 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#label , l0 ,  , 
l0: 
#t5 , 1 ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t6 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 20($sp)
#t7 , 0 ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#t6 , t7 , t5 , *=
lw  $t0, 20($sp)
lw  $t1, 24($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t8 , 4 ,  , =
li  $t0, 4
sw  $t0, 28($sp)
#t6 , t8 , t1 , *=
lw  $t0, 20($sp)
lw  $t1, 28($sp)
lw  $t2, 0($gp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t12 , 0 ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#t13 , 4 ,  , =
li  $t0, 4
sw  $t0, 36($sp)
#t10 , t6 , t12 , =*
lw  $t1, 20($sp)
lw  $t2, 32($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 40($sp)
#t11 , t6 , t13 , =*
lw  $t1, 20($sp)
lw  $t2, 36($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 44($sp)
#t9 , t10 , t4 , +
lw  $t1, 40($sp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 48($sp)
#t14 , t9 , t11 , >
lw  $t1, 48($sp)
lw  $t2, 44($sp)
slt  $t0, $t2, $t1
sw  $t0, 52($sp)
#if , t14 , goto , l2
lw  $t1, 52($sp)
bnez  $t1, l2
#label , l1 ,  , 
l1: 
#t15 , t3 , t9 , +
lw  $t1, 8($sp)
lw  $t2, 48($sp)
add  $t0, $t1, $t2
sw  $t0, 56($sp)
#t3 , t15 ,  , =
lw  $t0, 56($sp)
sw  $t0, 8($sp)
#goto , l0 ,  , 
b  l0
#label , l2 ,  , 
l2: 
#putint , t3 ,  , 
lw  $a0, 8($sp)
li  $v0, 1
syscall 
#t16 , '\n' ,  , =
li  $t0, 10
sw  $t0, 60($sp)
#putchar , t16 ,  , 
lw  $a0, 60($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall