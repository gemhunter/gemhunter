.text 
main:
addi  $sp, $sp, -40
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
addi  $sp, $sp, -56
#t6 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t7 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 4($sp)
#t8 , 'a' ,  , =
li  $t0, 97
sw  $t0, 8($sp)
#t9 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t7 , t9 , t8 , *=
lw  $t0, 4($sp)
lw  $t1, 12($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t10 , 's' ,  , =
li  $t0, 115
sw  $t0, 16($sp)
#t11 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t7 , t11 , t10 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t12 , 'd' ,  , =
li  $t0, 100
sw  $t0, 24($sp)
#t13 , 8 ,  , =
li  $t0, 8
sw  $t0, 28($sp)
#t7 , t13 , t12 , *=
lw  $t0, 4($sp)
lw  $t1, 28($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t14 , 'f' ,  , =
li  $t0, 102
sw  $t0, 32($sp)
#t15 , 12 ,  , =
li  $t0, 12
sw  $t0, 36($sp)
#t7 , t15 , t14 , *=
lw  $t0, 4($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t16 , '\0' ,  , =
li  $t0, 0
sw  $t0, 40($sp)
#t17 , 16 ,  , =
li  $t0, 16
sw  $t0, 44($sp)
#t7 , t17 , t16 , *=
lw  $t0, 4($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t18 , 0 ,  , =
li  $t0, 0
sw  $t0, 48($sp)
#t6 , t18 , t7 , *=
lw  $t0, 0($sp)
lw  $t1, 48($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t6 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t19 , nil ,  , =
li  $t0, 0
sw  $t0, 52($sp)
#return , t19 ,  , 
lw  $v0, 52($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t20 , 4 ,  , new
li  $a0, 4
li  $v0, 9
syscall 
sw  $v0, 16($sp)
#param , t20 ,  , 
lw  $t0, 16($sp)
sw  $t0, -4($sp)
#t21 , m0 ,  , call
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
#t22 , t21 ,  , =
lw  $t0, 20($sp)
sw  $t0, 24($sp)
#t23 , 44 ,  , =
li  $t0, 44
sw  $t0, 28($sp)
#t5 , t23 ,  , =
lw  $t0, 28($sp)
sw  $t0, 4($gp)
#putint , t5 ,  , 
lw  $a0, 4($gp)
li  $v0, 1
syscall 
exit:
li $v0, 10 
syscall