.text 
main:
addi  $sp, $sp, -244
#t0 , 2 ,  , =
li  $t0, 2
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#putint , t1 ,  , 
lw  $a0, 0($gp)
li  $v0, 1
syscall 
#t2 , '\n' ,  , =
li  $t0, 10
sw  $t0, 4($sp)
#putchar , t2 ,  , 
lw  $a0, 4($sp)
li  $v0, 11
syscall 
#t3 , 5 ,  , =
li  $t0, 5
sw  $t0, 8($sp)
#t4 , 4 ,  , =
li  $t0, 4
sw  $t0, 12($sp)
#t5 , 7 ,  , =
li  $t0, 7
sw  $t0, 16($sp)
#t6 , 9 ,  , =
li  $t0, 9
sw  $t0, 20($sp)
#t7 , 0 ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#t8 , 3 ,  , =
li  $t0, 3
sw  $t0, 28($sp)
#t9 , 2 ,  , =
li  $t0, 2
sw  $t0, 32($sp)
#t10 , 11 ,  , =
li  $t0, 11
sw  $t0, 36($sp)
#t11 , 1 ,  , =
li  $t0, 1
sw  $t0, 40($sp)
#t12 , 36 ,  , new
li  $a0, 36
li  $v0, 9
syscall 
sw  $v0, 44($sp)
#t13 , 0 ,  , =
li  $t0, 0
sw  $t0, 48($sp)
#t12 , t13 , t3 , *=
lw  $t0, 44($sp)
lw  $t1, 48($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t14 , 4 ,  , =
li  $t0, 4
sw  $t0, 52($sp)
#t12 , t14 , t4 , *=
lw  $t0, 44($sp)
lw  $t1, 52($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t15 , 8 ,  , =
li  $t0, 8
sw  $t0, 56($sp)
#t12 , t15 , t5 , *=
lw  $t0, 44($sp)
lw  $t1, 56($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t16 , 12 ,  , =
li  $t0, 12
sw  $t0, 60($sp)
#t12 , t16 , t6 , *=
lw  $t0, 44($sp)
lw  $t1, 60($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t17 , 16 ,  , =
li  $t0, 16
sw  $t0, 64($sp)
#t12 , t17 , t7 , *=
lw  $t0, 44($sp)
lw  $t1, 64($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t18 , 20 ,  , =
li  $t0, 20
sw  $t0, 68($sp)
#t12 , t18 , t8 , *=
lw  $t0, 44($sp)
lw  $t1, 68($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t19 , 24 ,  , =
li  $t0, 24
sw  $t0, 72($sp)
#t12 , t19 , t9 , *=
lw  $t0, 44($sp)
lw  $t1, 72($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t20 , 28 ,  , =
li  $t0, 28
sw  $t0, 76($sp)
#t12 , t20 , t10 , *=
lw  $t0, 44($sp)
lw  $t1, 76($sp)
lw  $t2, 36($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t21 , 32 ,  , =
li  $t0, 32
sw  $t0, 80($sp)
#t12 , t21 , t11 , *=
lw  $t0, 44($sp)
lw  $t1, 80($sp)
lw  $t2, 40($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t22 , t12 ,  , =
lw  $t0, 44($sp)
sw  $t0, 4($gp)
#t23 , 0 ,  , =
li  $t0, 0
sw  $t0, 84($sp)
#t24 , 0 ,  , =
li  $t0, 0
sw  $t0, 88($sp)
#t25 , 9 ,  , =
li  $t0, 9
sw  $t0, 92($sp)
#t26 , 1 ,  , =
li  $t0, 1
sw  $t0, 96($sp)
#t27 , t25 , t26 , -
lw  $t1, 92($sp)
lw  $t2, 96($sp)
sub  $t0, $t1, $t2
sw  $t0, 100($sp)
#t28 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 104($sp)
#t29 , 0 ,  , =
li  $t0, 0
sw  $t0, 108($sp)
#t28 , t29 , t24 , *=
lw  $t0, 104($sp)
lw  $t1, 108($sp)
lw  $t2, 88($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t30 , 4 ,  , =
li  $t0, 4
sw  $t0, 112($sp)
#t28 , t30 , t27 , *=
lw  $t0, 104($sp)
lw  $t1, 112($sp)
lw  $t2, 100($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l0 ,  , 
l0: 
#t34 , 0 ,  , =
li  $t0, 0
sw  $t0, 116($sp)
#t35 , 4 ,  , =
li  $t0, 4
sw  $t0, 120($sp)
#t32 , t28 , t34 , =*
lw  $t1, 104($sp)
lw  $t2, 116($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 124($sp)
#t33 , t28 , t35 , =*
lw  $t1, 104($sp)
lw  $t2, 120($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 128($sp)
#t31 , t32 , t23 , +
lw  $t1, 124($sp)
lw  $t2, 84($sp)
add  $t0, $t1, $t2
sw  $t0, 132($sp)
#t36 , t31 , t33 , >
lw  $t1, 132($sp)
lw  $t2, 128($sp)
slt  $t0, $t2, $t1
sw  $t0, 136($sp)
#if , t36 , goto , l2
lw  $t1, 136($sp)
bnez  $t1, l2
#t37 , 1 ,  , =
li  $t0, 1
sw  $t0, 140($sp)
#t23 , t23 , t37 , +
lw  $t1, 84($sp)
lw  $t2, 140($sp)
add  $t0, $t1, $t2
sw  $t0, 84($sp)
#label , l1 ,  , 
l1: 
#t38 , 4 ,  , =
li  $t0, 4
sw  $t0, 144($sp)
#t39 , t31 , t38 , *
lw  $t1, 132($sp)
lw  $t2, 144($sp)
mul  $t0, $t1, $t2
sw  $t0, 148($sp)
#t40 , t22 , t39 , =*
lw  $t1, 4($gp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#putint , t40 ,  , 
lw  $a0, 152($sp)
li  $v0, 1
syscall 
#t41 , '\n' ,  , =
li  $t0, 10
sw  $t0, 156($sp)
#putchar , t41 ,  , 
lw  $a0, 156($sp)
li  $v0, 11
syscall 
#goto , l0 ,  , 
b  l0
#label , l2 ,  , 
l2: 
#goto , l3 ,  , 
b  l3
#label , m0 ,  , 
m0: 
#methodStarts , m0 ,  , 
addi  $sp, $sp, -176
#t42 , 0 ,  , =
li  $t0, 0
sw  $t0, 0($sp)
#t43 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t44 , 9 ,  , =
li  $t0, 9
sw  $t0, 8($sp)
#t45 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t46 , t44 , t45 , -
lw  $t1, 8($sp)
lw  $t2, 12($sp)
sub  $t0, $t1, $t2
sw  $t0, 16($sp)
#t47 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 20($sp)
#t48 , 0 ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#t47 , t48 , t43 , *=
lw  $t0, 20($sp)
lw  $t1, 24($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t49 , 4 ,  , =
li  $t0, 4
sw  $t0, 28($sp)
#t47 , t49 , t46 , *=
lw  $t0, 20($sp)
lw  $t1, 28($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l4 ,  , 
l4: 
#t53 , 0 ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#t54 , 4 ,  , =
li  $t0, 4
sw  $t0, 36($sp)
#t51 , t47 , t53 , =*
lw  $t1, 20($sp)
lw  $t2, 32($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 40($sp)
#t52 , t47 , t54 , =*
lw  $t1, 20($sp)
lw  $t2, 36($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 44($sp)
#t50 , t51 , t42 , +
lw  $t1, 40($sp)
lw  $t2, 0($sp)
add  $t0, $t1, $t2
sw  $t0, 48($sp)
#t55 , t50 , t52 , >
lw  $t1, 48($sp)
lw  $t2, 44($sp)
slt  $t0, $t2, $t1
sw  $t0, 52($sp)
#if , t55 , goto , l6
lw  $t1, 52($sp)
bnez  $t1, l6
#t56 , 1 ,  , =
li  $t0, 1
sw  $t0, 56($sp)
#t42 , t42 , t56 , +
lw  $t1, 0($sp)
lw  $t2, 56($sp)
add  $t0, $t1, $t2
sw  $t0, 0($sp)
#label , l5 ,  , 
l5: 
#t57 , 4 ,  , =
li  $t0, 4
sw  $t0, 60($sp)
#t58 , t50 , t57 , *
lw  $t1, 48($sp)
lw  $t2, 60($sp)
mul  $t0, $t1, $t2
sw  $t0, 64($sp)
#t59 , t22 , t58 , =*
lw  $t1, 4($gp)
lw  $t2, 64($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 68($sp)
#t60 , t59 ,  , =
lw  $t0, 68($sp)
sw  $t0, 72($sp)
#t61 , t50 ,  , =
lw  $t0, 48($sp)
sw  $t0, 76($sp)
#label , l7 ,  , 
l7: 
#t62 , 0 ,  , =
li  $t0, 0
sw  $t0, 80($sp)
#t63 , t61 , t62 , >
lw  $t1, 76($sp)
lw  $t2, 80($sp)
slt  $t0, $t2, $t1
sw  $t0, 84($sp)
#ifnot , t63 , goto , l10
lw  $t1, 84($sp)
beqz  $t1, l10
#t64 , 1 ,  , =
li  $t0, 1
sw  $t0, 88($sp)
#t65 , t61 , t64 , -
lw  $t1, 76($sp)
lw  $t2, 88($sp)
sub  $t0, $t1, $t2
sw  $t0, 92($sp)
#t66 , 4 ,  , =
li  $t0, 4
sw  $t0, 96($sp)
#t67 , t65 , t66 , *
lw  $t1, 92($sp)
lw  $t2, 96($sp)
mul  $t0, $t1, $t2
sw  $t0, 100($sp)
#t68 , t22 , t67 , =*
lw  $t1, 4($gp)
lw  $t2, 100($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 104($sp)
#t69 , 4 ,  , =
li  $t0, 4
sw  $t0, 108($sp)
#t70 , t50 , t69 , *
lw  $t1, 48($sp)
lw  $t2, 108($sp)
mul  $t0, $t1, $t2
sw  $t0, 112($sp)
#t71 , t22 , t70 , =*
lw  $t1, 4($gp)
lw  $t2, 112($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 116($sp)
#t72 , t68 , t71 , >
lw  $t1, 104($sp)
lw  $t2, 116($sp)
slt  $t0, $t2, $t1
sw  $t0, 120($sp)
#t73 , t72 ,  , =
lw  $t0, 120($sp)
sw  $t0, 124($sp)
#goto , l11 ,  , 
b  l11
#label , l10 ,  , 
l10: 
#t73 , false ,  , =
li  $t0, 0
sw  $t0, 124($sp)
#label , l11 ,  , 
l11: 
#ifnot , t73 , goto , l9
lw  $t1, 124($sp)
beqz  $t1, l9
#label , l8 ,  , 
l8: 
#t74 , 4 ,  , =
li  $t0, 4
sw  $t0, 128($sp)
#t75 , t61 , t74 , *
lw  $t1, 76($sp)
lw  $t2, 128($sp)
mul  $t0, $t1, $t2
sw  $t0, 132($sp)
#t76 , 1 ,  , =
li  $t0, 1
sw  $t0, 136($sp)
#t77 , t61 , t76 , -
lw  $t1, 76($sp)
lw  $t2, 136($sp)
sub  $t0, $t1, $t2
sw  $t0, 140($sp)
#t78 , 4 ,  , =
li  $t0, 4
sw  $t0, 144($sp)
#t79 , t77 , t78 , *
lw  $t1, 140($sp)
lw  $t2, 144($sp)
mul  $t0, $t1, $t2
sw  $t0, 148($sp)
#t80 , t22 , t79 , =*
lw  $t1, 4($gp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#t22 , t75 , t80 , *=
lw  $t0, 4($gp)
lw  $t1, 132($sp)
lw  $t2, 152($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t81 , 1 ,  , =
li  $t0, 1
sw  $t0, 156($sp)
#t82 , t61 , t81 , -
lw  $t1, 76($sp)
lw  $t2, 156($sp)
sub  $t0, $t1, $t2
sw  $t0, 160($sp)
#t61 , t82 ,  , =
lw  $t0, 160($sp)
sw  $t0, 76($sp)
#goto , l7 ,  , 
b  l7
#label , l9 ,  , 
l9: 
#t83 , 4 ,  , =
li  $t0, 4
sw  $t0, 164($sp)
#t84 , t61 , t83 , *
lw  $t1, 76($sp)
lw  $t2, 164($sp)
mul  $t0, $t1, $t2
sw  $t0, 168($sp)
#t22 , t84 , t60 , *=
lw  $t0, 4($gp)
lw  $t1, 168($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#goto , l4 ,  , 
b  l4
#label , l6 ,  , 
l6: 
#t85 , nil ,  , =
li  $t0, 0
sw  $t0, 172($sp)
#return , t85 ,  , 
lw  $v0, 172($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l3 ,  , 
l3: 
#t86 , 0 ,  , =
li  $t0, 0
sw  $t0, 160($sp)
#t87 , 0 ,  , =
li  $t0, 0
sw  $t0, 164($sp)
#t88 , 9 ,  , =
li  $t0, 9
sw  $t0, 168($sp)
#t89 , 1 ,  , =
li  $t0, 1
sw  $t0, 172($sp)
#t90 , t88 , t89 , -
lw  $t1, 168($sp)
lw  $t2, 172($sp)
sub  $t0, $t1, $t2
sw  $t0, 176($sp)
#t91 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 180($sp)
#t92 , 0 ,  , =
li  $t0, 0
sw  $t0, 184($sp)
#t91 , t92 , t87 , *=
lw  $t0, 180($sp)
lw  $t1, 184($sp)
lw  $t2, 164($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t93 , 4 ,  , =
li  $t0, 4
sw  $t0, 188($sp)
#t91 , t93 , t90 , *=
lw  $t0, 180($sp)
lw  $t1, 188($sp)
lw  $t2, 176($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l12 ,  , 
l12: 
#t97 , 0 ,  , =
li  $t0, 0
sw  $t0, 192($sp)
#t98 , 4 ,  , =
li  $t0, 4
sw  $t0, 196($sp)
#t95 , t91 , t97 , =*
lw  $t1, 180($sp)
lw  $t2, 192($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 200($sp)
#t96 , t91 , t98 , =*
lw  $t1, 180($sp)
lw  $t2, 196($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 204($sp)
#t94 , t95 , t86 , +
lw  $t1, 200($sp)
lw  $t2, 160($sp)
add  $t0, $t1, $t2
sw  $t0, 208($sp)
#t99 , t94 , t96 , >
lw  $t1, 208($sp)
lw  $t2, 204($sp)
slt  $t0, $t2, $t1
sw  $t0, 212($sp)
#if , t99 , goto , l14
lw  $t1, 212($sp)
bnez  $t1, l14
#t100 , 1 ,  , =
li  $t0, 1
sw  $t0, 216($sp)
#t86 , t86 , t100 , +
lw  $t1, 160($sp)
lw  $t2, 216($sp)
add  $t0, $t1, $t2
sw  $t0, 160($sp)
#label , l13 ,  , 
l13: 
#t101 , 4 ,  , =
li  $t0, 4
sw  $t0, 220($sp)
#t102 , t94 , t101 , *
lw  $t1, 208($sp)
lw  $t2, 220($sp)
mul  $t0, $t1, $t2
sw  $t0, 224($sp)
#t103 , t22 , t102 , =*
lw  $t1, 4($gp)
lw  $t2, 224($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 228($sp)
#putint , t103 ,  , 
lw  $a0, 228($sp)
li  $v0, 1
syscall 
#t104 , '\n' ,  , =
li  $t0, 10
sw  $t0, 232($sp)
#putchar , t104 ,  , 
lw  $a0, 232($sp)
li  $v0, 11
syscall 
#goto , l12 ,  , 
b  l12
#label , l14 ,  , 
l14: 
exit:
li $v0, 10 
syscall