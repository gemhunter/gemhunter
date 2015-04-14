.text 
main:
addi  $sp, $sp, -252
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
addi  $sp, $sp, -20
#t29 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t30 , 20 ,  , =
li  $t0, 20
sw  $t0, 4($sp)
#t31 , 8 ,  , =
li  $t0, 8
sw  $t0, 8($sp)
#t29 , t31 , t30 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#param , t29 ,  , 
lw  $t0, 0($sp)
sw  $t0, -4($sp)
#t32 , m1 ,  , call
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
#return , t29 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t33 , nil ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#return , t33 ,  , 
lw  $v0, 16($sp)
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
#t34 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t35 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#param , t35 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#param , t34 ,  , 
lw  $t0, 0($sp)
sw  $t0, -8($sp)
#t36 , m2 ,  , call
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
#t37 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t37 ,  , 
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
#t38 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t39 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t40 , t38 , t39 , ==
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
#if , t40 , goto , l9
lw  $t1, 8($sp)
bnez  $t1, l9
#goto , l10 ,  , 
b  l10
#label , l9 ,  , 
l9: 
#t41 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#return , t41 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#goto , l11 ,  , 
b  l11
#label , l10 ,  , 
l10: 
#t42 , 1 ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t43 , t38 , t42 , -
lw  $t1, 0($sp)
lw  $t2, 16($sp)
sub  $t0, $t1, $t2
sw  $t0, 20($sp)
#param , t43 ,  , 
lw  $t0, 20($sp)
sw  $t0, -4($sp)
#t44 , m5 ,  , call
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
#t45 , t38 , t44 , *
lw  $t1, 0($sp)
lw  $t2, 24($sp)
mul  $t0, $t1, $t2
sw  $t0, 28($sp)
#return , t45 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#label , l11 ,  , 
l11: 
#t46 , nil ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#return , t46 ,  , 
lw  $v0, 32($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l8 ,  , 
l8: 
#t47 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 8($sp)
#param , t47 ,  , 
lw  $t0, 8($sp)
sw  $t0, -4($sp)
#t48 , m1 ,  , call
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
#t49 , t48 ,  , =
lw  $t0, 12($sp)
sw  $t0, 16($sp)
#putint , t13 ,  , 
lw  $a0, 0($gp)
li  $v0, 1
syscall 
#t50 , '\n' ,  , =
li  $t0, 10
sw  $t0, 20($sp)
#putchar , t50 ,  , 
lw  $a0, 20($sp)
li  $v0, 11
syscall 
#t51 , 1 ,  , =
li  $t0, 1
sw  $t0, 24($sp)
#t52 , t28 , t51 , +
lw  $t1, 4($gp)
lw  $t2, 24($sp)
add  $t0, $t1, $t2
sw  $t0, 28($sp)
#t28 , t52 ,  , =
lw  $t0, 28($sp)
sw  $t0, 4($gp)
#putint , t28 ,  , 
lw  $a0, 4($gp)
li  $v0, 1
syscall 
#t53 , '\n' ,  , =
li  $t0, 10
sw  $t0, 32($sp)
#putchar , t53 ,  , 
lw  $a0, 32($sp)
li  $v0, 11
syscall 
#t54 , 4 ,  , =
li  $t0, 4
sw  $t0, 36($sp)
#param , t49 ,  , 
lw  $t0, 16($sp)
sw  $t0, -4($sp)
#param , t54 ,  , 
lw  $t0, 36($sp)
sw  $t0, -8($sp)
#t55 , m2 ,  , call
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
#t56 , 12 ,  , new
li  $a0, 12
li  $v0, 9
syscall 
sw  $v0, 44($sp)
#param , t56 ,  , 
lw  $t0, 44($sp)
sw  $t0, -4($sp)
#t57 , m3 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m3
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 48($sp)
#t58 , t57 ,  , =
lw  $t0, 48($sp)
sw  $t0, 52($sp)
#t60 , 8 ,  , =
li  $t0, 8
sw  $t0, 56($sp)
#t59 , t58 , t60 , =*
lw  $t1, 52($sp)
lw  $t2, 56($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 60($sp)
#putint , t59 ,  , 
lw  $a0, 60($sp)
li  $v0, 1
syscall 
#t61 , '\n' ,  , =
li  $t0, 10
sw  $t0, 64($sp)
#putchar , t61 ,  , 
lw  $a0, 64($sp)
li  $v0, 11
syscall 
#t63 , 0 ,  , =
li  $t0, 0
sw  $t0, 68($sp)
#t62 , t58 , t63 , =*
lw  $t1, 52($sp)
lw  $t2, 68($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 72($sp)
#putint , t62 ,  , 
lw  $a0, 72($sp)
li  $v0, 1
syscall 
#t64 , '\n' ,  , =
li  $t0, 10
sw  $t0, 76($sp)
#putchar , t64 ,  , 
lw  $a0, 76($sp)
li  $v0, 11
syscall 
#t65 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 80($sp)
#t66 , 'h' ,  , =
li  $t0, 104
sw  $t0, 84($sp)
#t67 , 0 ,  , =
li  $t0, 0
sw  $t0, 88($sp)
#t65 , t67 , t66 , *=
lw  $t0, 80($sp)
lw  $t1, 88($sp)
lw  $t2, 84($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t68 , 'e' ,  , =
li  $t0, 101
sw  $t0, 92($sp)
#t69 , 4 ,  , =
li  $t0, 4
sw  $t0, 96($sp)
#t65 , t69 , t68 , *=
lw  $t0, 80($sp)
lw  $t1, 96($sp)
lw  $t2, 92($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t70 , 'r' ,  , =
li  $t0, 114
sw  $t0, 100($sp)
#t71 , 8 ,  , =
li  $t0, 8
sw  $t0, 104($sp)
#t65 , t71 , t70 , *=
lw  $t0, 80($sp)
lw  $t1, 104($sp)
lw  $t2, 100($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t72 , 'e' ,  , =
li  $t0, 101
sw  $t0, 108($sp)
#t73 , 12 ,  , =
li  $t0, 12
sw  $t0, 112($sp)
#t65 , t73 , t72 , *=
lw  $t0, 80($sp)
lw  $t1, 112($sp)
lw  $t2, 108($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t74 , '\0' ,  , =
li  $t0, 0
sw  $t0, 116($sp)
#t75 , 16 ,  , =
li  $t0, 16
sw  $t0, 120($sp)
#t65 , t75 , t74 , *=
lw  $t0, 80($sp)
lw  $t1, 120($sp)
lw  $t2, 116($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t76 , 0 ,  , =
li  $t0, 0
sw  $t0, 124($sp)
#t77 , t65 , t76 , =*
lw  $t1, 80($sp)
lw  $t2, 124($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#putchar , t77 ,  , 
lw  $a0, 128($sp)
li  $v0, 11
syscall 
#t78 , 4 ,  , =
li  $t0, 4
sw  $t0, 132($sp)
#t79 , t65 , t78 , =*
lw  $t1, 80($sp)
lw  $t2, 132($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 136($sp)
#putchar , t79 ,  , 
lw  $a0, 136($sp)
li  $v0, 11
syscall 
#t80 , 8 ,  , =
li  $t0, 8
sw  $t0, 140($sp)
#t81 , t65 , t80 , =*
lw  $t1, 80($sp)
lw  $t2, 140($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 144($sp)
#putchar , t81 ,  , 
lw  $a0, 144($sp)
li  $v0, 11
syscall 
#t82 , 12 ,  , =
li  $t0, 12
sw  $t0, 148($sp)
#t83 , t65 , t82 , =*
lw  $t1, 80($sp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putchar , t83 ,  , 
lw  $a0, 152($sp)
li  $v0, 11
syscall 
#t84 , 16 ,  , =
li  $t0, 16
sw  $t0, 156($sp)
#t85 , t65 , t84 , =*
lw  $t1, 80($sp)
lw  $t2, 156($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 160($sp)
#putchar , t85 ,  , 
lw  $a0, 160($sp)
li  $v0, 11
syscall 
#t86 , '\n' ,  , =
li  $t0, 10
sw  $t0, 164($sp)
#putchar , t86 ,  , 
lw  $a0, 164($sp)
li  $v0, 11
syscall 
#t87 , 1 ,  , =
li  $t0, 1
sw  $t0, 168($sp)
#param , t58 ,  , 
lw  $t0, 52($sp)
sw  $t0, -4($sp)
#param , t87 ,  , 
lw  $t0, 168($sp)
sw  $t0, -8($sp)
#t88 , m4 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m4
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 172($sp)
#t90 , 0 ,  , =
li  $t0, 0
sw  $t0, 176($sp)
#t89 , t58 , t90 , =*
lw  $t1, 52($sp)
lw  $t2, 176($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 180($sp)
#param , t89 ,  , 
lw  $t0, 180($sp)
sw  $t0, -4($sp)
#t91 , m5 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m5
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 184($sp)
#putint , t91 ,  , 
lw  $a0, 184($sp)
li  $v0, 1
syscall 
#t92 , '\n' ,  , =
li  $t0, 10
sw  $t0, 188($sp)
#putchar , t92 ,  , 
lw  $a0, 188($sp)
li  $v0, 11
syscall 
#t93 , 1 ,  , =
li  $t0, 1
sw  $t0, 192($sp)
#t94 , 2 ,  , =
li  $t0, 2
sw  $t0, 196($sp)
#t95 , 3 ,  , =
li  $t0, 3
sw  $t0, 200($sp)
#t96 , 4 ,  , =
li  $t0, 4
sw  $t0, 204($sp)
#t97 , 16 ,  , new
li  $a0, 16
li  $v0, 9
syscall 
sw  $v0, 208($sp)
#t98 , 0 ,  , =
li  $t0, 0
sw  $t0, 212($sp)
#t97 , t98 , t93 , *=
lw  $t0, 208($sp)
lw  $t1, 212($sp)
lw  $t2, 192($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t99 , 4 ,  , =
li  $t0, 4
sw  $t0, 216($sp)
#t97 , t99 , t94 , *=
lw  $t0, 208($sp)
lw  $t1, 216($sp)
lw  $t2, 196($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t100 , 8 ,  , =
li  $t0, 8
sw  $t0, 220($sp)
#t97 , t100 , t95 , *=
lw  $t0, 208($sp)
lw  $t1, 220($sp)
lw  $t2, 200($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t101 , 12 ,  , =
li  $t0, 12
sw  $t0, 224($sp)
#t97 , t101 , t96 , *=
lw  $t0, 208($sp)
lw  $t1, 224($sp)
lw  $t2, 204($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t102 , t97 ,  , =
lw  $t0, 208($sp)
sw  $t0, 228($sp)
#t103 , 0 ,  , =
li  $t0, 0
sw  $t0, 232($sp)
#param , t102 ,  , 
lw  $t0, 228($sp)
sw  $t0, -4($sp)
#param , t103 ,  , 
lw  $t0, 232($sp)
sw  $t0, -8($sp)
#t104 , m0 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 236($sp)
#putint , t104 ,  , 
lw  $a0, 236($sp)
li  $v0, 1
syscall 
#t105 , '\n' ,  , =
li  $t0, 10
sw  $t0, 240($sp)
#putchar , t105 ,  , 
lw  $a0, 240($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall