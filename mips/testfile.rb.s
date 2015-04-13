.text 
main:
addi  $sp, $sp, -28
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
#t111 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 4($sp)
#param , t111 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#t112 , m3 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m3
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 8($sp)
#t113 , t112 ,  , =
lw  $t0, 8($sp)
sw  $t0, 12($sp)
#t114 , 5 ,  , =
li  $t0, 5
sw  $t0, 16($sp)
#param , t113 ,  , 
lw  $t0, 12($sp)
sw  $t0, -4($sp)
#param , t114 ,  , 
lw  $t0, 16($sp)
sw  $t0, -8($sp)
#t115 , m5 ,  , call
addi  $sp, $sp, -8
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m5
lw  $ra, 0($sp)
addi  $sp, $sp, 16
sw  $v0, 20($sp)
#putint , t115 ,  , 
lw  $a0, 20($sp)
li  $v0, 1
syscall 
exit:
li $v0, 10 
syscall