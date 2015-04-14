.text 
main:
addi  $sp, $sp, -508
#t0 , 2 ,  , =
li  $t0, 2
sw  $t0, 0($sp)
#t1 , t0 ,  , =
lw  $t0, 0($sp)
sw  $t0, 0($gp)
#t2 , 5 ,  , =
li  $t0, 5
sw  $t0, 4($sp)
#t3 , 4 ,  , =
li  $t0, 4
sw  $t0, 8($sp)
#t4 , 7 ,  , =
li  $t0, 7
sw  $t0, 12($sp)
#t5 , 9 ,  , =
li  $t0, 9
sw  $t0, 16($sp)
#t6 , 0 ,  , =
li  $t0, 0
sw  $t0, 20($sp)
#t7 , 3 ,  , =
li  $t0, 3
sw  $t0, 24($sp)
#t8 , 2 ,  , =
li  $t0, 2
sw  $t0, 28($sp)
#t9 , 11 ,  , =
li  $t0, 11
sw  $t0, 32($sp)
#t10 , 1 ,  , =
li  $t0, 1
sw  $t0, 36($sp)
#t11 , 36 ,  , new
li  $a0, 36
li  $v0, 9
syscall 
sw  $v0, 40($sp)
#t12 , 0 ,  , =
li  $t0, 0
sw  $t0, 44($sp)
#t11 , t12 , t2 , *=
lw  $t0, 40($sp)
lw  $t1, 44($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t13 , 4 ,  , =
li  $t0, 4
sw  $t0, 48($sp)
#t11 , t13 , t3 , *=
lw  $t0, 40($sp)
lw  $t1, 48($sp)
lw  $t2, 8($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t14 , 8 ,  , =
li  $t0, 8
sw  $t0, 52($sp)
#t11 , t14 , t4 , *=
lw  $t0, 40($sp)
lw  $t1, 52($sp)
lw  $t2, 12($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t15 , 12 ,  , =
li  $t0, 12
sw  $t0, 56($sp)
#t11 , t15 , t5 , *=
lw  $t0, 40($sp)
lw  $t1, 56($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t16 , 16 ,  , =
li  $t0, 16
sw  $t0, 60($sp)
#t11 , t16 , t6 , *=
lw  $t0, 40($sp)
lw  $t1, 60($sp)
lw  $t2, 20($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t17 , 20 ,  , =
li  $t0, 20
sw  $t0, 64($sp)
#t11 , t17 , t7 , *=
lw  $t0, 40($sp)
lw  $t1, 64($sp)
lw  $t2, 24($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t18 , 24 ,  , =
li  $t0, 24
sw  $t0, 68($sp)
#t11 , t18 , t8 , *=
lw  $t0, 40($sp)
lw  $t1, 68($sp)
lw  $t2, 28($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t19 , 28 ,  , =
li  $t0, 28
sw  $t0, 72($sp)
#t11 , t19 , t9 , *=
lw  $t0, 40($sp)
lw  $t1, 72($sp)
lw  $t2, 32($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t20 , 32 ,  , =
li  $t0, 32
sw  $t0, 76($sp)
#t11 , t20 , t10 , *=
lw  $t0, 40($sp)
lw  $t1, 76($sp)
lw  $t2, 36($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t21 , t11 ,  , =
lw  $t0, 40($sp)
sw  $t0, 4($gp)
#t22 , 0 ,  , =
li  $t0, 0
sw  $t0, 80($sp)
#t23 , 0 ,  , =
li  $t0, 0
sw  $t0, 84($sp)
#t24 , 9 ,  , =
li  $t0, 9
sw  $t0, 88($sp)
#t25 , 1 ,  , =
li  $t0, 1
sw  $t0, 92($sp)
#t26 , t24 , t25 , -
lw  $t1, 88($sp)
lw  $t2, 92($sp)
sub  $t0, $t1, $t2
sw  $t0, 96($sp)
#t27 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 100($sp)
#t28 , 0 ,  , =
li  $t0, 0
sw  $t0, 104($sp)
#t27 , t28 , t23 , *=
lw  $t0, 100($sp)
lw  $t1, 104($sp)
lw  $t2, 84($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t29 , 4 ,  , =
li  $t0, 4
sw  $t0, 108($sp)
#t27 , t29 , t26 , *=
lw  $t0, 100($sp)
lw  $t1, 108($sp)
lw  $t2, 96($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l0 ,  , 
l0: 
#t33 , 0 ,  , =
li  $t0, 0
sw  $t0, 112($sp)
#t34 , 4 ,  , =
li  $t0, 4
sw  $t0, 116($sp)
#t31 , t27 , t33 , =*
lw  $t1, 100($sp)
lw  $t2, 112($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 120($sp)
#t32 , t27 , t34 , =*
lw  $t1, 100($sp)
lw  $t2, 116($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 124($sp)
#t30 , t31 , t22 , +
lw  $t1, 120($sp)
lw  $t2, 80($sp)
add  $t0, $t1, $t2
sw  $t0, 128($sp)
#t35 , t30 , t32 , >
lw  $t1, 128($sp)
lw  $t2, 124($sp)
slt  $t0, $t2, $t1
sw  $t0, 132($sp)
#if , t35 , goto , l2
lw  $t1, 132($sp)
bnez  $t1, l2
#t36 , 1 ,  , =
li  $t0, 1
sw  $t0, 136($sp)
#t22 , t22 , t36 , +
lw  $t1, 80($sp)
lw  $t2, 136($sp)
add  $t0, $t1, $t2
sw  $t0, 80($sp)
#label , l1 ,  , 
l1: 
#t37 , 4 ,  , =
li  $t0, 4
sw  $t0, 140($sp)
#t38 , t30 , t37 , *
lw  $t1, 128($sp)
lw  $t2, 140($sp)
mul  $t0, $t1, $t2
sw  $t0, 144($sp)
#t39 , t21 , t38 , =*
lw  $t1, 4($gp)
lw  $t2, 144($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 148($sp)
#putint , t39 ,  , 
lw  $a0, 148($sp)
li  $v0, 1
syscall 
#t40 , '\n' ,  , =
li  $t0, 10
sw  $t0, 152($sp)
#putchar , t40 ,  , 
lw  $a0, 152($sp)
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
#t41 , 0 ,  , =
li  $t0, 0
sw  $t0, 0($sp)
#t42 , 0 ,  , =
li  $t0, 0
sw  $t0, 4($sp)
#t43 , 9 ,  , =
li  $t0, 9
sw  $t0, 8($sp)
#t44 , 1 ,  , =
li  $t0, 1
sw  $t0, 12($sp)
#t45 , t43 , t44 , -
lw  $t1, 8($sp)
lw  $t2, 12($sp)
sub  $t0, $t1, $t2
sw  $t0, 16($sp)
#t46 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 20($sp)
#t47 , 0 ,  , =
li  $t0, 0
sw  $t0, 24($sp)
#t46 , t47 , t42 , *=
lw  $t0, 20($sp)
lw  $t1, 24($sp)
lw  $t2, 4($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t48 , 4 ,  , =
li  $t0, 4
sw  $t0, 28($sp)
#t46 , t48 , t45 , *=
lw  $t0, 20($sp)
lw  $t1, 28($sp)
lw  $t2, 16($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l4 ,  , 
l4: 
#t52 , 0 ,  , =
li  $t0, 0
sw  $t0, 32($sp)
#t53 , 4 ,  , =
li  $t0, 4
sw  $t0, 36($sp)
#t50 , t46 , t52 , =*
lw  $t1, 20($sp)
lw  $t2, 32($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 40($sp)
#t51 , t46 , t53 , =*
lw  $t1, 20($sp)
lw  $t2, 36($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 44($sp)
#t49 , t50 , t41 , +
lw  $t1, 40($sp)
lw  $t2, 0($sp)
add  $t0, $t1, $t2
sw  $t0, 48($sp)
#t54 , t49 , t51 , >
lw  $t1, 48($sp)
lw  $t2, 44($sp)
slt  $t0, $t2, $t1
sw  $t0, 52($sp)
#if , t54 , goto , l6
lw  $t1, 52($sp)
bnez  $t1, l6
#t55 , 1 ,  , =
li  $t0, 1
sw  $t0, 56($sp)
#t41 , t41 , t55 , +
lw  $t1, 0($sp)
lw  $t2, 56($sp)
add  $t0, $t1, $t2
sw  $t0, 0($sp)
#label , l5 ,  , 
l5: 
#t56 , 4 ,  , =
li  $t0, 4
sw  $t0, 60($sp)
#t57 , t49 , t56 , *
lw  $t1, 48($sp)
lw  $t2, 60($sp)
mul  $t0, $t1, $t2
sw  $t0, 64($sp)
#t58 , t21 , t57 , =*
lw  $t1, 4($gp)
lw  $t2, 64($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 68($sp)
#t59 , t58 ,  , =
lw  $t0, 68($sp)
sw  $t0, 72($sp)
#t60 , t49 ,  , =
lw  $t0, 48($sp)
sw  $t0, 76($sp)
#label , l7 ,  , 
l7: 
#t61 , 0 ,  , =
li  $t0, 0
sw  $t0, 80($sp)
#t62 , t60 , t61 , >
lw  $t1, 76($sp)
lw  $t2, 80($sp)
slt  $t0, $t2, $t1
sw  $t0, 84($sp)
#ifnot , t62 , goto , l10
lw  $t1, 84($sp)
beqz  $t1, l10
#t63 , 1 ,  , =
li  $t0, 1
sw  $t0, 88($sp)
#t64 , t60 , t63 , -
lw  $t1, 76($sp)
lw  $t2, 88($sp)
sub  $t0, $t1, $t2
sw  $t0, 92($sp)
#t65 , 4 ,  , =
li  $t0, 4
sw  $t0, 96($sp)
#t66 , t64 , t65 , *
lw  $t1, 92($sp)
lw  $t2, 96($sp)
mul  $t0, $t1, $t2
sw  $t0, 100($sp)
#t67 , t21 , t66 , =*
lw  $t1, 4($gp)
lw  $t2, 100($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 104($sp)
#t68 , 4 ,  , =
li  $t0, 4
sw  $t0, 108($sp)
#t69 , t49 , t68 , *
lw  $t1, 48($sp)
lw  $t2, 108($sp)
mul  $t0, $t1, $t2
sw  $t0, 112($sp)
#t70 , t21 , t69 , =*
lw  $t1, 4($gp)
lw  $t2, 112($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 116($sp)
#t71 , t67 , t70 , >
lw  $t1, 104($sp)
lw  $t2, 116($sp)
slt  $t0, $t2, $t1
sw  $t0, 120($sp)
#t72 , t71 ,  , =
lw  $t0, 120($sp)
sw  $t0, 124($sp)
#goto , l11 ,  , 
b  l11
#label , l10 ,  , 
l10: 
#t72 , false ,  , =
li  $t0, 0
sw  $t0, 124($sp)
#label , l11 ,  , 
l11: 
#ifnot , t72 , goto , l9
lw  $t1, 124($sp)
beqz  $t1, l9
#label , l8 ,  , 
l8: 
#t73 , 4 ,  , =
li  $t0, 4
sw  $t0, 128($sp)
#t74 , t60 , t73 , *
lw  $t1, 76($sp)
lw  $t2, 128($sp)
mul  $t0, $t1, $t2
sw  $t0, 132($sp)
#t75 , 1 ,  , =
li  $t0, 1
sw  $t0, 136($sp)
#t76 , t60 , t75 , -
lw  $t1, 76($sp)
lw  $t2, 136($sp)
sub  $t0, $t1, $t2
sw  $t0, 140($sp)
#t77 , 4 ,  , =
li  $t0, 4
sw  $t0, 144($sp)
#t78 , t76 , t77 , *
lw  $t1, 140($sp)
lw  $t2, 144($sp)
mul  $t0, $t1, $t2
sw  $t0, 148($sp)
#t79 , t21 , t78 , =*
lw  $t1, 4($gp)
lw  $t2, 148($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 152($sp)
#t21 , t74 , t79 , *=
lw  $t0, 4($gp)
lw  $t1, 132($sp)
lw  $t2, 152($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t80 , 1 ,  , =
li  $t0, 1
sw  $t0, 156($sp)
#t81 , t60 , t80 , -
lw  $t1, 76($sp)
lw  $t2, 156($sp)
sub  $t0, $t1, $t2
sw  $t0, 160($sp)
#t60 , t81 ,  , =
lw  $t0, 160($sp)
sw  $t0, 76($sp)
#goto , l7 ,  , 
b  l7
#label , l9 ,  , 
l9: 
#t82 , 4 ,  , =
li  $t0, 4
sw  $t0, 164($sp)
#t83 , t60 , t82 , *
lw  $t1, 76($sp)
lw  $t2, 164($sp)
mul  $t0, $t1, $t2
sw  $t0, 168($sp)
#t21 , t83 , t59 , *=
lw  $t0, 4($gp)
lw  $t1, 168($sp)
lw  $t2, 72($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#goto , l4 ,  , 
b  l4
#label , l6 ,  , 
l6: 
#t84 , nil ,  , =
li  $t0, 0
sw  $t0, 172($sp)
#return , t84 ,  , 
lw  $v0, 172($sp)
move  $sp, $fp
lw  $fp, 4($fp)
jr  $ra
#methodEnds ,  ,  , 
#label , l3 ,  , 
l3: 
#t85 , 64 ,  , new
li  $a0, 64
li  $v0, 9
syscall 
sw  $v0, 156($sp)
#t86 , 'i' ,  , =
li  $t0, 105
sw  $t0, 160($sp)
#t87 , 0 ,  , =
li  $t0, 0
sw  $t0, 164($sp)
#t85 , t87 , t86 , *=
lw  $t0, 156($sp)
lw  $t1, 164($sp)
lw  $t2, 160($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t88 , 'n' ,  , =
li  $t0, 110
sw  $t0, 168($sp)
#t89 , 4 ,  , =
li  $t0, 4
sw  $t0, 172($sp)
#t85 , t89 , t88 , *=
lw  $t0, 156($sp)
lw  $t1, 172($sp)
lw  $t2, 168($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t90 , ' ' ,  , =
li  $t0, 32
sw  $t0, 176($sp)
#t91 , 8 ,  , =
li  $t0, 8
sw  $t0, 180($sp)
#t85 , t91 , t90 , *=
lw  $t0, 156($sp)
lw  $t1, 180($sp)
lw  $t2, 176($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t92 , 's' ,  , =
li  $t0, 115
sw  $t0, 184($sp)
#t93 , 12 ,  , =
li  $t0, 12
sw  $t0, 188($sp)
#t85 , t93 , t92 , *=
lw  $t0, 156($sp)
lw  $t1, 188($sp)
lw  $t2, 184($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t94 , 'o' ,  , =
li  $t0, 111
sw  $t0, 192($sp)
#t95 , 16 ,  , =
li  $t0, 16
sw  $t0, 196($sp)
#t85 , t95 , t94 , *=
lw  $t0, 156($sp)
lw  $t1, 196($sp)
lw  $t2, 192($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t96 , 'r' ,  , =
li  $t0, 114
sw  $t0, 200($sp)
#t97 , 20 ,  , =
li  $t0, 20
sw  $t0, 204($sp)
#t85 , t97 , t96 , *=
lw  $t0, 156($sp)
lw  $t1, 204($sp)
lw  $t2, 200($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t98 , 't' ,  , =
li  $t0, 116
sw  $t0, 208($sp)
#t99 , 24 ,  , =
li  $t0, 24
sw  $t0, 212($sp)
#t85 , t99 , t98 , *=
lw  $t0, 156($sp)
lw  $t1, 212($sp)
lw  $t2, 208($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t100 , 'e' ,  , =
li  $t0, 101
sw  $t0, 216($sp)
#t101 , 28 ,  , =
li  $t0, 28
sw  $t0, 220($sp)
#t85 , t101 , t100 , *=
lw  $t0, 156($sp)
lw  $t1, 220($sp)
lw  $t2, 216($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t102 , 'd' ,  , =
li  $t0, 100
sw  $t0, 224($sp)
#t103 , 32 ,  , =
li  $t0, 32
sw  $t0, 228($sp)
#t85 , t103 , t102 , *=
lw  $t0, 156($sp)
lw  $t1, 228($sp)
lw  $t2, 224($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t104 , ' ' ,  , =
li  $t0, 32
sw  $t0, 232($sp)
#t105 , 36 ,  , =
li  $t0, 36
sw  $t0, 236($sp)
#t85 , t105 , t104 , *=
lw  $t0, 156($sp)
lw  $t1, 236($sp)
lw  $t2, 232($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t106 , 'o' ,  , =
li  $t0, 111
sw  $t0, 240($sp)
#t107 , 40 ,  , =
li  $t0, 40
sw  $t0, 244($sp)
#t85 , t107 , t106 , *=
lw  $t0, 156($sp)
lw  $t1, 244($sp)
lw  $t2, 240($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t108 , 'r' ,  , =
li  $t0, 114
sw  $t0, 248($sp)
#t109 , 44 ,  , =
li  $t0, 44
sw  $t0, 252($sp)
#t85 , t109 , t108 , *=
lw  $t0, 156($sp)
lw  $t1, 252($sp)
lw  $t2, 248($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t110 , 'd' ,  , =
li  $t0, 100
sw  $t0, 256($sp)
#t111 , 48 ,  , =
li  $t0, 48
sw  $t0, 260($sp)
#t85 , t111 , t110 , *=
lw  $t0, 156($sp)
lw  $t1, 260($sp)
lw  $t2, 256($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t112 , 'e' ,  , =
li  $t0, 101
sw  $t0, 264($sp)
#t113 , 52 ,  , =
li  $t0, 52
sw  $t0, 268($sp)
#t85 , t113 , t112 , *=
lw  $t0, 156($sp)
lw  $t1, 268($sp)
lw  $t2, 264($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t114 , 'r' ,  , =
li  $t0, 114
sw  $t0, 272($sp)
#t115 , 56 ,  , =
li  $t0, 56
sw  $t0, 276($sp)
#t85 , t115 , t114 , *=
lw  $t0, 156($sp)
lw  $t1, 276($sp)
lw  $t2, 272($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t116 , '\0' ,  , =
li  $t0, 0
sw  $t0, 280($sp)
#t117 , 60 ,  , =
li  $t0, 60
sw  $t0, 284($sp)
#t85 , t117 , t116 , *=
lw  $t0, 156($sp)
lw  $t1, 284($sp)
lw  $t2, 280($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t118 , 0 ,  , =
li  $t0, 0
sw  $t0, 288($sp)
#t119 , t85 , t118 , =*
lw  $t1, 156($sp)
lw  $t2, 288($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 292($sp)
#putchar , t119 ,  , 
lw  $a0, 292($sp)
li  $v0, 11
syscall 
#t120 , 4 ,  , =
li  $t0, 4
sw  $t0, 296($sp)
#t121 , t85 , t120 , =*
lw  $t1, 156($sp)
lw  $t2, 296($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 300($sp)
#putchar , t121 ,  , 
lw  $a0, 300($sp)
li  $v0, 11
syscall 
#t122 , 8 ,  , =
li  $t0, 8
sw  $t0, 304($sp)
#t123 , t85 , t122 , =*
lw  $t1, 156($sp)
lw  $t2, 304($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 308($sp)
#putchar , t123 ,  , 
lw  $a0, 308($sp)
li  $v0, 11
syscall 
#t124 , 12 ,  , =
li  $t0, 12
sw  $t0, 312($sp)
#t125 , t85 , t124 , =*
lw  $t1, 156($sp)
lw  $t2, 312($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 316($sp)
#putchar , t125 ,  , 
lw  $a0, 316($sp)
li  $v0, 11
syscall 
#t126 , 16 ,  , =
li  $t0, 16
sw  $t0, 320($sp)
#t127 , t85 , t126 , =*
lw  $t1, 156($sp)
lw  $t2, 320($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 324($sp)
#putchar , t127 ,  , 
lw  $a0, 324($sp)
li  $v0, 11
syscall 
#t128 , 20 ,  , =
li  $t0, 20
sw  $t0, 328($sp)
#t129 , t85 , t128 , =*
lw  $t1, 156($sp)
lw  $t2, 328($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 332($sp)
#putchar , t129 ,  , 
lw  $a0, 332($sp)
li  $v0, 11
syscall 
#t130 , 24 ,  , =
li  $t0, 24
sw  $t0, 336($sp)
#t131 , t85 , t130 , =*
lw  $t1, 156($sp)
lw  $t2, 336($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 340($sp)
#putchar , t131 ,  , 
lw  $a0, 340($sp)
li  $v0, 11
syscall 
#t132 , 28 ,  , =
li  $t0, 28
sw  $t0, 344($sp)
#t133 , t85 , t132 , =*
lw  $t1, 156($sp)
lw  $t2, 344($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 348($sp)
#putchar , t133 ,  , 
lw  $a0, 348($sp)
li  $v0, 11
syscall 
#t134 , 32 ,  , =
li  $t0, 32
sw  $t0, 352($sp)
#t135 , t85 , t134 , =*
lw  $t1, 156($sp)
lw  $t2, 352($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 356($sp)
#putchar , t135 ,  , 
lw  $a0, 356($sp)
li  $v0, 11
syscall 
#t136 , 36 ,  , =
li  $t0, 36
sw  $t0, 360($sp)
#t137 , t85 , t136 , =*
lw  $t1, 156($sp)
lw  $t2, 360($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 364($sp)
#putchar , t137 ,  , 
lw  $a0, 364($sp)
li  $v0, 11
syscall 
#t138 , 40 ,  , =
li  $t0, 40
sw  $t0, 368($sp)
#t139 , t85 , t138 , =*
lw  $t1, 156($sp)
lw  $t2, 368($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 372($sp)
#putchar , t139 ,  , 
lw  $a0, 372($sp)
li  $v0, 11
syscall 
#t140 , 44 ,  , =
li  $t0, 44
sw  $t0, 376($sp)
#t141 , t85 , t140 , =*
lw  $t1, 156($sp)
lw  $t2, 376($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 380($sp)
#putchar , t141 ,  , 
lw  $a0, 380($sp)
li  $v0, 11
syscall 
#t142 , 48 ,  , =
li  $t0, 48
sw  $t0, 384($sp)
#t143 , t85 , t142 , =*
lw  $t1, 156($sp)
lw  $t2, 384($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 388($sp)
#putchar , t143 ,  , 
lw  $a0, 388($sp)
li  $v0, 11
syscall 
#t144 , 52 ,  , =
li  $t0, 52
sw  $t0, 392($sp)
#t145 , t85 , t144 , =*
lw  $t1, 156($sp)
lw  $t2, 392($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 396($sp)
#putchar , t145 ,  , 
lw  $a0, 396($sp)
li  $v0, 11
syscall 
#t146 , 56 ,  , =
li  $t0, 56
sw  $t0, 400($sp)
#t147 , t85 , t146 , =*
lw  $t1, 156($sp)
lw  $t2, 400($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 404($sp)
#putchar , t147 ,  , 
lw  $a0, 404($sp)
li  $v0, 11
syscall 
#t148 , 60 ,  , =
li  $t0, 60
sw  $t0, 408($sp)
#t149 , t85 , t148 , =*
lw  $t1, 156($sp)
lw  $t2, 408($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 412($sp)
#putchar , t149 ,  , 
lw  $a0, 412($sp)
li  $v0, 11
syscall 
#t150 , '\n' ,  , =
li  $t0, 10
sw  $t0, 416($sp)
#putchar , t150 ,  , 
lw  $a0, 416($sp)
li  $v0, 11
syscall 
#t151 , m0 ,  , call
addi  $sp, $sp, 0
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 8
sw  $v0, 420($sp)
#t152 , 0 ,  , =
li  $t0, 0
sw  $t0, 424($sp)
#t153 , 0 ,  , =
li  $t0, 0
sw  $t0, 428($sp)
#t154 , 9 ,  , =
li  $t0, 9
sw  $t0, 432($sp)
#t155 , 1 ,  , =
li  $t0, 1
sw  $t0, 436($sp)
#t156 , t154 , t155 , -
lw  $t1, 432($sp)
lw  $t2, 436($sp)
sub  $t0, $t1, $t2
sw  $t0, 440($sp)
#t157 , 8 ,  , new
li  $a0, 8
li  $v0, 9
syscall 
sw  $v0, 444($sp)
#t158 , 0 ,  , =
li  $t0, 0
sw  $t0, 448($sp)
#t157 , t158 , t153 , *=
lw  $t0, 444($sp)
lw  $t1, 448($sp)
lw  $t2, 428($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#t159 , 4 ,  , =
li  $t0, 4
sw  $t0, 452($sp)
#t157 , t159 , t156 , *=
lw  $t0, 444($sp)
lw  $t1, 452($sp)
lw  $t2, 440($sp)
add  $t3, $t0, $t1
sw  $t2, 0($t3)
#label , l12 ,  , 
l12: 
#t163 , 0 ,  , =
li  $t0, 0
sw  $t0, 456($sp)
#t164 , 4 ,  , =
li  $t0, 4
sw  $t0, 460($sp)
#t161 , t157 , t163 , =*
lw  $t1, 444($sp)
lw  $t2, 456($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 464($sp)
#t162 , t157 , t164 , =*
lw  $t1, 444($sp)
lw  $t2, 460($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 468($sp)
#t160 , t161 , t152 , +
lw  $t1, 464($sp)
lw  $t2, 424($sp)
add  $t0, $t1, $t2
sw  $t0, 472($sp)
#t165 , t160 , t162 , >
lw  $t1, 472($sp)
lw  $t2, 468($sp)
slt  $t0, $t2, $t1
sw  $t0, 476($sp)
#if , t165 , goto , l14
lw  $t1, 476($sp)
bnez  $t1, l14
#t166 , 1 ,  , =
li  $t0, 1
sw  $t0, 480($sp)
#t152 , t152 , t166 , +
lw  $t1, 424($sp)
lw  $t2, 480($sp)
add  $t0, $t1, $t2
sw  $t0, 424($sp)
#label , l13 ,  , 
l13: 
#t167 , 4 ,  , =
li  $t0, 4
sw  $t0, 484($sp)
#t168 , t160 , t167 , *
lw  $t1, 472($sp)
lw  $t2, 484($sp)
mul  $t0, $t1, $t2
sw  $t0, 488($sp)
#t169 , t21 , t168 , =*
lw  $t1, 4($gp)
lw  $t2, 488($sp)
add  $t3, $t1, $t2
lw  $t0, 0($t3)
sw  $t0, 492($sp)
#putint , t169 ,  , 
lw  $a0, 492($sp)
li  $v0, 1
syscall 
#t170 , '\n' ,  , =
li  $t0, 10
sw  $t0, 496($sp)
#putchar , t170 ,  , 
lw  $a0, 496($sp)
li  $v0, 11
syscall 
#goto , l12 ,  , 
b  l12
#label , l14 ,  , 
l14: 
exit:
li $v0, 10 
syscall