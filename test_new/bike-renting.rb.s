.text 
main:
addi  $sp, $sp, -284
#t0 , 0 ,  , =
li  $t0, 0
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -20
#t2 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t3 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t4 , t1 , t3 , +
lw  $t1, 0($gp)
lw  $t2, 4($sp)
add  $t0, $t1, $t2
sw  $t0, 8($sp)
#t1 , t4 ,  , =
lw  $t0, 8($sp)
sw  $t0, 0($gp)
#t5 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t5 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#return , t2 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t6 , nil ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#return , t6 ,  , 
lw  $v0, 16($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t7 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t8 , t7 ,  , =
lw  $t0, 4($sp)
sw  $t0, 4($gp)
#goto , l1 ,  , 
b  l1
#label , m1 ,  , 
m1: 
#methodStarts , m1 ,  , 
addi  $sp, $sp, -44
#t9 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t10 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#param , t10 ,  , 
lw  $t0, 4($sp)
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
sw  $v0, 8($sp)
#t12 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t13 , t8 , t12 , +
lw  $t1, 4($gp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#t8 , t13 ,  , =
lw  $t0, 16($sp)
sw  $t0, 4($gp)
#t14 , false ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t15 , 0 ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#t10 , t15 , t14 , *=
lw  $t0, 4($sp)
lw  $t1, 24($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#t17 , 4 ,  , =
li  $t0, 4
sw  $t0, 32($sp)
#t10 , t17 , t16 , *=
lw  $t0, 4($sp)
lw  $t1, 32($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t18 , 8 ,  , =
li  $t0, 8
sw  $t0, 36($sp)
#t10 , t18 , t9 , *=
lw  $t0, 4($sp)
lw  $t1, 36($sp)
lw  $t2, 0($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t10 ,  , 
lw  $v0, 4($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t19 , nil ,  , =
li  $t0, 0
sw  $t0, 40($sp)
#return , t19 ,  , 
lw  $v0, 40($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l1 ,  , 
l1: 
#t20 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t21 , t20 ,  , =
lw  $t0, 8($sp)
sw  $t0, 8($gp)
#goto , l2 ,  , 
b  l2
#label , m2 ,  , 
m2: 
#methodStarts , m2 ,  , 
addi  $sp, $sp, -24
#t22 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t23 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t24 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t23 , t24 , t22 , *=
lw  $t0, 4($sp)
lw  $t1, 8($sp)
lw  $t2, 0($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t25 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t26 , t21 , t25 , +
lw  $t1, 8($gp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#t21 , t26 ,  , =
lw  $t0, 16($sp)
sw  $t0, 8($gp)
#return , t23 ,  , 
lw  $v0, 4($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t27 , nil ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#return , t27 ,  , 
lw  $v0, 20($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l2 ,  , 
l2: 
#t28 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t29 , t28 ,  , =
lw  $t0, 12($sp)
sw  $t0, 12($gp)
#goto , l3 ,  , 
b  l3
#label , m3 ,  , 
m3: 
#methodStarts , m3 ,  , 
addi  $sp, $sp, -120
#t30 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t31 , 2 ,  , =
li  $t0, 2
sw  $t0, 4($sp)
#param , t30 ,  , 
lw  $t0, 0($sp)
sw  $t0, -4($sp)
#param , t31 ,  , 
lw  $t0, 4($sp)
sw  $t0, -8($sp)
#t32 , m2 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m2
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 8($sp)
#t33 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t34 , t29 , t33 , +
lw  $t1, 12($gp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#t29 , t34 ,  , =
lw  $t0, 16($sp)
sw  $t0, 12($gp)
#t35 , 0 ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t36 , 4 ,  , =
li  $t0, 4
sw  $t0, 24($sp)
#t30 , t36 , t35 , *=
lw  $t0, 0($sp)
lw  $t1, 24($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t37 , 0 ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#t38 , 8 ,  , =
li  $t0, 8
sw  $t0, 32($sp)
#t30 , t38 , t37 , *=
lw  $t0, 0($sp)
lw  $t1, 32($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t39 , false ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#t40 , 12 ,  , =
li  $t0, 12
sw  $t0, 40($sp)
#t30 , t40 , t39 , *=
lw  $t0, 0($sp)
lw  $t1, 40($sp)
lw  $t2, 36($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t41 , 32 ,  , new
li  $a0, 32
li  $v0, 9
syscall 
sw  $v0, 44($sp)
#t42 , 'd' ,  , =
li  $t0, 100
sw  $t0, 48($sp)
#t43 , 0 ,  , =
li  $t0, 0
sw  $t0, 52($sp)
#t41 , t43 , t42 , *=
lw  $t0, 44($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t44 , 'e' ,  , =
li  $t0, 101
sw  $t0, 56($sp)
#t45 , 4 ,  , =
li  $t0, 4
sw  $t0, 60($sp)
#t41 , t45 , t44 , *=
lw  $t0, 44($sp)
lw  $t1, 60($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t46 , 'f' ,  , =
li  $t0, 102
sw  $t0, 64($sp)
#t47 , 8 ,  , =
li  $t0, 8
sw  $t0, 68($sp)
#t41 , t47 , t46 , *=
lw  $t0, 44($sp)
lw  $t1, 68($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t48 , 'a' ,  , =
li  $t0, 97
sw  $t0, 72($sp)
#t49 , 12 ,  , =
li  $t0, 12
sw  $t0, 76($sp)
#t41 , t49 , t48 , *=
lw  $t0, 44($sp)
lw  $t1, 76($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t50 , 'u' ,  , =
li  $t0, 117
sw  $t0, 80($sp)
#t51 , 16 ,  , =
li  $t0, 16
sw  $t0, 84($sp)
#t41 , t51 , t50 , *=
lw  $t0, 44($sp)
lw  $t1, 84($sp)
lw  $t2, 80($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t52 , 'l' ,  , =
li  $t0, 108
sw  $t0, 88($sp)
#t53 , 20 ,  , =
li  $t0, 20
sw  $t0, 92($sp)
#t41 , t53 , t52 , *=
lw  $t0, 44($sp)
lw  $t1, 92($sp)
lw  $t2, 88($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t54 , 't' ,  , =
li  $t0, 116
sw  $t0, 96($sp)
#t55 , 24 ,  , =
li  $t0, 24
sw  $t0, 100($sp)
#t41 , t55 , t54 , *=
lw  $t0, 44($sp)
lw  $t1, 100($sp)
lw  $t2, 96($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t56 , '\0' ,  , =
li  $t0, 0
sw  $t0, 104($sp)
#t57 , 28 ,  , =
li  $t0, 28
sw  $t0, 108($sp)
#t41 , t57 , t56 , *=
lw  $t0, 44($sp)
lw  $t1, 108($sp)
lw  $t2, 104($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t58 , 16 ,  , =
li  $t0, 16
sw  $t0, 112($sp)
#t30 , t58 , t41 , *=
lw  $t0, 0($sp)
lw  $t1, 112($sp)
lw  $t2, 44($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t30 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t59 , nil ,  , =
li  $t0, 0
sw  $t0, 116($sp)
#return , t59 ,  , 
lw  $v0, 116($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l3 ,  , 
l3: 
#goto , l4 ,  , 
b  l4
#label , m4 ,  , 
m4: 
#methodStarts , m4 ,  , 
addi  $sp, $sp, -44
#t60 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t61 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t62 ,  ,  , getarg
lw  $t0, 16($fp)
sw  $t0, 8($sp)
#t63 , 4 ,  , =
li  $t0, 4
sw  $t0, 12($sp)
#t62 , t63 , t61 , *=
lw  $t0, 8($sp)
lw  $t1, 12($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t64 , true ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t65 , 12 ,  , =
li  $t0, 12
sw  $t0, 20($sp)
#t62 , t65 , t64 , *=
lw  $t0, 8($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t67 , 8 ,  , =
li  $t0, 8
sw  $t0, 24($sp)
#t66 , t60 , t67 , =*
lw  $t1, 0($sp)
lw  $t2, 24($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 28($sp)
#t68 , 16 ,  , =
li  $t0, 16
sw  $t0, 32($sp)
#t62 , t68 , t66 , *=
lw  $t0, 8($sp)
lw  $t1, 32($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t69 , nil ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#return , t69 ,  , 
lw  $v0, 36($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t70 , nil ,  , =
li  $t0, 0
sw  $t0, 40($sp)
#return , t70 ,  , 
lw  $v0, 40($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l4 ,  , 
l4: 
#goto , l5 ,  , 
b  l5
#label , m5 ,  , 
m5: 
#methodStarts , m5 ,  , 
addi  $sp, $sp, -108
#t71 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t72 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t74 , 4 ,  , =
li  $t0, 4
sw  $t0, 8($sp)
#t73 , t72 , t74 , =*
lw  $t1, 4($sp)
lw  $t2, 8($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 12($sp)
#t75 , t71 , t73 , <=
lw  $t1, 0($sp)
lw  $t2, 12($sp)
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel0
li  $t0, 0
b  mipsLabel1
mipsLabel0: 
li  $t0, 1
mipsLabel1: 
sw  $t0, 16($sp)
#if , t75 , goto , l6
lw  $t1, 16($sp)
bnez  $t1, l6
#goto , l7 ,  , 
b  l7
#label , l6 ,  , 
l6: 
#t76 , false ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#return , t76 ,  , 
lw  $v0, 20($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#goto , l8 ,  , 
b  l8
#label , l7 ,  , 
l7: 
#t77 , 8 ,  , =
li  $t0, 8
sw  $t0, 24($sp)
#t72 , t77 , t71 , *=
lw  $t0, 4($sp)
lw  $t1, 24($sp)
lw  $t2, 0($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t78 , 32 ,  , new
li  $a0, 32
li  $v0, 9
syscall 
sw  $v0, 28($sp)
#t79 , 'd' ,  , =
li  $t0, 100
sw  $t0, 32($sp)
#t80 , 0 ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#t78 , t80 , t79 , *=
lw  $t0, 28($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t81 , 'e' ,  , =
li  $t0, 101
sw  $t0, 40($sp)
#t82 , 4 ,  , =
li  $t0, 4
sw  $t0, 44($sp)
#t78 , t82 , t81 , *=
lw  $t0, 28($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t83 , 'f' ,  , =
li  $t0, 102
sw  $t0, 48($sp)
#t84 , 8 ,  , =
li  $t0, 8
sw  $t0, 52($sp)
#t78 , t84 , t83 , *=
lw  $t0, 28($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t85 , 'a' ,  , =
li  $t0, 97
sw  $t0, 56($sp)
#t86 , 12 ,  , =
li  $t0, 12
sw  $t0, 60($sp)
#t78 , t86 , t85 , *=
lw  $t0, 28($sp)
lw  $t1, 60($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t87 , 'u' ,  , =
li  $t0, 117
sw  $t0, 64($sp)
#t88 , 16 ,  , =
li  $t0, 16
sw  $t0, 68($sp)
#t78 , t88 , t87 , *=
lw  $t0, 28($sp)
lw  $t1, 68($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t89 , 'l' ,  , =
li  $t0, 108
sw  $t0, 72($sp)
#t90 , 20 ,  , =
li  $t0, 20
sw  $t0, 76($sp)
#t78 , t90 , t89 , *=
lw  $t0, 28($sp)
lw  $t1, 76($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t91 , 't' ,  , =
li  $t0, 116
sw  $t0, 80($sp)
#t92 , 24 ,  , =
li  $t0, 24
sw  $t0, 84($sp)
#t78 , t92 , t91 , *=
lw  $t0, 28($sp)
lw  $t1, 84($sp)
lw  $t2, 80($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t93 , '\0' ,  , =
li  $t0, 0
sw  $t0, 88($sp)
#t94 , 28 ,  , =
li  $t0, 28
sw  $t0, 92($sp)
#t78 , t94 , t93 , *=
lw  $t0, 28($sp)
lw  $t1, 92($sp)
lw  $t2, 88($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t95 , 16 ,  , =
li  $t0, 16
sw  $t0, 96($sp)
#t72 , t95 , t78 , *=
lw  $t0, 4($sp)
lw  $t1, 96($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t96 , true ,  , =
li  $t0, 1
sw  $t0, 100($sp)
#return , t96 ,  , 
lw  $v0, 100($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#label , l8 ,  , 
l8: 
#t97 , nil ,  , =
li  $t0, 0
sw  $t0, 104($sp)
#return , t97 ,  , 
lw  $v0, 104($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l5 ,  , 
l5: 
#goto , l9 ,  , 
b  l9
#label , m6 ,  , 
m6: 
#methodStarts , m6 ,  , 
addi  $sp, $sp, -16
#t98 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t100 , 16 ,  , =
li  $t0, 16
sw  $t0, 4($sp)
#t99 , t98 , t100 , =*
lw  $t1, 0($sp)
lw  $t2, 4($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 8($sp)
#return , t99 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t101 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t101 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l9 ,  , 
l9: 
#t102 , 32 ,  , new
li  $a0, 32
li  $v0, 9
syscall 
sw  $v0, 16($sp)
#t103 , 'd' ,  , =
li  $t0, 100
sw  $t0, 20($sp)
#t104 , 0 ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#t102 , t104 , t103 , *=
lw  $t0, 16($sp)
lw  $t1, 24($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t105 , 'h' ,  , =
li  $t0, 104
sw  $t0, 28($sp)
#t106 , 4 ,  , =
li  $t0, 4
sw  $t0, 32($sp)
#t102 , t106 , t105 , *=
lw  $t0, 16($sp)
lw  $t1, 32($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t107 , 'r' ,  , =
li  $t0, 114
sw  $t0, 36($sp)
#t108 , 8 ,  , =
li  $t0, 8
sw  $t0, 40($sp)
#t102 , t108 , t107 , *=
lw  $t0, 16($sp)
lw  $t1, 40($sp)
lw  $t2, 36($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t109 , 'u' ,  , =
li  $t0, 117
sw  $t0, 44($sp)
#t110 , 12 ,  , =
li  $t0, 12
sw  $t0, 48($sp)
#t102 , t110 , t109 , *=
lw  $t0, 16($sp)
lw  $t1, 48($sp)
lw  $t2, 44($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t111 , 'v' ,  , =
li  $t0, 118
sw  $t0, 52($sp)
#t112 , 16 ,  , =
li  $t0, 16
sw  $t0, 56($sp)
#t102 , t112 , t111 , *=
lw  $t0, 16($sp)
lw  $t1, 56($sp)
lw  $t2, 52($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t113 , ' ' ,  , =
li  $t0, 32
sw  $t0, 60($sp)
#t114 , 20 ,  , =
li  $t0, 20
sw  $t0, 64($sp)
#t102 , t114 , t113 , *=
lw  $t0, 16($sp)
lw  $t1, 64($sp)
lw  $t2, 60($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t115 , 's' ,  , =
li  $t0, 115
sw  $t0, 68($sp)
#t116 , 24 ,  , =
li  $t0, 24
sw  $t0, 72($sp)
#t102 , t116 , t115 , *=
lw  $t0, 16($sp)
lw  $t1, 72($sp)
lw  $t2, 68($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t117 , '\0' ,  , =
li  $t0, 0
sw  $t0, 76($sp)
#t118 , 28 ,  , =
li  $t0, 28
sw  $t0, 80($sp)
#t102 , t118 , t117 , *=
lw  $t0, 16($sp)
lw  $t1, 80($sp)
lw  $t2, 76($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t119 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 84($sp)
#param , t119 ,  , 
lw  $t0, 84($sp)
sw  $t0, -4($sp)
#param , t102 ,  , 
lw  $t0, 16($sp)
sw  $t0, -8($sp)
#t120 , m1 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m1
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 88($sp)
#t121 , t120 ,  , =
lw  $t0, 88($sp)
sw  $t0, 92($sp)
#t122 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 96($sp)
#param , t122 ,  , 
lw  $t0, 96($sp)
sw  $t0, -4($sp)
#t123 , m3 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m3
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 100($sp)
#t124 , t123 ,  , =
lw  $t0, 100($sp)
sw  $t0, 104($sp)
#t125 , 1 ,  , =
li  $t0, 1
sw  $t0, 108($sp)
#param , t124 ,  , 
lw  $t0, 104($sp)
sw  $t0, -4($sp)
#param , t125 ,  , 
lw  $t0, 108($sp)
sw  $t0, -8($sp)
#param , t121 ,  , 
lw  $t0, 92($sp)
sw  $t0, -12($sp)
#t126 , m4 ,  , call
addi  $sp, $sp, -12
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m4
lw  $ra, 0($sp)
addi  $sp, $sp, 20
sw  $v0, 112($sp)
#param , t124 ,  , 
lw  $t0, 104($sp)
sw  $t0, -4($sp)
#t127 , m6 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m6
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 116($sp)
#t128 , 0 ,  , =
li  $t0, 0
sw  $t0, 120($sp)
#t129 , t127 , t128 , =*
lw  $t1, 116($sp)
lw  $t2, 120($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 124($sp)
#putchar , t129 ,  , 
lw  $a0, 124($sp)
li  $v0, 11
syscall 
#t130 , 4 ,  , =
li  $t0, 4
sw  $t0, 128($sp)
#t131 , t127 , t130 , =*
lw  $t1, 116($sp)
lw  $t2, 128($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 132($sp)
#putchar , t131 ,  , 
lw  $a0, 132($sp)
li  $v0, 11
syscall 
#t132 , 8 ,  , =
li  $t0, 8
sw  $t0, 136($sp)
#t133 , t127 , t132 , =*
lw  $t1, 116($sp)
lw  $t2, 136($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 140($sp)
#putchar , t133 ,  , 
lw  $a0, 140($sp)
li  $v0, 11
syscall 
#t134 , 12 ,  , =
li  $t0, 12
sw  $t0, 144($sp)
#t135 , t127 , t134 , =*
lw  $t1, 116($sp)
lw  $t2, 144($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 148($sp)
#putchar , t135 ,  , 
lw  $a0, 148($sp)
li  $v0, 11
syscall 
#t136 , 16 ,  , =
li  $t0, 16
sw  $t0, 152($sp)
#t137 , t127 , t136 , =*
lw  $t1, 116($sp)
lw  $t2, 152($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 156($sp)
#putchar , t137 ,  , 
lw  $a0, 156($sp)
li  $v0, 11
syscall 
#t138 , 20 ,  , =
li  $t0, 20
sw  $t0, 160($sp)
#t139 , t127 , t138 , =*
lw  $t1, 116($sp)
lw  $t2, 160($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 164($sp)
#putchar , t139 ,  , 
lw  $a0, 164($sp)
li  $v0, 11
syscall 
#t140 , 24 ,  , =
li  $t0, 24
sw  $t0, 168($sp)
#t141 , t127 , t140 , =*
lw  $t1, 116($sp)
lw  $t2, 168($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 172($sp)
#putchar , t141 ,  , 
lw  $a0, 172($sp)
li  $v0, 11
syscall 
#t142 , 28 ,  , =
li  $t0, 28
sw  $t0, 176($sp)
#t143 , t127 , t142 , =*
lw  $t1, 116($sp)
lw  $t2, 176($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 180($sp)
#putchar , t143 ,  , 
lw  $a0, 180($sp)
li  $v0, 11
syscall 
#t144 , '\n' ,  , =
li  $t0, 10
sw  $t0, 184($sp)
#putchar , t144 ,  , 
lw  $a0, 184($sp)
li  $v0, 11
syscall 
#t145 , 2 ,  , =
li  $t0, 2
sw  $t0, 188($sp)
#param , t124 ,  , 
lw  $t0, 104($sp)
sw  $t0, -4($sp)
#param , t145 ,  , 
lw  $t0, 188($sp)
sw  $t0, -8($sp)
#t146 , m5 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m5
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 192($sp)
#param , t124 ,  , 
lw  $t0, 104($sp)
sw  $t0, -4($sp)
#t147 , m6 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m6
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 196($sp)
#t148 , 0 ,  , =
li  $t0, 0
sw  $t0, 200($sp)
#t149 , t147 , t148 , =*
lw  $t1, 196($sp)
lw  $t2, 200($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 204($sp)
#putchar , t149 ,  , 
lw  $a0, 204($sp)
li  $v0, 11
syscall 
#t150 , 4 ,  , =
li  $t0, 4
sw  $t0, 208($sp)
#t151 , t147 , t150 , =*
lw  $t1, 196($sp)
lw  $t2, 208($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 212($sp)
#putchar , t151 ,  , 
lw  $a0, 212($sp)
li  $v0, 11
syscall 
#t152 , 8 ,  , =
li  $t0, 8
sw  $t0, 216($sp)
#t153 , t147 , t152 , =*
lw  $t1, 196($sp)
lw  $t2, 216($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 220($sp)
#putchar , t153 ,  , 
lw  $a0, 220($sp)
li  $v0, 11
syscall 
#t154 , 12 ,  , =
li  $t0, 12
sw  $t0, 224($sp)
#t155 , t147 , t154 , =*
lw  $t1, 196($sp)
lw  $t2, 224($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 228($sp)
#putchar , t155 ,  , 
lw  $a0, 228($sp)
li  $v0, 11
syscall 
#t156 , 16 ,  , =
li  $t0, 16
sw  $t0, 232($sp)
#t157 , t147 , t156 , =*
lw  $t1, 196($sp)
lw  $t2, 232($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 236($sp)
#putchar , t157 ,  , 
lw  $a0, 236($sp)
li  $v0, 11
syscall 
#t158 , 20 ,  , =
li  $t0, 20
sw  $t0, 240($sp)
#t159 , t147 , t158 , =*
lw  $t1, 196($sp)
lw  $t2, 240($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 244($sp)
#putchar , t159 ,  , 
lw  $a0, 244($sp)
li  $v0, 11
syscall 
#t160 , 24 ,  , =
li  $t0, 24
sw  $t0, 248($sp)
#t161 , t147 , t160 , =*
lw  $t1, 196($sp)
lw  $t2, 248($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 252($sp)
#putchar , t161 ,  , 
lw  $a0, 252($sp)
li  $v0, 11
syscall 
#t162 , 28 ,  , =
li  $t0, 28
sw  $t0, 256($sp)
#t163 , t147 , t162 , =*
lw  $t1, 196($sp)
lw  $t2, 256($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 260($sp)
#putchar , t163 ,  , 
lw  $a0, 260($sp)
li  $v0, 11
syscall 
#t164 , '\n' ,  , =
li  $t0, 10
sw  $t0, 264($sp)
#putchar , t164 ,  , 
lw  $a0, 264($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall