.text 
main:
addi  $sp, $sp, -96
#t0 , 16 ,  , new
li  $a0, 16
li  $v0, 9
syscall 
sw  $v0, 0($sp)
#t1 , 'r' ,  , =
li  $t0, 114
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
#t3 , 'e' ,  , =
li  $t0, 101
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
#t5 , 't' ,  , =
li  $t0, 116
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
#t7 , '\0' ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#t8 , 12 ,  , =
li  $t0, 12
sw  $t0, 32($sp)
#t0 , t8 , t7 , *=
lw  $t0, 0($sp)
lw  $t1, 32($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t9 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 36($sp)
#t10 , 0 ,  , =
li  $t0, 0
sw  $t0, 40($sp)
#t11 , t9 , t10 , +
lw  $t1, 36($sp)
lw  $t2, 40($sp)
add  $t0, $t1, $t2
sw  $t0, 44($sp)
#readcharmem , t11 ,  , 
li  $v0, 12
syscall 
lw  $t0, 44($sp)
sw  $v0, 0($t0)
#t12 , 4 ,  , =
li  $t0, 4
sw  $t0, 48($sp)
#t13 , t9 , t12 , +
lw  $t1, 36($sp)
lw  $t2, 48($sp)
add  $t0, $t1, $t2
sw  $t0, 52($sp)
#readcharmem , t13 ,  , 
li  $v0, 12
syscall 
lw  $t0, 52($sp)
sw  $v0, 0($t0)
#t14 , 8 ,  , =
li  $t0, 8
sw  $t0, 56($sp)
#t15 , t9 , t14 , +
lw  $t1, 36($sp)
lw  $t2, 56($sp)
add  $t0, $t1, $t2
sw  $t0, 60($sp)
#readcharmem , t15 ,  , 
li  $v0, 12
syscall 
lw  $t0, 60($sp)
sw  $v0, 0($t0)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 64($sp)
#t17 , t9 , t16 , =*
lw  $t1, 36($sp)
lw  $t2, 64($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 68($sp)
#putchar , t17 ,  , 
lw  $a0, 68($sp)
li  $v0, 11
syscall 
#t18 , 4 ,  , =
li  $t0, 4
sw  $t0, 72($sp)
#t19 , t9 , t18 , =*
lw  $t1, 36($sp)
lw  $t2, 72($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 76($sp)
#putchar , t19 ,  , 
lw  $a0, 76($sp)
li  $v0, 11
syscall 
#t20 , 8 ,  , =
li  $t0, 8
sw  $t0, 80($sp)
#t21 , t9 , t20 , =*
lw  $t1, 36($sp)
lw  $t2, 80($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 84($sp)
#putchar , t21 ,  , 
lw  $a0, 84($sp)
li  $v0, 11
syscall 
#t22 , 12 ,  , =
li  $t0, 12
sw  $t0, 88($sp)
#t23 , t9 , t22 , =*
lw  $t1, 36($sp)
lw  $t2, 88($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 92($sp)
#putchar , t23 ,  , 
lw  $a0, 92($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall