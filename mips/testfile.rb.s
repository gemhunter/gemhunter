.text 
main:
addi  $sp, $sp, -168
#t0 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 0($sp)
#t1 , 'h' ,  , =
li  $t0, 104
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
#t7 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 28($sp)
#t8 , 'r' ,  , =
li  $t0, 114
sw  $t0, 32($sp)
#t9 , 0 ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#t7 , t9 , t8 , *=
lw  $t0, 28($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t10 , 'o' ,  , =
li  $t0, 111
sw  $t0, 40($sp)
#t11 , 4 ,  , =
li  $t0, 4
sw  $t0, 44($sp)
#t7 , t11 , t10 , *=
lw  $t0, 28($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t12 , '\0' ,  , =
li  $t0, 0
sw  $t0, 48($sp)
#t13 , 8 ,  , =
li  $t0, 8
sw  $t0, 52($sp)
#t7 , t13 , t12 , *=
lw  $t0, 28($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t14 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 56($sp)
#t15 , 'p' ,  , =
li  $t0, 112
sw  $t0, 60($sp)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 64($sp)
#t14 , t16 , t15 , *=
lw  $t0, 56($sp)
lw  $t1, 64($sp)
lw  $t2, 60($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t17 , 'a' ,  , =
li  $t0, 97
sw  $t0, 68($sp)
#t18 , 4 ,  , =
li  $t0, 4
sw  $t0, 72($sp)
#t14 , t18 , t17 , *=
lw  $t0, 56($sp)
lw  $t1, 72($sp)
lw  $t2, 68($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t19 , '\0' ,  , =
li  $t0, 0
sw  $t0, 76($sp)
#t20 , 8 ,  , =
li  $t0, 8
sw  $t0, 80($sp)
#t14 , t20 , t19 , *=
lw  $t0, 56($sp)
lw  $t1, 80($sp)
lw  $t2, 76($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t21 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 84($sp)
#t22 , 0 ,  , =
li  $t0, 0
sw  $t0, 88($sp)
#t21 , t22 , t0 , *=
lw  $t0, 84($sp)
lw  $t1, 88($sp)
lw  $t2, 0($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t23 , 4 ,  , =
li  $t0, 4
sw  $t0, 92($sp)
#t21 , t23 , t7 , *=
lw  $t0, 84($sp)
lw  $t1, 92($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t24 , 8 ,  , =
li  $t0, 8
sw  $t0, 96($sp)
#t21 , t24 , t14 , *=
lw  $t0, 84($sp)
lw  $t1, 96($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t25 , t21 ,  , =
lw  $t0, 84($sp)
sw  $t0, 100($sp)
#t26 , 0 ,  , =
li  $t0, 0
sw  $t0, 104($sp)
#t27 , t26 ,  , =
lw  $t0, 104($sp)
sw  $t0, 108($sp)
#label , l0 ,  , 
l0: 
#t28 , 3 ,  , =
li  $t0, 3
sw  $t0, 112($sp)
#t29 , t27 , t28 , <
lw  $t1, 108($sp)
lw  $t2, 112($sp)
slt  $t0, $t1, $t2
sw  $t0, 116($sp)
#ifnot , t29 , goto , l2
lw  $t1, 116($sp)
beqz  $t1, l2
#label , l1 ,  , 
l1: 
#t30 , 4 ,  , =
li  $t0, 4
sw  $t0, 120($sp)
#t31 , t27 , t30 , *
lw  $t1, 108($sp)
lw  $t2, 120($sp)
mul  $t0, $t1, $t2
sw  $t0, 124($sp)
#t32 , t25 , t31 , =*
lw  $t1, 100($sp)
lw  $t2, 124($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#t33 , 0 ,  , =
li  $t0, 0
sw  $t0, 132($sp)
#t34 , t32 , t33 , =*
lw  $t1, 128($sp)
lw  $t2, 132($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 136($sp)
#putchar , t34 ,  , 
lw  $a0, 136($sp)
li  $v0, 11
syscall 
#t35 , 4 ,  , =
li  $t0, 4
sw  $t0, 140($sp)
#t36 , t32 , t35 , =*
lw  $t1, 128($sp)
lw  $t2, 140($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 144($sp)
#putchar , t36 ,  , 
lw  $a0, 144($sp)
li  $v0, 11
syscall 
#t37 , 8 ,  , =
li  $t0, 8
sw  $t0, 148($sp)
#t38 , t32 , t37 , =*
lw  $t1, 128($sp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putchar , t38 ,  , 
lw  $a0, 152($sp)
li  $v0, 11
syscall 
#t39 , '\n' ,  , =
li  $t0, 10
sw  $t0, 156($sp)
#putchar , t39 ,  , 
lw  $a0, 156($sp)
li  $v0, 11
syscall 
#t40 , 1 ,  , =
li  $t0, 1
sw  $t0, 160($sp)
#t41 , t27 , t40 , +
lw  $t1, 108($sp)
lw  $t2, 160($sp)
add  $t0, $t1, $t2
sw  $t0, 164($sp)
#t27 , t41 ,  , =
lw  $t0, 164($sp)
sw  $t0, 108($sp)
#goto , l0 ,  , 
b  l0
#label , l2 ,  , 
l2: 
exit:
li $v0, 10 
syscall