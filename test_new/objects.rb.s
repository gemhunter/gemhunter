.text 
main:
addi  $sp, $sp, -240
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -48
#t0 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t1 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t2 , 3 ,  , =
li  $t0, 3
sw  $t0, 8($sp)
#t3 , t0 , t2 , ==
lw  $t1, 0($sp)
lw  $t2, 8($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel0
li  $t0, 0
b  mipsLabel1
mipsLabel0: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel2
li  $t0, 0
b  mipsLabel1
mipsLabel2: 
li  $t0, 1
mipsLabel1: 
sw  $t0, 12($sp)
#if , t3 , goto , l1
lw  $t1, 12($sp)
bnez  $t1, l1
#goto , l2 ,  , 
b  l2
#label , l1 ,  , 
l1: 
#return , t0 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#goto , l3 ,  , 
b  l3
#label , l2 ,  , 
l2: 
#label , l3 ,  , 
l3: 
#t4 , 4 ,  , =
li  $t0, 4
sw  $t0, 16($sp)
#t5 , t0 , t4 , *
lw  $t1, 0($sp)
lw  $t2, 16($sp)
mul  $t0, $t1, $t2
sw  $t0, 20($sp)
#t6 , t1 , t5 , =*
lw  $t1, 4($sp)
lw  $t2, 20($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 24($sp)
#t7 , 1 ,  , =
li  $t0, 1
sw  $t0, 28($sp)
#t8 , t0 , t7 , +
lw  $t1, 0($sp)
lw  $t2, 28($sp)
add  $t0, $t1, $t2
sw  $t0, 32($sp)
#param , t1 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#param , t8 ,  , 
lw  $t0, 32($sp)
sw  $t0, -8($sp)
#t9 , m0 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 36($sp)
#t10 , t6 , t9 , +
lw  $t1, 24($sp)
lw  $t2, 36($sp)
add  $t0, $t1, $t2
sw  $t0, 40($sp)
#return , t10 ,  , 
lw  $v0, 40($sp)
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
#t12 , 1 ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t13 , t12 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#goto , l4 ,  , 
b  l4
#label , m1 ,  , 
m1: 
#methodStarts , m1 ,  , 
addi  $sp, $sp, -24
#t14 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t15 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t14 , t16 , t15 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t17 , 2 ,  , =
li  $t0, 2
sw  $t0, 12($sp)
#t18 , 4 ,  , =
li  $t0, 4
sw  $t0, 16($sp)
#t14 , t18 , t17 , *=
lw  $t0, 0($sp)
lw  $t1, 16($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t14 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t19 , nil ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#return , t19 ,  , 
lw  $v0, 20($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l4 ,  , 
l4: 
#goto , l5 ,  , 
b  l5
#label , m2 ,  , 
m2: 
#methodStarts , m2 ,  , 
addi  $sp, $sp, -28
#t20 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t21 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t23 , 0 ,  , =
li  $t0, 0
sw  $t0, 8($sp)
#t22 , t21 , t23 , =*
lw  $t1, 4($sp)
lw  $t2, 8($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 12($sp)
#t24 , t22 , t20 , +
lw  $t1, 12($sp)
lw  $t2, 0($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#t25 , 0 ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t21 , t25 , t24 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t26 , nil ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#return , t26 ,  , 
lw  $v0, 24($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l5 ,  , 
l5: 
#t27 , 4 ,  , =
li  $t0, 4
sw  $t0, 4($sp)
#t28 , t27 ,  , =
lw  $t0, 4($sp)
sw  $t0, 4($gp)
#goto , l6 ,  , 
b  l6
#label , m3 ,  , 
m3: 
#methodStarts , m3 ,  , 
addi  $sp, $sp, -24
#t29 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t30 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t29 , t30 , t13 , *=
lw  $t0, 0($sp)
lw  $t1, 4($sp)
lw  $t2, 0($gp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t31 , 8 ,  , =
li  $t0, 8
sw  $t0, 8($sp)
#t29 , t31 , t28 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($gp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t32 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t33 , 12 ,  , =
li  $t0, 12
sw  $t0, 16($sp)
#t29 , t33 , t32 , *=
lw  $t0, 0($sp)
lw  $t1, 16($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t29 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t34 , nil ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#return , t34 ,  , 
lw  $v0, 20($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l6 ,  , 
l6: 
#goto , l7 ,  , 
b  l7
#label , m4 ,  , 
m4: 
#methodStarts , m4 ,  , 
addi  $sp, $sp, -16
#t35 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t36 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#param , t36 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#param , t35 ,  , 
lw  $t0, 0($sp)
sw  $t0, -8($sp)
#t37 , m2 ,  , call
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
#t38 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t38 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l7 ,  , 
l7: 
#goto , l8 ,  , 
b  l8
#label , m5 ,  , 
m5: 
#methodStarts , m5 ,  , 
addi  $sp, $sp, -36
#t39 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t40 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t41 , t39 , t40 , ==
lw  $t1, 0($sp)
lw  $t2, 4($sp)
slt  $t0, $t1, $t2
beqz  $t0, mipsLabel3
li  $t0, 0
b  mipsLabel4
mipsLabel3: 
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel5
li  $t0, 0
b  mipsLabel4
mipsLabel5: 
li  $t0, 1
mipsLabel4: 
sw  $t0, 8($sp)
#if , t41 , goto , l9
lw  $t1, 8($sp)
bnez  $t1, l9
#goto , l10 ,  , 
b  l10
#label , l9 ,  , 
l9: 
#t42 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#return , t42 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#goto , l11 ,  , 
b  l11
#label , l10 ,  , 
l10: 
#t43 , 1 ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t44 , t39 , t43 , -
lw  $t1, 0($sp)
lw  $t2, 16($sp)
sub  $t0, $t1, $t2
sw  $t0, 20($sp)
#param , t44 ,  , 
lw  $t0, 20($sp)
sw  $t0, -4($sp)
#t45 , m5 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m5
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 24($sp)
#t46 , t39 , t45 , *
lw  $t1, 0($sp)
lw  $t2, 24($sp)
mul  $t0, $t1, $t2
sw  $t0, 28($sp)
#return , t46 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#label , l11 ,  , 
l11: 
#t47 , nil ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#return , t47 ,  , 
lw  $v0, 32($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l8 ,  , 
l8: 
#t48 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 8($sp)
#param , t48 ,  , 
lw  $t0, 8($sp)
sw  $t0, -4($sp)
#t49 , m1 ,  , call
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
#t50 , t49 ,  , =
lw  $t0, 12($sp)
sw  $t0, 16($sp)
#putint , t13 ,  , 
lw  $a0, 0($gp)
li  $v0, 1
syscall 
#t51 , '\n' ,  , =
li  $t0, 10
sw  $t0, 20($sp)
#putchar , t51 ,  , 
lw  $a0, 20($sp)
li  $v0, 11
syscall 
#t52 , 4 ,  , =
li  $t0, 4
sw  $t0, 24($sp)
#t53 , t28 , t52 , +
lw  $t1, 4($gp)
lw  $t2, 24($sp)
add  $t0, $t1, $t2
sw  $t0, 28($sp)
#t28 , t53 ,  , =
lw  $t0, 28($sp)
sw  $t0, 4($gp)
#putint , t28 ,  , 
lw  $a0, 4($gp)
li  $v0, 1
syscall 
#t54 , '\n' ,  , =
li  $t0, 10
sw  $t0, 32($sp)
#putchar , t54 ,  , 
lw  $a0, 32($sp)
li  $v0, 11
syscall 
#t55 , 4 ,  , =
li  $t0, 4
sw  $t0, 36($sp)
#param , t50 ,  , 
lw  $t0, 16($sp)
sw  $t0, -4($sp)
#param , t55 ,  , 
lw  $t0, 36($sp)
sw  $t0, -8($sp)
#t56 , m2 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m2
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 40($sp)
#t57 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 44($sp)
#param , t57 ,  , 
lw  $t0, 44($sp)
sw  $t0, -4($sp)
#t58 , m1 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m1
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 48($sp)
#t59 , t58 ,  , =
lw  $t0, 48($sp)
sw  $t0, 52($sp)
#t61 , 8 ,  , =
li  $t0, 8
sw  $t0, 56($sp)
#t60 , t59 , t61 , =*
lw  $t1, 52($sp)
lw  $t2, 56($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 60($sp)
#putint , t60 ,  , 
lw  $a0, 60($sp)
li  $v0, 1
syscall 
#t62 , 24 ,  , new
li  $a0, 24
li  $v0, 9
syscall 
sw  $v0, 64($sp)
#t63 , ' ' ,  , =
li  $t0, 32
sw  $t0, 68($sp)
#t64 , 0 ,  , =
li  $t0, 0
sw  $t0, 72($sp)
#t62 , t64 , t63 , *=
lw  $t0, 64($sp)
lw  $t1, 72($sp)
lw  $t2, 68($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t65 , 'h' ,  , =
li  $t0, 104
sw  $t0, 76($sp)
#t66 , 4 ,  , =
li  $t0, 4
sw  $t0, 80($sp)
#t62 , t66 , t65 , *=
lw  $t0, 64($sp)
lw  $t1, 80($sp)
lw  $t2, 76($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t67 , 'e' ,  , =
li  $t0, 101
sw  $t0, 84($sp)
#t68 , 8 ,  , =
li  $t0, 8
sw  $t0, 88($sp)
#t62 , t68 , t67 , *=
lw  $t0, 64($sp)
lw  $t1, 88($sp)
lw  $t2, 84($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t69 , 'r' ,  , =
li  $t0, 114
sw  $t0, 92($sp)
#t70 , 12 ,  , =
li  $t0, 12
sw  $t0, 96($sp)
#t62 , t70 , t69 , *=
lw  $t0, 64($sp)
lw  $t1, 96($sp)
lw  $t2, 92($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t71 , 'e' ,  , =
li  $t0, 101
sw  $t0, 100($sp)
#t72 , 16 ,  , =
li  $t0, 16
sw  $t0, 104($sp)
#t62 , t72 , t71 , *=
lw  $t0, 64($sp)
lw  $t1, 104($sp)
lw  $t2, 100($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t73 , '\0' ,  , =
li  $t0, 0
sw  $t0, 108($sp)
#t74 , 20 ,  , =
li  $t0, 20
sw  $t0, 112($sp)
#t62 , t74 , t73 , *=
lw  $t0, 64($sp)
lw  $t1, 112($sp)
lw  $t2, 108($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t75 , 0 ,  , =
li  $t0, 0
sw  $t0, 116($sp)
#t76 , t62 , t75 , =*
lw  $t1, 64($sp)
lw  $t2, 116($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 120($sp)
#putchar , t76 ,  , 
lw  $a0, 120($sp)
li  $v0, 11
syscall 
#t77 , 4 ,  , =
li  $t0, 4
sw  $t0, 124($sp)
#t78 , t62 , t77 , =*
lw  $t1, 64($sp)
lw  $t2, 124($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#putchar , t78 ,  , 
lw  $a0, 128($sp)
li  $v0, 11
syscall 
#t79 , 8 ,  , =
li  $t0, 8
sw  $t0, 132($sp)
#t80 , t62 , t79 , =*
lw  $t1, 64($sp)
lw  $t2, 132($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 136($sp)
#putchar , t80 ,  , 
lw  $a0, 136($sp)
li  $v0, 11
syscall 
#t81 , 12 ,  , =
li  $t0, 12
sw  $t0, 140($sp)
#t82 , t62 , t81 , =*
lw  $t1, 64($sp)
lw  $t2, 140($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 144($sp)
#putchar , t82 ,  , 
lw  $a0, 144($sp)
li  $v0, 11
syscall 
#t83 , 16 ,  , =
li  $t0, 16
sw  $t0, 148($sp)
#t84 , t62 , t83 , =*
lw  $t1, 64($sp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putchar , t84 ,  , 
lw  $a0, 152($sp)
li  $v0, 11
syscall 
#t85 , 20 ,  , =
li  $t0, 20
sw  $t0, 156($sp)
#t86 , t62 , t85 , =*
lw  $t1, 64($sp)
lw  $t2, 156($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 160($sp)
#putchar , t86 ,  , 
lw  $a0, 160($sp)
li  $v0, 11
syscall 
#t87 , '\n' ,  , =
li  $t0, 10
sw  $t0, 164($sp)
#putchar , t87 ,  , 
lw  $a0, 164($sp)
li  $v0, 11
syscall 
#t89 , 0 ,  , =
li  $t0, 0
sw  $t0, 168($sp)
#t88 , t59 , t89 , =*
lw  $t1, 52($sp)
lw  $t2, 168($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 172($sp)
#param , t88 ,  , 
lw  $t0, 172($sp)
sw  $t0, -4($sp)
#t90 , m5 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m5
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 176($sp)
#putint , t90 ,  , 
lw  $a0, 176($sp)
li  $v0, 1
syscall 
#t91 , '\n' ,  , =
li  $t0, 10
sw  $t0, 180($sp)
#putchar , t91 ,  , 
lw  $a0, 180($sp)
li  $v0, 11
syscall 
#t92 , 1 ,  , =
li  $t0, 1
sw  $t0, 184($sp)
#t93 , 2 ,  , =
li  $t0, 2
sw  $t0, 188($sp)
#t94 , 3 ,  , =
li  $t0, 3
sw  $t0, 192($sp)
#t95 , 4 ,  , =
li  $t0, 4
sw  $t0, 196($sp)
#t96 , 16 ,  , new
li  $a0, 16
li  $v0, 9
syscall 
sw  $v0, 200($sp)
#t97 , 0 ,  , =
li  $t0, 0
sw  $t0, 204($sp)
#t96 , t97 , t92 , *=
lw  $t0, 200($sp)
lw  $t1, 204($sp)
lw  $t2, 184($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t98 , 4 ,  , =
li  $t0, 4
sw  $t0, 208($sp)
#t96 , t98 , t93 , *=
lw  $t0, 200($sp)
lw  $t1, 208($sp)
lw  $t2, 188($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t99 , 8 ,  , =
li  $t0, 8
sw  $t0, 212($sp)
#t96 , t99 , t94 , *=
lw  $t0, 200($sp)
lw  $t1, 212($sp)
lw  $t2, 192($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t100 , 12 ,  , =
li  $t0, 12
sw  $t0, 216($sp)
#t96 , t100 , t95 , *=
lw  $t0, 200($sp)
lw  $t1, 216($sp)
lw  $t2, 196($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t101 , t96 ,  , =
lw  $t0, 200($sp)
sw  $t0, 220($sp)
#t102 , 0 ,  , =
li  $t0, 0
sw  $t0, 224($sp)
#param , t101 ,  , 
lw  $t0, 220($sp)
sw  $t0, -4($sp)
#param , t102 ,  , 
lw  $t0, 224($sp)
sw  $t0, -8($sp)
#t103 , m0 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 228($sp)
#putint , t103 ,  , 
lw  $a0, 228($sp)
li  $v0, 1
syscall 
exit:
li $v0, 10 
syscall