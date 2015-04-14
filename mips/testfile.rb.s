.text 
main:
addi  $sp, $sp, -360
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
#t9 , 3 ,  , =
li  $t0, 3
sw  $t0, 0($sp)
#t10 , t9 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#goto , l4 ,  , 
b  l4
#label , m1 ,  , 
m1: 
#methodStarts , m1 ,  , 
addi  $sp, $sp, -144
#t11 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t12 , 60 ,  , new
li  $a0, 60
li  $v0, 9
syscall 
sw  $v0, 4($sp)
#t13 , 'Y' ,  , =
li  $t0, 89
sw  $t0, 8($sp)
#t14 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t12 , t14 , t13 , *=
lw  $t0, 4($sp)
lw  $t1, 12($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t15 , 'o' ,  , =
li  $t0, 111
sw  $t0, 16($sp)
#t16 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t12 , t16 , t15 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t17 , 'u' ,  , =
li  $t0, 117
sw  $t0, 24($sp)
#t18 , 8 ,  , =
li  $t0, 8
sw  $t0, 28($sp)
#t12 , t18 , t17 , *=
lw  $t0, 4($sp)
lw  $t1, 28($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t19 , ''' ,  , =
li  $t0, 39
sw  $t0, 32($sp)
#t20 , 12 ,  , =
li  $t0, 12
sw  $t0, 36($sp)
#t12 , t20 , t19 , *=
lw  $t0, 4($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t21 , 'r' ,  , =
li  $t0, 114
sw  $t0, 40($sp)
#t22 , 16 ,  , =
li  $t0, 16
sw  $t0, 44($sp)
#t12 , t22 , t21 , *=
lw  $t0, 4($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t23 , 'e' ,  , =
li  $t0, 101
sw  $t0, 48($sp)
#t24 , 20 ,  , =
li  $t0, 20
sw  $t0, 52($sp)
#t12 , t24 , t23 , *=
lw  $t0, 4($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t25 , ' ' ,  , =
li  $t0, 32
sw  $t0, 56($sp)
#t26 , 24 ,  , =
li  $t0, 24
sw  $t0, 60($sp)
#t12 , t26 , t25 , *=
lw  $t0, 4($sp)
lw  $t1, 60($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t27 , 'a' ,  , =
li  $t0, 97
sw  $t0, 64($sp)
#t28 , 28 ,  , =
li  $t0, 28
sw  $t0, 68($sp)
#t12 , t28 , t27 , *=
lw  $t0, 4($sp)
lw  $t1, 68($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t29 , ' ' ,  , =
li  $t0, 32
sw  $t0, 72($sp)
#t30 , 32 ,  , =
li  $t0, 32
sw  $t0, 76($sp)
#t12 , t30 , t29 , *=
lw  $t0, 4($sp)
lw  $t1, 76($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t31 , 'b' ,  , =
li  $t0, 98
sw  $t0, 80($sp)
#t32 , 36 ,  , =
li  $t0, 36
sw  $t0, 84($sp)
#t12 , t32 , t31 , *=
lw  $t0, 4($sp)
lw  $t1, 84($sp)
lw  $t2, 80($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t33 , 'a' ,  , =
li  $t0, 97
sw  $t0, 88($sp)
#t34 , 40 ,  , =
li  $t0, 40
sw  $t0, 92($sp)
#t12 , t34 , t33 , *=
lw  $t0, 4($sp)
lw  $t1, 92($sp)
lw  $t2, 88($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t35 , 's' ,  , =
li  $t0, 115
sw  $t0, 96($sp)
#t36 , 44 ,  , =
li  $t0, 44
sw  $t0, 100($sp)
#t12 , t36 , t35 , *=
lw  $t0, 4($sp)
lw  $t1, 100($sp)
lw  $t2, 96($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t37 , 'i' ,  , =
li  $t0, 105
sw  $t0, 104($sp)
#t38 , 48 ,  , =
li  $t0, 48
sw  $t0, 108($sp)
#t12 , t38 , t37 , *=
lw  $t0, 4($sp)
lw  $t1, 108($sp)
lw  $t2, 104($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t39 , 'c' ,  , =
li  $t0, 99
sw  $t0, 112($sp)
#t40 , 52 ,  , =
li  $t0, 52
sw  $t0, 116($sp)
#t12 , t40 , t39 , *=
lw  $t0, 4($sp)
lw  $t1, 116($sp)
lw  $t2, 112($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t41 , '\0' ,  , =
li  $t0, 0
sw  $t0, 120($sp)
#t42 , 56 ,  , =
li  $t0, 56
sw  $t0, 124($sp)
#t12 , t42 , t41 , *=
lw  $t0, 4($sp)
lw  $t1, 124($sp)
lw  $t2, 120($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t43 , 0 ,  , =
li  $t0, 0
sw  $t0, 128($sp)
#t11 , t43 , t12 , *=
lw  $t0, 0($sp)
lw  $t1, 128($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t44 , 4 ,  , =
li  $t0, 4
sw  $t0, 132($sp)
#t45 , 4 ,  , =
li  $t0, 4
sw  $t0, 136($sp)
#t11 , t45 , t44 , *=
lw  $t0, 0($sp)
lw  $t1, 136($sp)
lw  $t2, 132($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t11 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t46 , nil ,  , =
li  $t0, 0
sw  $t0, 140($sp)
#return , t46 ,  , 
lw  $v0, 140($sp)
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
addi  $sp, $sp, -20
#t47 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t49 , 4 ,  , =
li  $t0, 4
sw  $t0, 4($sp)
#t48 , t47 , t49 , =*
lw  $t1, 0($sp)
lw  $t2, 4($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 8($sp)
#param , t48 ,  , 
lw  $t0, 8($sp)
sw  $t0, -4($sp)
#t50 , m0 ,  , call
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
#return , t50 ,  , 
lw  $v0, 12($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t51 , nil ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#return , t51 ,  , 
lw  $v0, 16($sp)
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
addi  $sp, $sp, -16
#t52 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t53 , 5 ,  , =
li  $t0, 5
sw  $t0, 4($sp)
#t54 , 4 ,  , =
li  $t0, 4
sw  $t0, 8($sp)
#t52 , t54 , t53 , *=
lw  $t0, 0($sp)
lw  $t1, 8($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#return , t52 ,  , 
lw  $v0, 0($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t55 , nil ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#return , t55 ,  , 
lw  $v0, 12($sp)
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
addi  $sp, $sp, -188
#t56 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t57 , 36 ,  , new
li  $a0, 36
li  $v0, 9
syscall 
sw  $v0, 4($sp)
#t58 , 'I' ,  , =
li  $t0, 73
sw  $t0, 8($sp)
#t59 , 0 ,  , =
li  $t0, 0
sw  $t0, 12($sp)
#t57 , t59 , t58 , *=
lw  $t0, 4($sp)
lw  $t1, 12($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t60 , ''' ,  , =
li  $t0, 39
sw  $t0, 16($sp)
#t61 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t57 , t61 , t60 , *=
lw  $t0, 4($sp)
lw  $t1, 20($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t62 , 'm' ,  , =
li  $t0, 109
sw  $t0, 24($sp)
#t63 , 8 ,  , =
li  $t0, 8
sw  $t0, 28($sp)
#t57 , t63 , t62 , *=
lw  $t0, 4($sp)
lw  $t1, 28($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t64 , ' ' ,  , =
li  $t0, 32
sw  $t0, 32($sp)
#t65 , 12 ,  , =
li  $t0, 12
sw  $t0, 36($sp)
#t57 , t65 , t64 , *=
lw  $t0, 4($sp)
lw  $t1, 36($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t66 , 'h' ,  , =
li  $t0, 104
sw  $t0, 40($sp)
#t67 , 16 ,  , =
li  $t0, 16
sw  $t0, 44($sp)
#t57 , t67 , t66 , *=
lw  $t0, 4($sp)
lw  $t1, 44($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t68 , 'e' ,  , =
li  $t0, 101
sw  $t0, 48($sp)
#t69 , 20 ,  , =
li  $t0, 20
sw  $t0, 52($sp)
#t57 , t69 , t68 , *=
lw  $t0, 4($sp)
lw  $t1, 52($sp)
lw  $t2, 48($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t70 , 'r' ,  , =
li  $t0, 114
sw  $t0, 56($sp)
#t71 , 24 ,  , =
li  $t0, 24
sw  $t0, 60($sp)
#t57 , t71 , t70 , *=
lw  $t0, 4($sp)
lw  $t1, 60($sp)
lw  $t2, 56($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t72 , 'e' ,  , =
li  $t0, 101
sw  $t0, 64($sp)
#t73 , 28 ,  , =
li  $t0, 28
sw  $t0, 68($sp)
#t57 , t73 , t72 , *=
lw  $t0, 4($sp)
lw  $t1, 68($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t74 , '\0' ,  , =
li  $t0, 0
sw  $t0, 72($sp)
#t75 , 32 ,  , =
li  $t0, 32
sw  $t0, 76($sp)
#t57 , t75 , t74 , *=
lw  $t0, 4($sp)
lw  $t1, 76($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t76 , t57 ,  , =
lw  $t0, 4($sp)
sw  $t0, 80($sp)
#t77 , 0 ,  , =
li  $t0, 0
sw  $t0, 84($sp)
#t78 , t76 , t77 , =*
lw  $t1, 80($sp)
lw  $t2, 84($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 88($sp)
#putchar , t78 ,  , 
lw  $a0, 88($sp)
li  $v0, 11
syscall 
#t79 , 4 ,  , =
li  $t0, 4
sw  $t0, 92($sp)
#t80 , t76 , t79 , =*
lw  $t1, 80($sp)
lw  $t2, 92($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 96($sp)
#putchar , t80 ,  , 
lw  $a0, 96($sp)
li  $v0, 11
syscall 
#t81 , 8 ,  , =
li  $t0, 8
sw  $t0, 100($sp)
#t82 , t76 , t81 , =*
lw  $t1, 80($sp)
lw  $t2, 100($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 104($sp)
#putchar , t82 ,  , 
lw  $a0, 104($sp)
li  $v0, 11
syscall 
#t83 , 12 ,  , =
li  $t0, 12
sw  $t0, 108($sp)
#t84 , t76 , t83 , =*
lw  $t1, 80($sp)
lw  $t2, 108($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 112($sp)
#putchar , t84 ,  , 
lw  $a0, 112($sp)
li  $v0, 11
syscall 
#t85 , 16 ,  , =
li  $t0, 16
sw  $t0, 116($sp)
#t86 , t76 , t85 , =*
lw  $t1, 80($sp)
lw  $t2, 116($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 120($sp)
#putchar , t86 ,  , 
lw  $a0, 120($sp)
li  $v0, 11
syscall 
#t87 , 20 ,  , =
li  $t0, 20
sw  $t0, 124($sp)
#t88 , t76 , t87 , =*
lw  $t1, 80($sp)
lw  $t2, 124($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#putchar , t88 ,  , 
lw  $a0, 128($sp)
li  $v0, 11
syscall 
#t89 , 24 ,  , =
li  $t0, 24
sw  $t0, 132($sp)
#t90 , t76 , t89 , =*
lw  $t1, 80($sp)
lw  $t2, 132($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 136($sp)
#putchar , t90 ,  , 
lw  $a0, 136($sp)
li  $v0, 11
syscall 
#t91 , 28 ,  , =
li  $t0, 28
sw  $t0, 140($sp)
#t92 , t76 , t91 , =*
lw  $t1, 80($sp)
lw  $t2, 140($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 144($sp)
#putchar , t92 ,  , 
lw  $a0, 144($sp)
li  $v0, 11
syscall 
#t93 , 32 ,  , =
li  $t0, 32
sw  $t0, 148($sp)
#t94 , t76 , t93 , =*
lw  $t1, 80($sp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putchar , t94 ,  , 
lw  $a0, 152($sp)
li  $v0, 11
syscall 
#t95 , '\n' ,  , =
li  $t0, 10
sw  $t0, 156($sp)
#putchar , t95 ,  , 
lw  $a0, 156($sp)
li  $v0, 11
syscall 
#t97 , 4 ,  , =
li  $t0, 4
sw  $t0, 160($sp)
#t96 , t56 , t97 , =*
lw  $t1, 0($sp)
lw  $t2, 160($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 164($sp)
#param , t96 ,  , 
lw  $t0, 164($sp)
sw  $t0, -4($sp)
#t98 , m0 ,  , call
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
#t100 , 4 ,  , =
li  $t0, 4
sw  $t0, 172($sp)
#t99 , t56 , t100 , =*
lw  $t1, 0($sp)
lw  $t2, 172($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 176($sp)
#t101 , t98 , t99 , /
lw  $t1, 168($sp)
lw  $t2, 176($sp)
div  $t0, $t1, $t2
sw  $t0, 180($sp)
#return , t101 ,  , 
lw  $v0, 180($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t102 , nil ,  , =
li  $t0, 0
sw  $t0, 184($sp)
#return , t102 ,  , 
lw  $v0, 184($sp)
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
addi  $sp, $sp, -32
#t103 ,  ,  , getarg
lw  $t0, 8($fp)
sw  $t0, 0($sp)
#t104 ,  ,  , getarg
lw  $t0, 12($fp)
sw  $t0, 4($sp)
#t106 , 4 ,  , =
li  $t0, 4
sw  $t0, 8($sp)
#t105 , t104 , t106 , =*
lw  $t1, 4($sp)
lw  $t2, 8($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 12($sp)
#t107 , t103 , t105 , +
lw  $t1, 0($sp)
lw  $t2, 12($sp)
add  $t0, $t1, $t2
sw  $t0, 16($sp)
#param , t104 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#t108 , m4 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m4
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 20($sp)
#t109 , t107 , t108 , +
lw  $t1, 16($sp)
lw  $t2, 20($sp)
add  $t0, $t1, $t2
sw  $t0, 24($sp)
#return , t109 ,  , 
lw  $v0, 24($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#t110 , nil ,  , =
li  $t0, 0
sw  $t0, 28($sp)
#return , t110 ,  , 
lw  $v0, 28($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l8 ,  , 
l8: 
#t111 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t112 , 2 ,  , =
li  $t0, 2
sw  $t0, 8($sp)
#t113 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 12($sp)
#t114 , 0 ,  , =
li  $t0, 0
sw  $t0, 16($sp)
#t113 , t114 , t111 , *=
lw  $t0, 12($sp)
lw  $t1, 16($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t115 , 4 ,  , =
li  $t0, 4
sw  $t0, 20($sp)
#t113 , t115 , t112 , *=
lw  $t0, 12($sp)
lw  $t1, 20($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t116 , 3 ,  , =
li  $t0, 3
sw  $t0, 24($sp)
#t117 , 4 ,  , =
li  $t0, 4
sw  $t0, 28($sp)
#t118 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 32($sp)
#t119 , 0 ,  , =
li  $t0, 0
sw  $t0, 36($sp)
#t118 , t119 , t116 , *=
lw  $t0, 32($sp)
lw  $t1, 36($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t120 , 4 ,  , =
li  $t0, 4
sw  $t0, 40($sp)
#t118 , t120 , t117 , *=
lw  $t0, 32($sp)
lw  $t1, 40($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t121 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 44($sp)
#t122 , 0 ,  , =
li  $t0, 0
sw  $t0, 48($sp)
#t121 , t122 , t113 , *=
lw  $t0, 44($sp)
lw  $t1, 48($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t123 , 4 ,  , =
li  $t0, 4
sw  $t0, 52($sp)
#t121 , t123 , t118 , *=
lw  $t0, 44($sp)
lw  $t1, 52($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t124 , t121 ,  , =
lw  $t0, 44($sp)
sw  $t0, 56($sp)
#t125 , 5 ,  , =
li  $t0, 5
sw  $t0, 60($sp)
#t126 , 6 ,  , =
li  $t0, 6
sw  $t0, 64($sp)
#t127 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 68($sp)
#t128 , 0 ,  , =
li  $t0, 0
sw  $t0, 72($sp)
#t127 , t128 , t125 , *=
lw  $t0, 68($sp)
lw  $t1, 72($sp)
lw  $t2, 60($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t129 , 4 ,  , =
li  $t0, 4
sw  $t0, 76($sp)
#t127 , t129 , t126 , *=
lw  $t0, 68($sp)
lw  $t1, 76($sp)
lw  $t2, 64($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t130 , t127 ,  , =
lw  $t0, 68($sp)
sw  $t0, 80($sp)
#t131 , 1 ,  , =
li  $t0, 1
sw  $t0, 84($sp)
#t132 , 4 ,  , =
li  $t0, 4
sw  $t0, 88($sp)
#t133 , t131 , t132 , *
lw  $t1, 84($sp)
lw  $t2, 88($sp)
mul  $t0, $t1, $t2
sw  $t0, 92($sp)
#t124 , t133 , t130 , *=
lw  $t0, 56($sp)
lw  $t1, 92($sp)
lw  $t2, 80($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t134 , 1 ,  , =
li  $t0, 1
sw  $t0, 96($sp)
#t135 , 4 ,  , =
li  $t0, 4
sw  $t0, 100($sp)
#t136 , t134 , t135 , *
lw  $t1, 96($sp)
lw  $t2, 100($sp)
mul  $t0, $t1, $t2
sw  $t0, 104($sp)
#t137 , t124 , t136 , =*
lw  $t1, 56($sp)
lw  $t2, 104($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 108($sp)
#t138 , 1 ,  , =
li  $t0, 1
sw  $t0, 112($sp)
#t139 , 4 ,  , =
li  $t0, 4
sw  $t0, 116($sp)
#t140 , t138 , t139 , *
lw  $t1, 112($sp)
lw  $t2, 116($sp)
mul  $t0, $t1, $t2
sw  $t0, 120($sp)
#t141 , t137 , t140 , =*
lw  $t1, 108($sp)
lw  $t2, 120($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 124($sp)
#putint , t141 ,  , 
lw  $a0, 124($sp)
li  $v0, 1
syscall 
#t142 , '\n' ,  , =
li  $t0, 10
sw  $t0, 128($sp)
#putchar , t142 ,  , 
lw  $a0, 128($sp)
li  $v0, 11
syscall 
#t143 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 132($sp)
#t144 , 'h' ,  , =
li  $t0, 104
sw  $t0, 136($sp)
#t145 , 0 ,  , =
li  $t0, 0
sw  $t0, 140($sp)
#t143 , t145 , t144 , *=
lw  $t0, 132($sp)
lw  $t1, 140($sp)
lw  $t2, 136($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t146 , 'a' ,  , =
li  $t0, 97
sw  $t0, 144($sp)
#t147 , 4 ,  , =
li  $t0, 4
sw  $t0, 148($sp)
#t143 , t147 , t146 , *=
lw  $t0, 132($sp)
lw  $t1, 148($sp)
lw  $t2, 144($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t148 , 'h' ,  , =
li  $t0, 104
sw  $t0, 152($sp)
#t149 , 8 ,  , =
li  $t0, 8
sw  $t0, 156($sp)
#t143 , t149 , t148 , *=
lw  $t0, 132($sp)
lw  $t1, 156($sp)
lw  $t2, 152($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t150 , 'a' ,  , =
li  $t0, 97
sw  $t0, 160($sp)
#t151 , 12 ,  , =
li  $t0, 12
sw  $t0, 164($sp)
#t143 , t151 , t150 , *=
lw  $t0, 132($sp)
lw  $t1, 164($sp)
lw  $t2, 160($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t152 , '\0' ,  , =
li  $t0, 0
sw  $t0, 168($sp)
#t153 , 16 ,  , =
li  $t0, 16
sw  $t0, 172($sp)
#t143 , t153 , t152 , *=
lw  $t0, 132($sp)
lw  $t1, 172($sp)
lw  $t2, 168($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t154 , 20 ,  , new
li  $a0, 20
li  $v0, 9
syscall 
sw  $v0, 176($sp)
#t155 , 'h' ,  , =
li  $t0, 104
sw  $t0, 180($sp)
#t156 , 0 ,  , =
li  $t0, 0
sw  $t0, 184($sp)
#t154 , t156 , t155 , *=
lw  $t0, 176($sp)
lw  $t1, 184($sp)
lw  $t2, 180($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t157 , 'a' ,  , =
li  $t0, 97
sw  $t0, 188($sp)
#t158 , 4 ,  , =
li  $t0, 4
sw  $t0, 192($sp)
#t154 , t158 , t157 , *=
lw  $t0, 176($sp)
lw  $t1, 192($sp)
lw  $t2, 188($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t159 , 'd' ,  , =
li  $t0, 100
sw  $t0, 196($sp)
#t160 , 8 ,  , =
li  $t0, 8
sw  $t0, 200($sp)
#t154 , t160 , t159 , *=
lw  $t0, 176($sp)
lw  $t1, 200($sp)
lw  $t2, 196($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t161 , 's' ,  , =
li  $t0, 115
sw  $t0, 204($sp)
#t162 , 12 ,  , =
li  $t0, 12
sw  $t0, 208($sp)
#t154 , t162 , t161 , *=
lw  $t0, 176($sp)
lw  $t1, 208($sp)
lw  $t2, 204($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t163 , '\0' ,  , =
li  $t0, 0
sw  $t0, 212($sp)
#t164 , 16 ,  , =
li  $t0, 16
sw  $t0, 216($sp)
#t154 , t164 , t163 , *=
lw  $t0, 176($sp)
lw  $t1, 216($sp)
lw  $t2, 212($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t165 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 220($sp)
#t166 , 0 ,  , =
li  $t0, 0
sw  $t0, 224($sp)
#t165 , t166 , t143 , *=
lw  $t0, 220($sp)
lw  $t1, 224($sp)
lw  $t2, 132($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t167 , 4 ,  , =
li  $t0, 4
sw  $t0, 228($sp)
#t165 , t167 , t154 , *=
lw  $t0, 220($sp)
lw  $t1, 228($sp)
lw  $t2, 176($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t168 , t165 ,  , =
lw  $t0, 220($sp)
sw  $t0, 232($sp)
#t169 , 1 ,  , =
li  $t0, 1
sw  $t0, 236($sp)
#t170 , 4 ,  , =
li  $t0, 4
sw  $t0, 240($sp)
#t171 , t169 , t170 , *
lw  $t1, 236($sp)
lw  $t2, 240($sp)
mul  $t0, $t1, $t2
sw  $t0, 244($sp)
#t172 , t168 , t171 , =*
lw  $t1, 232($sp)
lw  $t2, 244($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 248($sp)
#t173 , 0 ,  , =
li  $t0, 0
sw  $t0, 252($sp)
#t174 , t172 , t173 , =*
lw  $t1, 248($sp)
lw  $t2, 252($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 256($sp)
#putchar , t174 ,  , 
lw  $a0, 256($sp)
li  $v0, 11
syscall 
#t175 , 4 ,  , =
li  $t0, 4
sw  $t0, 260($sp)
#t176 , t172 , t175 , =*
lw  $t1, 248($sp)
lw  $t2, 260($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 264($sp)
#putchar , t176 ,  , 
lw  $a0, 264($sp)
li  $v0, 11
syscall 
#t177 , 8 ,  , =
li  $t0, 8
sw  $t0, 268($sp)
#t178 , t172 , t177 , =*
lw  $t1, 248($sp)
lw  $t2, 268($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 272($sp)
#putchar , t178 ,  , 
lw  $a0, 272($sp)
li  $v0, 11
syscall 
#t179 , 12 ,  , =
li  $t0, 12
sw  $t0, 276($sp)
#t180 , t172 , t179 , =*
lw  $t1, 248($sp)
lw  $t2, 276($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 280($sp)
#putchar , t180 ,  , 
lw  $a0, 280($sp)
li  $v0, 11
syscall 
#t181 , 16 ,  , =
li  $t0, 16
sw  $t0, 284($sp)
#t182 , t172 , t181 , =*
lw  $t1, 248($sp)
lw  $t2, 284($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 288($sp)
#putchar , t182 ,  , 
lw  $a0, 288($sp)
li  $v0, 11
syscall 
#t183 , '\n' ,  , =
li  $t0, 10
sw  $t0, 292($sp)
#putchar , t183 ,  , 
lw  $a0, 292($sp)
li  $v0, 11
syscall 
#t184 , 0 ,  , =
li  $t0, 0
sw  $t0, 296($sp)
#t185 , 4 ,  , =
li  $t0, 4
sw  $t0, 300($sp)
#t186 , t184 , t185 , *
lw  $t1, 296($sp)
lw  $t2, 300($sp)
mul  $t0, $t1, $t2
sw  $t0, 304($sp)
#t187 , t168 , t186 , =*
lw  $t1, 232($sp)
lw  $t2, 304($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 308($sp)
#t188 , 0 ,  , =
li  $t0, 0
sw  $t0, 312($sp)
#t189 , t187 , t188 , =*
lw  $t1, 308($sp)
lw  $t2, 312($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 316($sp)
#putchar , t189 ,  , 
lw  $a0, 316($sp)
li  $v0, 11
syscall 
#t190 , 4 ,  , =
li  $t0, 4
sw  $t0, 320($sp)
#t191 , t187 , t190 , =*
lw  $t1, 308($sp)
lw  $t2, 320($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 324($sp)
#putchar , t191 ,  , 
lw  $a0, 324($sp)
li  $v0, 11
syscall 
#t192 , 8 ,  , =
li  $t0, 8
sw  $t0, 328($sp)
#t193 , t187 , t192 , =*
lw  $t1, 308($sp)
lw  $t2, 328($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 332($sp)
#putchar , t193 ,  , 
lw  $a0, 332($sp)
li  $v0, 11
syscall 
#t194 , 12 ,  , =
li  $t0, 12
sw  $t0, 336($sp)
#t195 , t187 , t194 , =*
lw  $t1, 308($sp)
lw  $t2, 336($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 340($sp)
#putchar , t195 ,  , 
lw  $a0, 340($sp)
li  $v0, 11
syscall 
#t196 , 16 ,  , =
li  $t0, 16
sw  $t0, 344($sp)
#t197 , t187 , t196 , =*
lw  $t1, 308($sp)
lw  $t2, 344($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 348($sp)
#putchar , t197 ,  , 
lw  $a0, 348($sp)
li  $v0, 11
syscall 
#t198 , '\n' ,  , =
li  $t0, 10
sw  $t0, 352($sp)
#putchar , t198 ,  , 
lw  $a0, 352($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall