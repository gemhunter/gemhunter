.text 
main:
addi  $sp, $sp, -336
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -48
#t0 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t1 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t2 , t1 ,  , =
lw  $t0, 4($sp)
sw  $t0, 8($sp)
#t3 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#label , l1 ,  , 
l1: 
#t5 , 3 ,  , =
li  $t0, 3
sw  $t0, 16($sp)
#t6 , t3 , t5 , >=
lw  $t1, 12($sp)
lw  $t2, 16($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel0
li  $t0, 0
b  mipsLabel1
mipsLabel0: 
li  $t0, 1
mipsLabel1: 
sw  $t0, 20($sp)
#if , t6 , goto , l3
lw  $t1, 20($sp)
bnez  $t1, l3
#t7 , 4 ,  , =
li  $t0, 4
sw  $t0, 24($sp)
#t8 , t3 , t7 , *
lw  $t1, 12($sp)
lw  $t2, 24($sp)
mul  $t0, $t1, $t2
sw  $t0, 28($sp)
#t4 , t0 , t8 , =*
lw  $t1, 0($sp)
lw  $t2, 28($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 32($sp)
#t9 , 1 ,  , =
li  $t0, 1
sw  $t0, 36($sp)
#t3 , t3 , t9 , +
lw  $t1, 12($sp)
lw  $t2, 36($sp)
add  $t0, $t1, $t2
sw  $t0, 12($sp)
#label , l2 ,  , 
l2: 
#t10 , t2 , t4 , *
lw  $t1, 8($sp)
lw  $t2, 32($sp)
mul  $t0, $t1, $t2
sw  $t0, 40($sp)
#t2 , t10 ,  , =
lw  $t0, 40($sp)
sw  $t0, 8($sp)
#goto , l1 ,  , 
b  l1
#label , l3 ,  , 
l3: 
#return , t2 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t11 , nil ,  , =
li  $t0, 0
sw  $t0, 44($sp)
#return , t11 ,  , 
lw  $v0, 44($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#t12 , 4 ,  , =
li  $t0, 4
sw  $t0, 0($sp)
#t13 , t12 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#t14 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t15 , t14 ,  , =
lw  $t0, 4($sp)
sw  $t0, 8($sp)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t17 , 1 ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t18 , 7 ,  , =
li  $t0, 7
sw  $t0, 20($sp)
#t19 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 24($sp)
#t20 , 0 ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#t19 , t20 , t17 , *=
lw  $t0, 24($sp)
lw  $t1, 28($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t21 , 4 ,  , =
li  $t0, 4
sw  $t0, 32($sp)
#t19 , t21 , t18 , *=
lw  $t0, 24($sp)
lw  $t1, 32($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l4 ,  , 
l4: 
#t25 , 0 ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#t26 , 4 ,  , =
li  $t0, 4
sw  $t0, 40($sp)
#t23 , t19 , t25 , =*
lw  $t1, 24($sp)
lw  $t2, 36($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 44($sp)
#t24 , t19 , t26 , =*
lw  $t1, 24($sp)
lw  $t2, 40($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 48($sp)
#t22 , t23 , t16 , +
lw  $t1, 44($sp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 52($sp)
#t27 , t22 , t24 , >
lw  $t1, 52($sp)
lw  $t2, 48($sp)
slt  $t0, $t2, $t1
sw  $t0, 56($sp)
#if , t27 , goto , l6
lw  $t1, 56($sp)
bnez  $t1, l6
#t28 , 1 ,  , =
li  $t0, 1
sw  $t0, 60($sp)
#t16 , t16 , t28 , +
lw  $t1, 12($sp)
lw  $t2, 60($sp)
add  $t0, $t1, $t2
sw  $t0, 12($sp)
#label , l5 ,  , 
l5: 
#t29 , 5 ,  , =
li  $t0, 5
sw  $t0, 64($sp)
#t30 , t22 , t29 , ==
lw  $t1, 52($sp)
lw  $t2, 64($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel2
li  $t0, 0
b  mipsLabel3
mipsLabel2: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel4
li  $t0, 0
b  mipsLabel3
mipsLabel4: 
li  $t0, 1
mipsLabel3: 
sw  $t0, 68($sp)
#if , t30 , goto , l7
lw  $t1, 68($sp)
bnez  $t1, l7
#goto , l8 ,  , 
b  l8
#label , l7 ,  , 
l7: 
#goto , l4 ,  , 
b  l4
#goto , l9 ,  , 
b  l9
#label , l8 ,  , 
l8: 
#label , l9 ,  , 
l9: 
#t31 , t15 , t22 , +
lw  $t1, 8($sp)
lw  $t2, 52($sp)
add  $t0, $t1, $t2
sw  $t0, 72($sp)
#t15 , t31 ,  , =
lw  $t0, 72($sp)
sw  $t0, 8($sp)
#goto , l4 ,  , 
b  l4
#label , l6 ,  , 
l6: 
#putint , t15 ,  , 
lw  $a0, 8($sp)
li  $v0, 1
syscall 
#t32 , '\n' ,  , =
li  $t0, 10
sw  $t0, 76($sp)
#putchar , t32 ,  , 
lw  $a0, 76($sp)
li  $v0, 11
syscall 
#t33 , 1 ,  , =
li  $t0, 1
sw  $t0, 80($sp)
#t34 , t33 ,  , =
lw  $t0, 80($sp)
sw  $t0, 4($gp)
#goto , l10 ,  , 
b  l10
#label , m1 ,  , 
m1: 
#methodStarts , m1 ,  , 
addi  $sp, $sp, -104
#t35 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t36 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t37 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t35 , t37 , t36 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t38 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t39 , 2 ,  , =
li  $t0, 2
sw  $t0, 16($sp)
#t40 , t39 ,  , -
lw  $t1, 16($sp)
sub  $t0, $zero, $t1
sw  $t0, 20($sp)
#t41 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 24($sp)
#t42 , 0 ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#t41 , t42 , t38 , *=
lw  $t0, 24($sp)
lw  $t1, 28($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t43 , 4 ,  , =
li  $t0, 4
sw  $t0, 32($sp)
#t41 , t43 , t40 , *=
lw  $t0, 24($sp)
lw  $t1, 32($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t44 , 3 ,  , =
li  $t0, 3
sw  $t0, 36($sp)
#t45 , t44 ,  , -
lw  $t1, 36($sp)
sub  $t0, $zero, $t1
sw  $t0, 40($sp)
#t46 , 4 ,  , =
li  $t0, 4
sw  $t0, 44($sp)
#t47 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 48($sp)
#t48 , 0 ,  , =
li  $t0, 0
sw  $t0, 52($sp)
#t47 , t48 , t45 , *=
lw  $t0, 48($sp)
lw  $t1, 52($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t49 , 4 ,  , =
li  $t0, 4
sw  $t0, 56($sp)
#t47 , t49 , t46 , *=
lw  $t0, 48($sp)
lw  $t1, 56($sp)
lw  $t2, 44($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t50 , 5 ,  , =
li  $t0, 5
sw  $t0, 60($sp)
#t51 , 6 ,  , =
li  $t0, 6
sw  $t0, 64($sp)
#t52 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 68($sp)
#t53 , 0 ,  , =
li  $t0, 0
sw  $t0, 72($sp)
#t52 , t53 , t50 , *=
lw  $t0, 68($sp)
lw  $t1, 72($sp)
lw  $t2, 60($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t54 , 4 ,  , =
li  $t0, 4
sw  $t0, 76($sp)
#t52 , t54 , t51 , *=
lw  $t0, 68($sp)
lw  $t1, 76($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t55 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 80($sp)
#t56 , 0 ,  , =
li  $t0, 0
sw  $t0, 84($sp)
#t55 , t56 , t41 , *=
lw  $t0, 80($sp)
lw  $t1, 84($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t57 , 4 ,  , =
li  $t0, 4
sw  $t0, 88($sp)
#t55 , t57 , t47 , *=
lw  $t0, 80($sp)
lw  $t1, 88($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t58 , 8 ,  , =
li  $t0, 8
sw  $t0, 92($sp)
#t55 , t58 , t52 , *=
lw  $t0, 80($sp)
lw  $t1, 92($sp)
lw  $t2, 68($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t59 , 4 ,  , =
li  $t0, 4
sw  $t0, 96($sp)
#t35 , t59 , t55 , *=
lw  $t0, 0($sp)
lw  $t1, 96($sp)
lw  $t2, 80($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t35 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t60 , nil ,  , =
li  $t0, 0
sw  $t0, 100($sp)
#return , t60 ,  , 
lw  $v0, 100($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l10 ,  , 
l10: 
#goto , l11 ,  , 
b  l11
#label , m2 ,  , 
m2: 
#methodStarts , m2 ,  , 
addi  $sp, $sp, -32
#t61 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t62 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t64 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t63 , t62 , t64 , =*
lw  $t1, 4($sp)
lw  $t2, 8($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 12($sp)
#t65 , t63 , t61 , +
lw  $t1, 12($sp)
lw  $t2, 0($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#t66 , 0 ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t62 , t66 , t65 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#goto , l12 ,  , 
b  l12
#label , m3 ,  , 
m3: 
#methodStarts , m3 ,  , 
addi  $sp, $sp, -12
#t67 , 1000 ,  , =
li  $t0, 1000
sw  $t0, 0($sp)
#putint , t67 ,  , 
lw  $a0, 0($sp)
li  $v0, 1
syscall 
#t68 , '\n' ,  , =
li  $t0, 10
sw  $t0, 4($sp)
#putchar , t68 ,  , 
lw  $a0, 4($sp)
li  $v0, 11
syscall 
#t69 , nil ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#return , t69 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l12 ,  , 
l12: 
#t70 , m3 ,  , call
addi  $sp, $sp, 0
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m3
lw  $ra, 0($sp)
addi  $sp, $sp, 8
sw  $v0, 24($sp)
#t71 , nil ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#return , t71 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l11 ,  , 
l11: 
#goto , l13 ,  , 
b  l13
#label , m4 ,  , 
m4: 
#methodStarts , m4 ,  , 
addi  $sp, $sp, -56
#t72 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t73 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t74 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t75 , t74 ,  , =
lw  $t0, 8($sp)
sw  $t0, 12($sp)
#t76 , 0 ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#label , l14 ,  , 
l14: 
#t78 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t79 , t76 , t78 , >=
lw  $t1, 16($sp)
lw  $t2, 20($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel5
li  $t0, 0
b  mipsLabel6
mipsLabel5: 
li  $t0, 1
mipsLabel6: 
sw  $t0, 24($sp)
#if , t79 , goto , l16
lw  $t1, 24($sp)
bnez  $t1, l16
#t80 , 4 ,  , =
li  $t0, 4
sw  $t0, 28($sp)
#t81 , t76 , t80 , *
lw  $t1, 16($sp)
lw  $t2, 28($sp)
mul  $t0, $t1, $t2
sw  $t0, 32($sp)
#t77 , t72 , t81 , =*
lw  $t1, 0($sp)
lw  $t2, 32($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 36($sp)
#t82 , 1 ,  , =
li  $t0, 1
sw  $t0, 40($sp)
#t76 , t76 , t82 , +
lw  $t1, 16($sp)
lw  $t2, 40($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#label , l15 ,  , 
l15: 
#param , t77 ,  , 
lw  $t0, 36($sp)
sw  $t0, -4($sp)
#t83 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 44($sp)
#t84 , t75 , t83 , +
lw  $t1, 12($sp)
lw  $t2, 44($sp)
add  $t0, $t1, $t2
sw  $t0, 48($sp)
#t75 , t84 ,  , =
lw  $t0, 48($sp)
sw  $t0, 12($sp)
#goto , l14 ,  , 
b  l14
#label , l16 ,  , 
l16: 
#return , t75 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t85 , nil ,  , =
li  $t0, 0
sw  $t0, 52($sp)
#return , t85 ,  , 
lw  $v0, 52($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l13 ,  , 
l13: 
#goto , l17 ,  , 
b  l17
#label , m5 ,  , 
m5: 
#methodStarts , m5 ,  , 
addi  $sp, $sp, -144
#t86 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t87 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t88 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t89 , t88 ,  , =
lw  $t0, 8($sp)
sw  $t0, 12($sp)
#t90 , 0 ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#t91 , t90 ,  , =
lw  $t0, 16($sp)
sw  $t0, 20($sp)
#label , l18 ,  , 
l18: 
#t92 , 4 ,  , =
li  $t0, 4
sw  $t0, 24($sp)
#t93 , t91 , t92 , <
lw  $t1, 20($sp)
lw  $t2, 24($sp)
slt  $t0, $t1, $t2
sw  $t0, 28($sp)
#ifnot , t93 , goto , l20
lw  $t1, 28($sp)
beqz  $t1, l20
#label , l19 ,  , 
l19: 
#t94 , 0 ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#t95 , t94 ,  , =
lw  $t0, 32($sp)
sw  $t0, 36($sp)
#label , l21 ,  , 
l21: 
#t96 , 4 ,  , =
li  $t0, 4
sw  $t0, 40($sp)
#t97 , t91 , t96 , *
lw  $t1, 20($sp)
lw  $t2, 40($sp)
mul  $t0, $t1, $t2
sw  $t0, 44($sp)
#t98 , t86 , t97 , =*
lw  $t1, 0($sp)
lw  $t2, 44($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 48($sp)
#t99 , 3 ,  , =
li  $t0, 3
sw  $t0, 52($sp)
#t100 , t95 , t99 , <
lw  $t1, 36($sp)
lw  $t2, 52($sp)
slt  $t0, $t1, $t2
sw  $t0, 56($sp)
#ifnot , t100 , goto , l23
lw  $t1, 56($sp)
beqz  $t1, l23
#label , l22 ,  , 
l22: 
#t101 , 4 ,  , =
li  $t0, 4
sw  $t0, 60($sp)
#t102 , t91 , t101 , *
lw  $t1, 20($sp)
lw  $t2, 60($sp)
mul  $t0, $t1, $t2
sw  $t0, 64($sp)
#t103 , t86 , t102 , =*
lw  $t1, 0($sp)
lw  $t2, 64($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 68($sp)
#t104 , 4 ,  , =
li  $t0, 4
sw  $t0, 72($sp)
#t105 , t95 , t104 , *
lw  $t1, 36($sp)
lw  $t2, 72($sp)
mul  $t0, $t1, $t2
sw  $t0, 76($sp)
#t106 , t103 , t105 , =*
lw  $t1, 68($sp)
lw  $t2, 76($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 80($sp)
#t107 , t89 , t106 , +
lw  $t1, 12($sp)
lw  $t2, 80($sp)
add  $t0, $t1, $t2
sw  $t0, 84($sp)
#t89 , t107 ,  , =
lw  $t0, 84($sp)
sw  $t0, 12($sp)
#t108 , 1 ,  , =
li  $t0, 1
sw  $t0, 88($sp)
#t109 , t95 , t108 , +
lw  $t1, 36($sp)
lw  $t2, 88($sp)
add  $t0, $t1, $t2
sw  $t0, 92($sp)
#t95 , t109 ,  , =
lw  $t0, 92($sp)
sw  $t0, 36($sp)
#goto , l21 ,  , 
b  l21
#label , l23 ,  , 
l23: 
#t110 , 3 ,  , =
li  $t0, 3
sw  $t0, 96($sp)
#t111 , t89 , t110 , ==
lw  $t1, 12($sp)
lw  $t2, 96($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel7
li  $t0, 0
b  mipsLabel8
mipsLabel7: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel9
li  $t0, 0
b  mipsLabel8
mipsLabel9: 
li  $t0, 1
mipsLabel8: 
sw  $t0, 100($sp)
#if , t111 , goto , l24
lw  $t1, 100($sp)
bnez  $t1, l24
#goto , l25 ,  , 
b  l25
#label , l24 ,  , 
l24: 
#putint , t91 ,  , 
lw  $a0, 20($sp)
li  $v0, 1
syscall 
#t112 , '\n' ,  , =
li  $t0, 10
sw  $t0, 104($sp)
#putchar , t112 ,  , 
lw  $a0, 104($sp)
li  $v0, 11
syscall 
#goto , l18 ,  , 
b  l18
#goto , l26 ,  , 
b  l26
#label , l25 ,  , 
l25: 
#label , l26 ,  , 
l26: 
#t113 , 6 ,  , =
li  $t0, 6
sw  $t0, 108($sp)
#t114 , t89 , t113 , ==
lw  $t1, 12($sp)
lw  $t2, 108($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel10
li  $t0, 0
b  mipsLabel11
mipsLabel10: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel12
li  $t0, 0
b  mipsLabel11
mipsLabel12: 
li  $t0, 1
mipsLabel11: 
sw  $t0, 112($sp)
#if , t114 , goto , l27
lw  $t1, 112($sp)
bnez  $t1, l27
#goto , l28 ,  , 
b  l28
#label , l27 ,  , 
l27: 
#putint , t91 ,  , 
lw  $a0, 20($sp)
li  $v0, 1
syscall 
#t115 , '\n' ,  , =
li  $t0, 10
sw  $t0, 116($sp)
#putchar , t115 ,  , 
lw  $a0, 116($sp)
li  $v0, 11
syscall 
#goto , l19 ,  , 
b  l19
#goto , l29 ,  , 
b  l29
#label , l28 ,  , 
l28: 
#label , l29 ,  , 
l29: 
#t116 , 9 ,  , =
li  $t0, 9
sw  $t0, 120($sp)
#t117 , t89 , t116 , ==
lw  $t1, 12($sp)
lw  $t2, 120($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel13
li  $t0, 0
b  mipsLabel14
mipsLabel13: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel15
li  $t0, 0
b  mipsLabel14
mipsLabel15: 
li  $t0, 1
mipsLabel14: 
sw  $t0, 124($sp)
#if , t117 , goto , l30
lw  $t1, 124($sp)
bnez  $t1, l30
#goto , l31 ,  , 
b  l31
#label , l30 ,  , 
l30: 
#putint , t91 ,  , 
lw  $a0, 20($sp)
li  $v0, 1
syscall 
#t118 , '\n' ,  , =
li  $t0, 10
sw  $t0, 128($sp)
#putchar , t118 ,  , 
lw  $a0, 128($sp)
li  $v0, 11
syscall 
#goto , l20 ,  , 
b  l20
#goto , l32 ,  , 
b  l32
#label , l31 ,  , 
l31: 
#label , l32 ,  , 
l32: 
#t119 , 1 ,  , =
li  $t0, 1
sw  $t0, 132($sp)
#t120 , t91 , t119 , +
lw  $t1, 20($sp)
lw  $t2, 132($sp)
add  $t0, $t1, $t2
sw  $t0, 136($sp)
#t91 , t120 ,  , =
lw  $t0, 136($sp)
sw  $t0, 20($sp)
#goto , l18 ,  , 
b  l18
#label , l20 ,  , 
l20: 
#return , t89 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t121 , nil ,  , =
li  $t0, 0
sw  $t0, 140($sp)
#return , t121 ,  , 
lw  $v0, 140($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l17 ,  , 
l17: 
#goto , l33 ,  , 
b  l33
#label , m6 ,  , 
m6: 
#methodStarts , m6 ,  , 
addi  $sp, $sp, -16
#t122 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t124 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t123 , t122 , t124 , =*
lw  $t1, 0($sp)
lw  $t2, 4($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 8($sp)
#return , t123 ,  , 
lw  $v0, 8($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t125 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t125 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l33 ,  , 
l33: 
#goto , l34 ,  , 
b  l34
#label , m7 ,  , 
m7: 
#methodStarts , m7 ,  , 
addi  $sp, $sp, -20
#t126 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t127 , 20 ,  , =
li  $t0, 20
sw  $t0, 4($sp)
#t128 , 8 ,  , =
li  $t0, 8
sw  $t0, 8($sp)
#t126 , t128 , t127 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#param , t126 ,  , 
lw  $t0, 0($sp)
sw  $t0, -4($sp)
#t129 , m1 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m1
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 12($sp)
#return , t126 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t130 , nil ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#return , t130 ,  , 
lw  $v0, 16($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l34 ,  , 
l34: 
#goto , l35 ,  , 
b  l35
#label , m8 ,  , 
m8: 
#methodStarts , m8 ,  , 
addi  $sp, $sp, -16
#t131 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t132 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#param , t132 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#param , t131 ,  , 
lw  $t0, 0($sp)
sw  $t0, -8($sp)
#t133 , m2 ,  , call
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
#t134 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t134 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l35 ,  , 
l35: 
#goto , l36 ,  , 
b  l36
#label , m9 ,  , 
m9: 
#methodStarts , m9 ,  , 
addi  $sp, $sp, -40
#t135 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t136 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t138 , 8 ,  , =
li  $t0, 8
sw  $t0, 8($sp)
#t137 , t136 , t138 , =*
lw  $t1, 4($sp)
lw  $t2, 8($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 12($sp)
#t139 , t137 , t135 , +
lw  $t1, 12($sp)
lw  $t2, 0($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#t140 , 8 ,  , =
li  $t0, 8
sw  $t0, 20($sp)
#t136 , t140 , t139 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t142 , 8 ,  , =
li  $t0, 8
sw  $t0, 24($sp)
#t141 , t136 , t142 , =*
lw  $t1, 4($sp)
lw  $t2, 24($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 28($sp)
#putint , t141 ,  , 
lw  $a0, 28($sp)
li  $v0, 1
syscall 
#t143 , '\n' ,  , =
li  $t0, 10
sw  $t0, 32($sp)
#putchar , t143 ,  , 
lw  $a0, 32($sp)
li  $v0, 11
syscall 
#t144 , nil ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#return , t144 ,  , 
lw  $v0, 36($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l36 ,  , 
l36: 
#goto , l37 ,  , 
b  l37
#label , m10 ,  , 
m10: 
#methodStarts , m10 ,  , 
addi  $sp, $sp, -36
#t145 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t146 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t147 , t145 , t146 , ==
lw  $t1, 0($sp)
lw  $t2, 4($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel16
li  $t0, 0
b  mipsLabel17
mipsLabel16: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel18
li  $t0, 0
b  mipsLabel17
mipsLabel18: 
li  $t0, 1
mipsLabel17: 
sw  $t0, 8($sp)
#if , t147 , goto , l38
lw  $t1, 8($sp)
bnez  $t1, l38
#goto , l39 ,  , 
b  l39
#label , l38 ,  , 
l38: 
#t148 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#return , t148 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#goto , l40 ,  , 
b  l40
#label , l39 ,  , 
l39: 
#t149 , 1 ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t150 , t145 , t149 , -
lw  $t1, 0($sp)
lw  $t2, 16($sp)
sub  $t0, $t1, $t2
sw  $t0, 20($sp)
#param , t150 ,  , 
lw  $t0, 20($sp)
sw  $t0, -4($sp)
#t151 , m10 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m10
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 24($sp)
#t152 , t145 , t151 , *
lw  $t1, 0($sp)
lw  $t2, 24($sp)
mul  $t0, $t1, $t2
sw  $t0, 28($sp)
#return , t152 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#label , l40 ,  , 
l40: 
#t153 , nil ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#return , t153 ,  , 
lw  $v0, 32($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l37 ,  , 
l37: 
#t154 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 84($sp)
#param , t154 ,  , 
lw  $t0, 84($sp)
sw  $t0, -4($sp)
#t155 , m1 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m1
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 88($sp)
#t156 , t155 ,  , =
lw  $t0, 88($sp)
sw  $t0, 92($sp)
#putint , t34 ,  , 
lw  $a0, 4($gp)
li  $v0, 1
syscall 
#t157 , '\n' ,  , =
li  $t0, 10
sw  $t0, 96($sp)
#putchar , t157 ,  , 
lw  $a0, 96($sp)
li  $v0, 11
syscall 
#param , t156 ,  , 
lw  $t0, 92($sp)
sw  $t0, -4($sp)
#t158 , m6 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m6
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 100($sp)
#putint , t158 ,  , 
lw  $a0, 100($sp)
li  $v0, 1
syscall 
#t159 , '\n' ,  , =
li  $t0, 10
sw  $t0, 104($sp)
#putchar , t159 ,  , 
lw  $a0, 104($sp)
li  $v0, 11
syscall 
#t160 , 4 ,  , =
li  $t0, 4
sw  $t0, 108($sp)
#param , t156 ,  , 
lw  $t0, 92($sp)
sw  $t0, -4($sp)
#param , t160 ,  , 
lw  $t0, 108($sp)
sw  $t0, -8($sp)
#t161 , m2 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m2
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 112($sp)
#t162 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 116($sp)
#param , t162 ,  , 
lw  $t0, 116($sp)
sw  $t0, -4($sp)
#t163 , m7 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m7
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 120($sp)
#t164 , t163 ,  , =
lw  $t0, 120($sp)
sw  $t0, 124($sp)
#t165 , 1 ,  , =
li  $t0, 1
sw  $t0, 128($sp)
#t166 , 2 ,  , =
li  $t0, 2
sw  $t0, 132($sp)
#t167 , 3 ,  , =
li  $t0, 3
sw  $t0, 136($sp)
#t168 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 140($sp)
#t169 , 0 ,  , =
li  $t0, 0
sw  $t0, 144($sp)
#t168 , t169 , t165 , *=
lw  $t0, 140($sp)
lw  $t1, 144($sp)
lw  $t2, 128($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t170 , 4 ,  , =
li  $t0, 4
sw  $t0, 148($sp)
#t168 , t170 , t166 , *=
lw  $t0, 140($sp)
lw  $t1, 148($sp)
lw  $t2, 132($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t171 , 8 ,  , =
li  $t0, 8
sw  $t0, 152($sp)
#t168 , t171 , t167 , *=
lw  $t0, 140($sp)
lw  $t1, 152($sp)
lw  $t2, 136($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t172 , 1 ,  , =
li  $t0, 1
sw  $t0, 156($sp)
#t173 , t172 ,  , -
lw  $t1, 156($sp)
sub  $t0, $zero, $t1
sw  $t0, 160($sp)
#t174 , 2 ,  , =
li  $t0, 2
sw  $t0, 164($sp)
#t175 , 3 ,  , =
li  $t0, 3
sw  $t0, 168($sp)
#t176 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 172($sp)
#t177 , 0 ,  , =
li  $t0, 0
sw  $t0, 176($sp)
#t176 , t177 , t173 , *=
lw  $t0, 172($sp)
lw  $t1, 176($sp)
lw  $t2, 160($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t178 , 4 ,  , =
li  $t0, 4
sw  $t0, 180($sp)
#t176 , t178 , t174 , *=
lw  $t0, 172($sp)
lw  $t1, 180($sp)
lw  $t2, 164($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t179 , 8 ,  , =
li  $t0, 8
sw  $t0, 184($sp)
#t176 , t179 , t175 , *=
lw  $t0, 172($sp)
lw  $t1, 184($sp)
lw  $t2, 168($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t180 , 1 ,  , =
li  $t0, 1
sw  $t0, 188($sp)
#t181 , 2 ,  , =
li  $t0, 2
sw  $t0, 192($sp)
#t182 , 3 ,  , =
li  $t0, 3
sw  $t0, 196($sp)
#t183 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 200($sp)
#t184 , 0 ,  , =
li  $t0, 0
sw  $t0, 204($sp)
#t183 , t184 , t180 , *=
lw  $t0, 200($sp)
lw  $t1, 204($sp)
lw  $t2, 188($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t185 , 4 ,  , =
li  $t0, 4
sw  $t0, 208($sp)
#t183 , t185 , t181 , *=
lw  $t0, 200($sp)
lw  $t1, 208($sp)
lw  $t2, 192($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t186 , 8 ,  , =
li  $t0, 8
sw  $t0, 212($sp)
#t183 , t186 , t182 , *=
lw  $t0, 200($sp)
lw  $t1, 212($sp)
lw  $t2, 196($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t187 , 1 ,  , =
li  $t0, 1
sw  $t0, 216($sp)
#t188 , 2 ,  , =
li  $t0, 2
sw  $t0, 220($sp)
#t189 , 3 ,  , =
li  $t0, 3
sw  $t0, 224($sp)
#t190 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 228($sp)
#t191 , 0 ,  , =
li  $t0, 0
sw  $t0, 232($sp)
#t190 , t191 , t187 , *=
lw  $t0, 228($sp)
lw  $t1, 232($sp)
lw  $t2, 216($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t192 , 4 ,  , =
li  $t0, 4
sw  $t0, 236($sp)
#t190 , t192 , t188 , *=
lw  $t0, 228($sp)
lw  $t1, 236($sp)
lw  $t2, 220($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t193 , 8 ,  , =
li  $t0, 8
sw  $t0, 240($sp)
#t190 , t193 , t189 , *=
lw  $t0, 228($sp)
lw  $t1, 240($sp)
lw  $t2, 224($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t194 , 16 ,  , new
li  $a0, 16
li  $v0, 9
syscall 
sw  $v0, 244($sp)
#t195 , 0 ,  , =
li  $t0, 0
sw  $t0, 248($sp)
#t194 , t195 , t168 , *=
lw  $t0, 244($sp)
lw  $t1, 248($sp)
lw  $t2, 140($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t196 , 4 ,  , =
li  $t0, 4
sw  $t0, 252($sp)
#t194 , t196 , t176 , *=
lw  $t0, 244($sp)
lw  $t1, 252($sp)
lw  $t2, 172($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t197 , 8 ,  , =
li  $t0, 8
sw  $t0, 256($sp)
#t194 , t197 , t183 , *=
lw  $t0, 244($sp)
lw  $t1, 256($sp)
lw  $t2, 200($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t198 , 12 ,  , =
li  $t0, 12
sw  $t0, 260($sp)
#t194 , t198 , t190 , *=
lw  $t0, 244($sp)
lw  $t1, 260($sp)
lw  $t2, 228($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#param , t164 ,  , 
lw  $t0, 124($sp)
sw  $t0, -4($sp)
#param , t194 ,  , 
lw  $t0, 244($sp)
sw  $t0, -8($sp)
#t199 , m4 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m4
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 264($sp)
#putint , t199 ,  , 
lw  $a0, 264($sp)
li  $v0, 1
syscall 
#t200 , '\n' ,  , =
li  $t0, 10
sw  $t0, 268($sp)
#putchar , t200 ,  , 
lw  $a0, 268($sp)
li  $v0, 11
syscall 
#t202 , 8 ,  , =
li  $t0, 8
sw  $t0, 272($sp)
#t201 , t164 , t202 , =*
lw  $t1, 124($sp)
lw  $t2, 272($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 276($sp)
#putint , t201 ,  , 
lw  $a0, 276($sp)
li  $v0, 1
syscall 
#t203 , '\n' ,  , =
li  $t0, 10
sw  $t0, 280($sp)
#putchar , t203 ,  , 
lw  $a0, 280($sp)
li  $v0, 11
syscall 
#t204 , 1 ,  , =
li  $t0, 1
sw  $t0, 284($sp)
#param , t164 ,  , 
lw  $t0, 124($sp)
sw  $t0, -4($sp)
#param , t204 ,  , 
lw  $t0, 284($sp)
sw  $t0, -8($sp)
#t205 , m9 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m9
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 288($sp)
#t207 , 8 ,  , =
li  $t0, 8
sw  $t0, 292($sp)
#t206 , t164 , t207 , =*
lw  $t1, 124($sp)
lw  $t2, 292($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 296($sp)
#putint , t206 ,  , 
lw  $a0, 296($sp)
li  $v0, 1
syscall 
#t208 , '\n' ,  , =
li  $t0, 10
sw  $t0, 300($sp)
#putchar , t208 ,  , 
lw  $a0, 300($sp)
li  $v0, 11
syscall 
#t209 , 1 ,  , =
li  $t0, 1
sw  $t0, 304($sp)
#param , t164 ,  , 
lw  $t0, 124($sp)
sw  $t0, -4($sp)
#param , t209 ,  , 
lw  $t0, 304($sp)
sw  $t0, -8($sp)
#t210 , m8 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m8
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 308($sp)
#t212 , 0 ,  , =
li  $t0, 0
sw  $t0, 312($sp)
#t211 , t164 , t212 , =*
lw  $t1, 124($sp)
lw  $t2, 312($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 316($sp)
#param , t211 ,  , 
lw  $t0, 316($sp)
sw  $t0, -4($sp)
#t213 , m10 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m10
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 320($sp)
#putint , t213 ,  , 
lw  $a0, 320($sp)
li  $v0, 1
syscall 
#t214 , '\n' ,  , =
li  $t0, 10
sw  $t0, 324($sp)
#putchar , t214 ,  , 
lw  $a0, 324($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall