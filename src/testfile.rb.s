.text 
main:
addi  $sp, $sp, -244
#goto , l0 ,  , 
b  l0
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -36
#t0 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t1 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t2 , t0 , t1 , ==
lw  $t1, 0($sp)
lw  $t2, 4($sp)
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
sw  $t0, 8($sp)
#if , t2 , goto , l1
lw  $t1, 8($sp)
bnez  $t1, l1
#goto , l2 ,  , 
b  l2
#label , l1 ,  , 
l1: 
#t3 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#return , t3 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#goto , l3 ,  , 
b  l3
#label , l2 ,  , 
l2: 
#label , l3 ,  , 
l3: 
#t4 , 1 ,  , =
li  $t0, 1
sw  $t0, 16($sp)
#t5 , t0 , t4 , -
lw  $t1, 0($sp)
lw  $t2, 16($sp)
sub  $t0, $t1, $t2
sw  $t0, 20($sp)
#param , t5 ,  , 
lw  $t0, 20($sp)
sw  $t0, -4($sp)
#t6 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 24($sp)
#t7 , t0 , t6 , *
lw  $t1, 0($sp)
lw  $t2, 24($sp)
mul  $t0, $t1, $t2
sw  $t0, 28($sp)
#return , t7 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t8 , nil ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#return , t8 ,  , 
lw  $v0, 32($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l0 ,  , 
l0: 
#goto , l4 ,  , 
b  l4
#label , m1 ,  , 
m1: 
#methodStarts , m1 ,  , 
addi  $sp, $sp, -8
#t9 , nil ,  , =
li  $t0, 0
sw  $t0, 0($sp)
#return , t9 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t10 , nil ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#return , t10 ,  , 
lw  $v0, 4($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l4 ,  , 
l4: 
#t11 , 3 ,  , =
li  $t0, 3
sw  $t0, 0($sp)
#t12 , t11 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#goto , l5 ,  , 
b  l5
#label , m2 ,  , 
m2: 
#methodStarts , m2 ,  , 
addi  $sp, $sp, -144
#t13 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t14 , 60 ,  , new
li  $a0, 60
li  $v0, 9
syscall 
sw  $v0, 4($sp)
#t15 , 'Y' ,  , =
li  $t0, 89
sw  $t0, 8($sp)
#t16 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t14 , t16 , t15 , *=
lw  $t0, 4($sp)
lw  $t1, 12($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t17 , 'o' ,  , =
li  $t0, 111
sw  $t0, 16($sp)
#t18 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t14 , t18 , t17 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t19 , 'u' ,  , =
li  $t0, 117
sw  $t0, 24($sp)
#t20 , 8 ,  , =
li  $t0, 8
sw  $t0, 28($sp)
#t14 , t20 , t19 , *=
lw  $t0, 4($sp)
lw  $t1, 28($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t21 , ''' ,  , =
li  $t0, 39
sw  $t0, 32($sp)
#t22 , 12 ,  , =
li  $t0, 12
sw  $t0, 36($sp)
#t14 , t22 , t21 , *=
lw  $t0, 4($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t23 , 'r' ,  , =
li  $t0, 114
sw  $t0, 40($sp)
#t24 , 16 ,  , =
li  $t0, 16
sw  $t0, 44($sp)
#t14 , t24 , t23 , *=
lw  $t0, 4($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t25 , 'e' ,  , =
li  $t0, 101
sw  $t0, 48($sp)
#t26 , 20 ,  , =
li  $t0, 20
sw  $t0, 52($sp)
#t14 , t26 , t25 , *=
lw  $t0, 4($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t27 , ' ' ,  , =
li  $t0, 32
sw  $t0, 56($sp)
#t28 , 24 ,  , =
li  $t0, 24
sw  $t0, 60($sp)
#t14 , t28 , t27 , *=
lw  $t0, 4($sp)
lw  $t1, 60($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t29 , 'a' ,  , =
li  $t0, 97
sw  $t0, 64($sp)
#t30 , 28 ,  , =
li  $t0, 28
sw  $t0, 68($sp)
#t14 , t30 , t29 , *=
lw  $t0, 4($sp)
lw  $t1, 68($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t31 , ' ' ,  , =
li  $t0, 32
sw  $t0, 72($sp)
#t32 , 32 ,  , =
li  $t0, 32
sw  $t0, 76($sp)
#t14 , t32 , t31 , *=
lw  $t0, 4($sp)
lw  $t1, 76($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t33 , 'b' ,  , =
li  $t0, 98
sw  $t0, 80($sp)
#t34 , 36 ,  , =
li  $t0, 36
sw  $t0, 84($sp)
#t14 , t34 , t33 , *=
lw  $t0, 4($sp)
lw  $t1, 84($sp)
lw  $t2, 80($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t35 , 'a' ,  , =
li  $t0, 97
sw  $t0, 88($sp)
#t36 , 40 ,  , =
li  $t0, 40
sw  $t0, 92($sp)
#t14 , t36 , t35 , *=
lw  $t0, 4($sp)
lw  $t1, 92($sp)
lw  $t2, 88($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t37 , 's' ,  , =
li  $t0, 115
sw  $t0, 96($sp)
#t38 , 44 ,  , =
li  $t0, 44
sw  $t0, 100($sp)
#t14 , t38 , t37 , *=
lw  $t0, 4($sp)
lw  $t1, 100($sp)
lw  $t2, 96($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t39 , 'i' ,  , =
li  $t0, 105
sw  $t0, 104($sp)
#t40 , 48 ,  , =
li  $t0, 48
sw  $t0, 108($sp)
#t14 , t40 , t39 , *=
lw  $t0, 4($sp)
lw  $t1, 108($sp)
lw  $t2, 104($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t41 , 'c' ,  , =
li  $t0, 99
sw  $t0, 112($sp)
#t42 , 52 ,  , =
li  $t0, 52
sw  $t0, 116($sp)
#t14 , t42 , t41 , *=
lw  $t0, 4($sp)
lw  $t1, 116($sp)
lw  $t2, 112($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t43 , '\0' ,  , =
li  $t0, 0
sw  $t0, 120($sp)
#t44 , 56 ,  , =
li  $t0, 56
sw  $t0, 124($sp)
#t14 , t44 , t43 , *=
lw  $t0, 4($sp)
lw  $t1, 124($sp)
lw  $t2, 120($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t45 , 0 ,  , =
li  $t0, 0
sw  $t0, 128($sp)
#t13 , t45 , t14 , *=
lw  $t0, 0($sp)
lw  $t1, 128($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t46 , 4 ,  , =
li  $t0, 4
sw  $t0, 132($sp)
#t47 , 4 ,  , =
li  $t0, 4
sw  $t0, 136($sp)
#t13 , t47 , t46 , *=
lw  $t0, 0($sp)
lw  $t1, 136($sp)
lw  $t2, 132($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t13 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t48 , nil ,  , =
li  $t0, 0
sw  $t0, 140($sp)
#return , t48 ,  , 
lw  $v0, 140($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l5 ,  , 
l5: 
#goto , l6 ,  , 
b  l6
#label , m3 ,  , 
m3: 
#methodStarts , m3 ,  , 
addi  $sp, $sp, -20
#t49 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t51 , 4 ,  , =
li  $t0, 4
sw  $t0, 4($sp)
#t50 , t49 , t51 , =*
lw  $t1, 0($sp)
lw  $t2, 4($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 8($sp)
#param , t50 ,  , 
lw  $t0, 8($sp)
sw  $t0, -4($sp)
#t52 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 12($sp)
#return , t52 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t53 , nil ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#return , t53 ,  , 
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
#t54 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t55 , 5 ,  , =
li  $t0, 5
sw  $t0, 4($sp)
#t56 , 4 ,  , =
li  $t0, 4
sw  $t0, 8($sp)
#t54 , t56 , t55 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t54 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t57 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t57 ,  , 
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
addi  $sp, $sp, -188
#t58 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t59 , 36 ,  , new
li  $a0, 36
li  $v0, 9
syscall 
sw  $v0, 4($sp)
#t60 , 'I' ,  , =
li  $t0, 73
sw  $t0, 8($sp)
#t61 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t59 , t61 , t60 , *=
lw  $t0, 4($sp)
lw  $t1, 12($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t62 , ''' ,  , =
li  $t0, 39
sw  $t0, 16($sp)
#t63 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t59 , t63 , t62 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t64 , 'm' ,  , =
li  $t0, 109
sw  $t0, 24($sp)
#t65 , 8 ,  , =
li  $t0, 8
sw  $t0, 28($sp)
#t59 , t65 , t64 , *=
lw  $t0, 4($sp)
lw  $t1, 28($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t66 , ' ' ,  , =
li  $t0, 32
sw  $t0, 32($sp)
#t67 , 12 ,  , =
li  $t0, 12
sw  $t0, 36($sp)
#t59 , t67 , t66 , *=
lw  $t0, 4($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t68 , 'h' ,  , =
li  $t0, 104
sw  $t0, 40($sp)
#t69 , 16 ,  , =
li  $t0, 16
sw  $t0, 44($sp)
#t59 , t69 , t68 , *=
lw  $t0, 4($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t70 , 'e' ,  , =
li  $t0, 101
sw  $t0, 48($sp)
#t71 , 20 ,  , =
li  $t0, 20
sw  $t0, 52($sp)
#t59 , t71 , t70 , *=
lw  $t0, 4($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t72 , 'r' ,  , =
li  $t0, 114
sw  $t0, 56($sp)
#t73 , 24 ,  , =
li  $t0, 24
sw  $t0, 60($sp)
#t59 , t73 , t72 , *=
lw  $t0, 4($sp)
lw  $t1, 60($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t74 , 'e' ,  , =
li  $t0, 101
sw  $t0, 64($sp)
#t75 , 28 ,  , =
li  $t0, 28
sw  $t0, 68($sp)
#t59 , t75 , t74 , *=
lw  $t0, 4($sp)
lw  $t1, 68($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t76 , '\0' ,  , =
li  $t0, 0
sw  $t0, 72($sp)
#t77 , 32 ,  , =
li  $t0, 32
sw  $t0, 76($sp)
#t59 , t77 , t76 , *=
lw  $t0, 4($sp)
lw  $t1, 76($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t78 , t59 ,  , =
lw  $t0, 4($sp)
sw  $t0, 80($sp)
#t79 , 0 ,  , =
li  $t0, 0
sw  $t0, 84($sp)
#t80 , t78 , t79 , =*
lw  $t1, 80($sp)
lw  $t2, 84($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 88($sp)
#putchar , t80 ,  , 
lw  $a0, 88($sp)
li  $v0, 11
syscall 
#t81 , 4 ,  , =
li  $t0, 4
sw  $t0, 92($sp)
#t82 , t78 , t81 , =*
lw  $t1, 80($sp)
lw  $t2, 92($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 96($sp)
#putchar , t82 ,  , 
lw  $a0, 96($sp)
li  $v0, 11
syscall 
#t83 , 8 ,  , =
li  $t0, 8
sw  $t0, 100($sp)
#t84 , t78 , t83 , =*
lw  $t1, 80($sp)
lw  $t2, 100($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 104($sp)
#putchar , t84 ,  , 
lw  $a0, 104($sp)
li  $v0, 11
syscall 
#t85 , 12 ,  , =
li  $t0, 12
sw  $t0, 108($sp)
#t86 , t78 , t85 , =*
lw  $t1, 80($sp)
lw  $t2, 108($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 112($sp)
#putchar , t86 ,  , 
lw  $a0, 112($sp)
li  $v0, 11
syscall 
#t87 , 16 ,  , =
li  $t0, 16
sw  $t0, 116($sp)
#t88 , t78 , t87 , =*
lw  $t1, 80($sp)
lw  $t2, 116($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 120($sp)
#putchar , t88 ,  , 
lw  $a0, 120($sp)
li  $v0, 11
syscall 
#t89 , 20 ,  , =
li  $t0, 20
sw  $t0, 124($sp)
#t90 , t78 , t89 , =*
lw  $t1, 80($sp)
lw  $t2, 124($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#putchar , t90 ,  , 
lw  $a0, 128($sp)
li  $v0, 11
syscall 
#t91 , 24 ,  , =
li  $t0, 24
sw  $t0, 132($sp)
#t92 , t78 , t91 , =*
lw  $t1, 80($sp)
lw  $t2, 132($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 136($sp)
#putchar , t92 ,  , 
lw  $a0, 136($sp)
li  $v0, 11
syscall 
#t93 , 28 ,  , =
li  $t0, 28
sw  $t0, 140($sp)
#t94 , t78 , t93 , =*
lw  $t1, 80($sp)
lw  $t2, 140($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 144($sp)
#putchar , t94 ,  , 
lw  $a0, 144($sp)
li  $v0, 11
syscall 
#t95 , 32 ,  , =
li  $t0, 32
sw  $t0, 148($sp)
#t96 , t78 , t95 , =*
lw  $t1, 80($sp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putchar , t96 ,  , 
lw  $a0, 152($sp)
li  $v0, 11
syscall 
#t97 , '\n' ,  , =
li  $t0, 10
sw  $t0, 156($sp)
#putchar , t97 ,  , 
lw  $a0, 156($sp)
li  $v0, 11
syscall 
#t99 , 4 ,  , =
li  $t0, 4
sw  $t0, 160($sp)
#t98 , t58 , t99 , =*
lw  $t1, 0($sp)
lw  $t2, 160($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 164($sp)
#param , t98 ,  , 
lw  $t0, 164($sp)
sw  $t0, -4($sp)
#t100 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 168($sp)
#t102 , 4 ,  , =
li  $t0, 4
sw  $t0, 172($sp)
#t101 , t58 , t102 , =*
lw  $t1, 0($sp)
lw  $t2, 172($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 176($sp)
#t103 , t100 , t101 , /
lw  $t1, 168($sp)
lw  $t2, 176($sp)
div  $t0, $t1, $t2
sw  $t0, 180($sp)
#return , t103 ,  , 
lw  $v0, 180($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t104 , nil ,  , =
li  $t0, 0
sw  $t0, 184($sp)
#return , t104 ,  , 
lw  $v0, 184($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l8 ,  , 
l8: 
#goto , l9 ,  , 
b  l9
#label , m6 ,  , 
m6: 
#methodStarts , m6 ,  , 
addi  $sp, $sp, -32
#t105 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t106 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t108 , 4 ,  , =
li  $t0, 4
sw  $t0, 8($sp)
#t107 , t106 , t108 , =*
lw  $t1, 4($sp)
lw  $t2, 8($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 12($sp)
#t109 , t105 , t107 , +
lw  $t1, 0($sp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#param , t106 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#t110 , m5 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m5
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 20($sp)
#t111 , t109 , t110 , +
lw  $t1, 16($sp)
lw  $t2, 20($sp)
add  $t0, $t1, $t2
sw  $t0, 24($sp)
#return , t111 ,  , 
lw  $v0, 24($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t112 , nil ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#return , t112 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l9 ,  , 
l9: 
#t113 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t114 , t113 ,  , =
lw  $t0, 4($sp)
sw  $t0, 4($gp)
#t115 , 2 ,  , =
li  $t0, 2
sw  $t0, 8($sp)
#t114 , t115 ,  , =
lw  $t0, 8($sp)
sw  $t0, 4($gp)
#goto , l10 ,  , 
b  l10
#label , m7 ,  , 
m7: 
#methodStarts , m7 ,  , 
addi  $sp, $sp, -8
#t116 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#return , t116 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t117 , nil ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#return , t117 ,  , 
lw  $v0, 4($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l10 ,  , 
l10: 
#t118 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 12($sp)
#t119 , 'h' ,  , =
li  $t0, 104
sw  $t0, 16($sp)
#t120 , 0 ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t118 , t120 , t119 , *=
lw  $t0, 12($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t121 , 'a' ,  , =
li  $t0, 97
sw  $t0, 24($sp)
#t122 , 4 ,  , =
li  $t0, 4
sw  $t0, 28($sp)
#t118 , t122 , t121 , *=
lw  $t0, 12($sp)
lw  $t1, 28($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t123 , 'h' ,  , =
li  $t0, 104
sw  $t0, 32($sp)
#t124 , 8 ,  , =
li  $t0, 8
sw  $t0, 36($sp)
#t118 , t124 , t123 , *=
lw  $t0, 12($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t125 , 'a' ,  , =
li  $t0, 97
sw  $t0, 40($sp)
#t126 , 12 ,  , =
li  $t0, 12
sw  $t0, 44($sp)
#t118 , t126 , t125 , *=
lw  $t0, 12($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t127 , '\0' ,  , =
li  $t0, 0
sw  $t0, 48($sp)
#t128 , 16 ,  , =
li  $t0, 16
sw  $t0, 52($sp)
#t118 , t128 , t127 , *=
lw  $t0, 12($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t129 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 56($sp)
#t130 , 'h' ,  , =
li  $t0, 104
sw  $t0, 60($sp)
#t131 , 0 ,  , =
li  $t0, 0
sw  $t0, 64($sp)
#t129 , t131 , t130 , *=
lw  $t0, 56($sp)
lw  $t1, 64($sp)
lw  $t2, 60($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t132 , 'a' ,  , =
li  $t0, 97
sw  $t0, 68($sp)
#t133 , 4 ,  , =
li  $t0, 4
sw  $t0, 72($sp)
#t129 , t133 , t132 , *=
lw  $t0, 56($sp)
lw  $t1, 72($sp)
lw  $t2, 68($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t134 , 'd' ,  , =
li  $t0, 100
sw  $t0, 76($sp)
#t135 , 8 ,  , =
li  $t0, 8
sw  $t0, 80($sp)
#t129 , t135 , t134 , *=
lw  $t0, 56($sp)
lw  $t1, 80($sp)
lw  $t2, 76($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t136 , 's' ,  , =
li  $t0, 115
sw  $t0, 84($sp)
#t137 , 12 ,  , =
li  $t0, 12
sw  $t0, 88($sp)
#t129 , t137 , t136 , *=
lw  $t0, 56($sp)
lw  $t1, 88($sp)
lw  $t2, 84($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t138 , '\0' ,  , =
li  $t0, 0
sw  $t0, 92($sp)
#t139 , 16 ,  , =
li  $t0, 16
sw  $t0, 96($sp)
#t129 , t139 , t138 , *=
lw  $t0, 56($sp)
lw  $t1, 96($sp)
lw  $t2, 92($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t140 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 100($sp)
#t141 , 0 ,  , =
li  $t0, 0
sw  $t0, 104($sp)
#t140 , t141 , t118 , *=
lw  $t0, 100($sp)
lw  $t1, 104($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t142 , 4 ,  , =
li  $t0, 4
sw  $t0, 108($sp)
#t140 , t142 , t129 , *=
lw  $t0, 100($sp)
lw  $t1, 108($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t143 , t140 ,  , =
lw  $t0, 100($sp)
sw  $t0, 112($sp)
#t144 , 1 ,  , =
li  $t0, 1
sw  $t0, 116($sp)
#t145 , 4 ,  , =
li  $t0, 4
sw  $t0, 120($sp)
#t146 , t144 , t145 , *
lw  $t1, 116($sp)
lw  $t2, 120($sp)
mul  $t0, $t1, $t2
sw  $t0, 124($sp)
#t147 , t143 , t146 , =*
lw  $t1, 112($sp)
lw  $t2, 124($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#t148 , 0 ,  , =
li  $t0, 0
sw  $t0, 132($sp)
#t149 , t147 , t148 , =*
lw  $t1, 128($sp)
lw  $t2, 132($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 136($sp)
#putchar , t149 ,  , 
lw  $a0, 136($sp)
li  $v0, 11
syscall 
#t150 , 4 ,  , =
li  $t0, 4
sw  $t0, 140($sp)
#t151 , t147 , t150 , =*
lw  $t1, 128($sp)
lw  $t2, 140($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 144($sp)
#putchar , t151 ,  , 
lw  $a0, 144($sp)
li  $v0, 11
syscall 
#t152 , 8 ,  , =
li  $t0, 8
sw  $t0, 148($sp)
#t153 , t147 , t152 , =*
lw  $t1, 128($sp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putchar , t153 ,  , 
lw  $a0, 152($sp)
li  $v0, 11
syscall 
#t154 , 12 ,  , =
li  $t0, 12
sw  $t0, 156($sp)
#t155 , t147 , t154 , =*
lw  $t1, 128($sp)
lw  $t2, 156($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 160($sp)
#putchar , t155 ,  , 
lw  $a0, 160($sp)
li  $v0, 11
syscall 
#t156 , 16 ,  , =
li  $t0, 16
sw  $t0, 164($sp)
#t157 , t147 , t156 , =*
lw  $t1, 128($sp)
lw  $t2, 164($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 168($sp)
#putchar , t157 ,  , 
lw  $a0, 168($sp)
li  $v0, 11
syscall 
#t158 , '\n' ,  , =
li  $t0, 10
sw  $t0, 172($sp)
#putchar , t158 ,  , 
lw  $a0, 172($sp)
li  $v0, 11
syscall 
#t159 , 0 ,  , =
li  $t0, 0
sw  $t0, 176($sp)
#t160 , 4 ,  , =
li  $t0, 4
sw  $t0, 180($sp)
#t161 , t159 , t160 , *
lw  $t1, 176($sp)
lw  $t2, 180($sp)
mul  $t0, $t1, $t2
sw  $t0, 184($sp)
#t162 , t143 , t161 , =*
lw  $t1, 112($sp)
lw  $t2, 184($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 188($sp)
#t163 , 0 ,  , =
li  $t0, 0
sw  $t0, 192($sp)
#t164 , t162 , t163 , =*
lw  $t1, 188($sp)
lw  $t2, 192($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 196($sp)
#putchar , t164 ,  , 
lw  $a0, 196($sp)
li  $v0, 11
syscall 
#t165 , 4 ,  , =
li  $t0, 4
sw  $t0, 200($sp)
#t166 , t162 , t165 , =*
lw  $t1, 188($sp)
lw  $t2, 200($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 204($sp)
#putchar , t166 ,  , 
lw  $a0, 204($sp)
li  $v0, 11
syscall 
#t167 , 8 ,  , =
li  $t0, 8
sw  $t0, 208($sp)
#t168 , t162 , t167 , =*
lw  $t1, 188($sp)
lw  $t2, 208($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 212($sp)
#putchar , t168 ,  , 
lw  $a0, 212($sp)
li  $v0, 11
syscall 
#t169 , 12 ,  , =
li  $t0, 12
sw  $t0, 216($sp)
#t170 , t162 , t169 , =*
lw  $t1, 188($sp)
lw  $t2, 216($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 220($sp)
#putchar , t170 ,  , 
lw  $a0, 220($sp)
li  $v0, 11
syscall 
#t171 , 16 ,  , =
li  $t0, 16
sw  $t0, 224($sp)
#t172 , t162 , t171 , =*
lw  $t1, 188($sp)
lw  $t2, 224($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 228($sp)
#putchar , t172 ,  , 
lw  $a0, 228($sp)
li  $v0, 11
syscall 
#t173 , '\n' ,  , =
li  $t0, 10
sw  $t0, 232($sp)
#putchar , t173 ,  , 
lw  $a0, 232($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall