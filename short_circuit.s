.text 
main:
addi   $sp , $sp , -1248 

#goto , l0 ,  , 
b   l0 

#label , m0 ,  , 
m0:  

#methodStarts , m0 ,  , 
addi   $sp , $sp , -192 

#t0 , 44 ,  , new
li   $a0 , 44 

li   $v0 , 9 

syscall  

sw   $v0 , 0($sp) 

#t1 , 'I' ,  , =
li   $t0 , 73 

sw   $t0 , 4($sp) 

#t2 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t0 , t2 , t1 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 8($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t3 , ''' ,  , =
li   $t0 , 39 

sw   $t0 , 12($sp) 

#t4 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 16($sp) 

#t0 , t4 , t3 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 16($sp) 

lw   $t2 , 12($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t5 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 20($sp) 

#t6 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 24($sp) 

#t0 , t6 , t5 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t7 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 28($sp) 

#t8 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 32($sp) 

#t0 , t8 , t7 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t9 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 36($sp) 

#t10 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 40($sp) 

#t0 , t10 , t9 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 40($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t11 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 44($sp) 

#t12 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 48($sp) 

#t0 , t12 , t11 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 48($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t13 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 52($sp) 

#t14 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 56($sp) 

#t0 , t14 , t13 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t15 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 60($sp) 

#t16 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 64($sp) 

#t0 , t16 , t15 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 64($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t17 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 68($sp) 

#t18 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 72($sp) 

#t0 , t18 , t17 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t19 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 76($sp) 

#t20 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 80($sp) 

#t0 , t20 , t19 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t21 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 84($sp) 

#t22 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 88($sp) 

#t0 , t22 , t21 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 88($sp) 

lw   $t2 , 84($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t23 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 92($sp) 

#t24 , t0 , t23 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 92($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 96($sp) 

#putchar , t24 ,  , 
lw   $a0 , 96($sp) 

li   $v0 , 11 

syscall  

#t25 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 100($sp) 

#t26 , t0 , t25 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 100($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 104($sp) 

#putchar , t26 ,  , 
lw   $a0 , 104($sp) 

li   $v0 , 11 

syscall  

#t27 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 108($sp) 

#t28 , t0 , t27 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 108($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 112($sp) 

#putchar , t28 ,  , 
lw   $a0 , 112($sp) 

li   $v0 , 11 

syscall  

#t29 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 116($sp) 

#t30 , t0 , t29 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 116($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 120($sp) 

#putchar , t30 ,  , 
lw   $a0 , 120($sp) 

li   $v0 , 11 

syscall  

#t31 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 124($sp) 

#t32 , t0 , t31 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 124($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 128($sp) 

#putchar , t32 ,  , 
lw   $a0 , 128($sp) 

li   $v0 , 11 

syscall  

#t33 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 132($sp) 

#t34 , t0 , t33 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 132($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 136($sp) 

#putchar , t34 ,  , 
lw   $a0 , 136($sp) 

li   $v0 , 11 

syscall  

#t35 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 140($sp) 

#t36 , t0 , t35 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 140($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 144($sp) 

#putchar , t36 ,  , 
lw   $a0 , 144($sp) 

li   $v0 , 11 

syscall  

#t37 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 148($sp) 

#t38 , t0 , t37 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 148($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 152($sp) 

#putchar , t38 ,  , 
lw   $a0 , 152($sp) 

li   $v0 , 11 

syscall  

#t39 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 156($sp) 

#t40 , t0 , t39 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 156($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 160($sp) 

#putchar , t40 ,  , 
lw   $a0 , 160($sp) 

li   $v0 , 11 

syscall  

#t41 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 164($sp) 

#t42 , t0 , t41 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 164($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 168($sp) 

#putchar , t42 ,  , 
lw   $a0 , 168($sp) 

li   $v0 , 11 

syscall  

#t43 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 172($sp) 

#t44 , t0 , t43 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 172($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 176($sp) 

#putchar , t44 ,  , 
lw   $a0 , 176($sp) 

li   $v0 , 11 

syscall  

#t45 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 180($sp) 

#putchar , t45 ,  , 
lw   $a0 , 180($sp) 

li   $v0 , 11 

syscall  

#t46 , true ,  , =
li   $t0 , 1 

sw   $t0 , 184($sp) 

#return , t46 ,  , 
lw   $v0 , 184($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t47 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 188($sp) 

#return , t47 ,  , 
lw   $v0 , 188($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l0 ,  , 
l0:  

#t48 , false ,  , =
li   $t0 , 0 

sw   $t0 , 0($sp) 

#t49 , t48 ,  , =
lw   $t0 , 0($sp) 

sw   $t0 , 4($sp) 

#ifnot , t49 , goto , l1
lw   $t1 , 4($sp) 

beqz   $t1 , l1 

#t50 , m0 ,  , call
addi   $sp , $sp , 0 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 8 

sw   $v0 , 8($sp) 

#t51 , t50 ,  , =
lw   $t0 , 8($sp) 

sw   $t0 , 12($sp) 

#goto , l2 ,  , 
b   l2 

#label , l1 ,  , 
l1:  

#t51 , false ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#label , l2 ,  , 
l2:  

#if , t51 , goto , l3
lw   $t1 , 12($sp) 

bnez   $t1 , l3 

#goto , l4 ,  , 
b   l4 

#label , l3 ,  , 
l3:  

#t52 , 72 ,  , new
li   $a0 , 72 

li   $v0 , 9 

syscall  

sw   $v0 , 16($sp) 

#t53 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 20($sp) 

#t54 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 24($sp) 

#t52 , t54 , t53 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t55 , '.' ,  , =
li   $t0 , 46 

sw   $t0 , 28($sp) 

#t56 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 32($sp) 

#t52 , t56 , t55 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t57 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 36($sp) 

#t58 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 40($sp) 

#t52 , t58 , t57 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 40($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t59 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 44($sp) 

#t60 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 48($sp) 

#t52 , t60 , t59 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 48($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t61 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 52($sp) 

#t62 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 56($sp) 

#t52 , t62 , t61 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t63 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 60($sp) 

#t64 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 64($sp) 

#t52 , t64 , t63 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 64($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t65 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 68($sp) 

#t66 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 72($sp) 

#t52 , t66 , t65 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t67 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 76($sp) 

#t68 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 80($sp) 

#t52 , t68 , t67 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t69 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 84($sp) 

#t70 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 88($sp) 

#t52 , t70 , t69 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 88($sp) 

lw   $t2 , 84($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t71 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 92($sp) 

#t72 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 96($sp) 

#t52 , t72 , t71 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 96($sp) 

lw   $t2 , 92($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t73 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 100($sp) 

#t74 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 104($sp) 

#t52 , t74 , t73 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 104($sp) 

lw   $t2 , 100($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t75 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 108($sp) 

#t76 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 112($sp) 

#t52 , t76 , t75 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 112($sp) 

lw   $t2 , 108($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t77 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 116($sp) 

#t78 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 120($sp) 

#t52 , t78 , t77 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 120($sp) 

lw   $t2 , 116($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t79 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 124($sp) 

#t80 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 128($sp) 

#t52 , t80 , t79 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 128($sp) 

lw   $t2 , 124($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t81 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 132($sp) 

#t82 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 136($sp) 

#t52 , t82 , t81 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 136($sp) 

lw   $t2 , 132($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t83 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 140($sp) 

#t84 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 144($sp) 

#t52 , t84 , t83 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 144($sp) 

lw   $t2 , 140($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t85 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 148($sp) 

#t86 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 152($sp) 

#t52 , t86 , t85 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 152($sp) 

lw   $t2 , 148($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t87 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 156($sp) 

#t88 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 160($sp) 

#t52 , t88 , t87 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 160($sp) 

lw   $t2 , 156($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t89 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 164($sp) 

#t90 , t52 , t89 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 164($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 168($sp) 

#putchar , t90 ,  , 
lw   $a0 , 168($sp) 

li   $v0 , 11 

syscall  

#t91 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 172($sp) 

#t92 , t52 , t91 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 172($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 176($sp) 

#putchar , t92 ,  , 
lw   $a0 , 176($sp) 

li   $v0 , 11 

syscall  

#t93 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 180($sp) 

#t94 , t52 , t93 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 180($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 184($sp) 

#putchar , t94 ,  , 
lw   $a0 , 184($sp) 

li   $v0 , 11 

syscall  

#t95 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 188($sp) 

#t96 , t52 , t95 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 188($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 192($sp) 

#putchar , t96 ,  , 
lw   $a0 , 192($sp) 

li   $v0 , 11 

syscall  

#t97 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 196($sp) 

#t98 , t52 , t97 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 196($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 200($sp) 

#putchar , t98 ,  , 
lw   $a0 , 200($sp) 

li   $v0 , 11 

syscall  

#t99 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 204($sp) 

#t100 , t52 , t99 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 204($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 208($sp) 

#putchar , t100 ,  , 
lw   $a0 , 208($sp) 

li   $v0 , 11 

syscall  

#t101 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 212($sp) 

#t102 , t52 , t101 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 212($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 216($sp) 

#putchar , t102 ,  , 
lw   $a0 , 216($sp) 

li   $v0 , 11 

syscall  

#t103 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 220($sp) 

#t104 , t52 , t103 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 220($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 224($sp) 

#putchar , t104 ,  , 
lw   $a0 , 224($sp) 

li   $v0 , 11 

syscall  

#t105 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 228($sp) 

#t106 , t52 , t105 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 228($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 232($sp) 

#putchar , t106 ,  , 
lw   $a0 , 232($sp) 

li   $v0 , 11 

syscall  

#t107 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 236($sp) 

#t108 , t52 , t107 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 236($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 240($sp) 

#putchar , t108 ,  , 
lw   $a0 , 240($sp) 

li   $v0 , 11 

syscall  

#t109 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 244($sp) 

#t110 , t52 , t109 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 244($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 248($sp) 

#putchar , t110 ,  , 
lw   $a0 , 248($sp) 

li   $v0 , 11 

syscall  

#t111 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 252($sp) 

#t112 , t52 , t111 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 252($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 256($sp) 

#putchar , t112 ,  , 
lw   $a0 , 256($sp) 

li   $v0 , 11 

syscall  

#t113 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 260($sp) 

#t114 , t52 , t113 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 260($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 264($sp) 

#putchar , t114 ,  , 
lw   $a0 , 264($sp) 

li   $v0 , 11 

syscall  

#t115 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 268($sp) 

#t116 , t52 , t115 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 268($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 272($sp) 

#putchar , t116 ,  , 
lw   $a0 , 272($sp) 

li   $v0 , 11 

syscall  

#t117 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 276($sp) 

#t118 , t52 , t117 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 276($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 280($sp) 

#putchar , t118 ,  , 
lw   $a0 , 280($sp) 

li   $v0 , 11 

syscall  

#t119 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 284($sp) 

#t120 , t52 , t119 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 284($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 288($sp) 

#putchar , t120 ,  , 
lw   $a0 , 288($sp) 

li   $v0 , 11 

syscall  

#t121 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 292($sp) 

#t122 , t52 , t121 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 292($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 296($sp) 

#putchar , t122 ,  , 
lw   $a0 , 296($sp) 

li   $v0 , 11 

syscall  

#t123 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 300($sp) 

#t124 , t52 , t123 , =*
lw   $t1 , 16($sp) 

lw   $t2 , 300($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 304($sp) 

#putchar , t124 ,  , 
lw   $a0 , 304($sp) 

li   $v0 , 11 

syscall  

#t125 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 308($sp) 

#putchar , t125 ,  , 
lw   $a0 , 308($sp) 

li   $v0 , 11 

syscall  

#goto , l5 ,  , 
b   l5 

#label , l4 ,  , 
l4:  

#t126 , 76 ,  , new
li   $a0 , 76 

li   $v0 , 9 

syscall  

sw   $v0 , 312($sp) 

#t127 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 316($sp) 

#t128 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 320($sp) 

#t126 , t128 , t127 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 320($sp) 

lw   $t2 , 316($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t129 , '.' ,  , =
li   $t0 , 46 

sw   $t0 , 324($sp) 

#t130 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 328($sp) 

#t126 , t130 , t129 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 328($sp) 

lw   $t2 , 324($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t131 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 332($sp) 

#t132 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 336($sp) 

#t126 , t132 , t131 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 336($sp) 

lw   $t2 , 332($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t133 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 340($sp) 

#t134 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 344($sp) 

#t126 , t134 , t133 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 344($sp) 

lw   $t2 , 340($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t135 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 348($sp) 

#t136 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 352($sp) 

#t126 , t136 , t135 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 352($sp) 

lw   $t2 , 348($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t137 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 356($sp) 

#t138 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 360($sp) 

#t126 , t138 , t137 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 360($sp) 

lw   $t2 , 356($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t139 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 364($sp) 

#t140 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 368($sp) 

#t126 , t140 , t139 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 368($sp) 

lw   $t2 , 364($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t141 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 372($sp) 

#t142 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 376($sp) 

#t126 , t142 , t141 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 376($sp) 

lw   $t2 , 372($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t143 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 380($sp) 

#t144 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 384($sp) 

#t126 , t144 , t143 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 384($sp) 

lw   $t2 , 380($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t145 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 388($sp) 

#t146 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 392($sp) 

#t126 , t146 , t145 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 392($sp) 

lw   $t2 , 388($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t147 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 396($sp) 

#t148 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 400($sp) 

#t126 , t148 , t147 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 400($sp) 

lw   $t2 , 396($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t149 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 404($sp) 

#t150 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 408($sp) 

#t126 , t150 , t149 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 408($sp) 

lw   $t2 , 404($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t151 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 412($sp) 

#t152 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 416($sp) 

#t126 , t152 , t151 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 416($sp) 

lw   $t2 , 412($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t153 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 420($sp) 

#t154 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 424($sp) 

#t126 , t154 , t153 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 424($sp) 

lw   $t2 , 420($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t155 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 428($sp) 

#t156 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 432($sp) 

#t126 , t156 , t155 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 432($sp) 

lw   $t2 , 428($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t157 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 436($sp) 

#t158 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 440($sp) 

#t126 , t158 , t157 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 440($sp) 

lw   $t2 , 436($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t159 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 444($sp) 

#t160 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 448($sp) 

#t126 , t160 , t159 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 448($sp) 

lw   $t2 , 444($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t161 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 452($sp) 

#t162 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 456($sp) 

#t126 , t162 , t161 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 456($sp) 

lw   $t2 , 452($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t163 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 460($sp) 

#t164 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 464($sp) 

#t126 , t164 , t163 , *=
lw   $t0 , 312($sp) 

lw   $t1 , 464($sp) 

lw   $t2 , 460($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t165 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 468($sp) 

#t166 , t126 , t165 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 468($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 472($sp) 

#putchar , t166 ,  , 
lw   $a0 , 472($sp) 

li   $v0 , 11 

syscall  

#t167 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 476($sp) 

#t168 , t126 , t167 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 476($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 480($sp) 

#putchar , t168 ,  , 
lw   $a0 , 480($sp) 

li   $v0 , 11 

syscall  

#t169 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 484($sp) 

#t170 , t126 , t169 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 484($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 488($sp) 

#putchar , t170 ,  , 
lw   $a0 , 488($sp) 

li   $v0 , 11 

syscall  

#t171 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 492($sp) 

#t172 , t126 , t171 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 492($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 496($sp) 

#putchar , t172 ,  , 
lw   $a0 , 496($sp) 

li   $v0 , 11 

syscall  

#t173 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 500($sp) 

#t174 , t126 , t173 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 500($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 504($sp) 

#putchar , t174 ,  , 
lw   $a0 , 504($sp) 

li   $v0 , 11 

syscall  

#t175 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 508($sp) 

#t176 , t126 , t175 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 508($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 512($sp) 

#putchar , t176 ,  , 
lw   $a0 , 512($sp) 

li   $v0 , 11 

syscall  

#t177 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 516($sp) 

#t178 , t126 , t177 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 516($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 520($sp) 

#putchar , t178 ,  , 
lw   $a0 , 520($sp) 

li   $v0 , 11 

syscall  

#t179 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 524($sp) 

#t180 , t126 , t179 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 524($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 528($sp) 

#putchar , t180 ,  , 
lw   $a0 , 528($sp) 

li   $v0 , 11 

syscall  

#t181 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 532($sp) 

#t182 , t126 , t181 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 532($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 536($sp) 

#putchar , t182 ,  , 
lw   $a0 , 536($sp) 

li   $v0 , 11 

syscall  

#t183 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 540($sp) 

#t184 , t126 , t183 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 540($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 544($sp) 

#putchar , t184 ,  , 
lw   $a0 , 544($sp) 

li   $v0 , 11 

syscall  

#t185 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 548($sp) 

#t186 , t126 , t185 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 548($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 552($sp) 

#putchar , t186 ,  , 
lw   $a0 , 552($sp) 

li   $v0 , 11 

syscall  

#t187 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 556($sp) 

#t188 , t126 , t187 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 556($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 560($sp) 

#putchar , t188 ,  , 
lw   $a0 , 560($sp) 

li   $v0 , 11 

syscall  

#t189 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 564($sp) 

#t190 , t126 , t189 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 564($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 568($sp) 

#putchar , t190 ,  , 
lw   $a0 , 568($sp) 

li   $v0 , 11 

syscall  

#t191 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 572($sp) 

#t192 , t126 , t191 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 572($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 576($sp) 

#putchar , t192 ,  , 
lw   $a0 , 576($sp) 

li   $v0 , 11 

syscall  

#t193 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 580($sp) 

#t194 , t126 , t193 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 580($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 584($sp) 

#putchar , t194 ,  , 
lw   $a0 , 584($sp) 

li   $v0 , 11 

syscall  

#t195 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 588($sp) 

#t196 , t126 , t195 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 588($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 592($sp) 

#putchar , t196 ,  , 
lw   $a0 , 592($sp) 

li   $v0 , 11 

syscall  

#t197 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 596($sp) 

#t198 , t126 , t197 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 596($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 600($sp) 

#putchar , t198 ,  , 
lw   $a0 , 600($sp) 

li   $v0 , 11 

syscall  

#t199 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 604($sp) 

#t200 , t126 , t199 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 604($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 608($sp) 

#putchar , t200 ,  , 
lw   $a0 , 608($sp) 

li   $v0 , 11 

syscall  

#t201 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 612($sp) 

#t202 , t126 , t201 , =*
lw   $t1 , 312($sp) 

lw   $t2 , 612($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 616($sp) 

#putchar , t202 ,  , 
lw   $a0 , 616($sp) 

li   $v0 , 11 

syscall  

#t203 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 620($sp) 

#putchar , t203 ,  , 
lw   $a0 , 620($sp) 

li   $v0 , 11 

syscall  

#label , l5 ,  , 
l5:  

#t204 , true ,  , =
li   $t0 , 1 

sw   $t0 , 624($sp) 

#t205 , t204 ,  , =
lw   $t0 , 624($sp) 

sw   $t0 , 628($sp) 

#ifnot , t205 , goto , l6
lw   $t1 , 628($sp) 

beqz   $t1 , l6 

#t206 , m0 ,  , call
addi   $sp , $sp , 0 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 8 

sw   $v0 , 632($sp) 

#t207 , t206 ,  , =
lw   $t0 , 632($sp) 

sw   $t0 , 636($sp) 

#goto , l7 ,  , 
b   l7 

#label , l6 ,  , 
l6:  

#t207 , false ,  , =
li   $t0 , 0 

sw   $t0 , 636($sp) 

#label , l7 ,  , 
l7:  

#if , t207 , goto , l8
lw   $t1 , 636($sp) 

bnez   $t1 , l8 

#goto , l9 ,  , 
b   l9 

#label , l8 ,  , 
l8:  

#t208 , 72 ,  , new
li   $a0 , 72 

li   $v0 , 9 

syscall  

sw   $v0 , 640($sp) 

#t209 , 'b' ,  , =
li   $t0 , 98 

sw   $t0 , 644($sp) 

#t210 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 648($sp) 

#t208 , t210 , t209 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 648($sp) 

lw   $t2 , 644($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t211 , '.' ,  , =
li   $t0 , 46 

sw   $t0 , 652($sp) 

#t212 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 656($sp) 

#t208 , t212 , t211 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 656($sp) 

lw   $t2 , 652($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t213 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 660($sp) 

#t214 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 664($sp) 

#t208 , t214 , t213 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 664($sp) 

lw   $t2 , 660($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t215 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 668($sp) 

#t216 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 672($sp) 

#t208 , t216 , t215 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 672($sp) 

lw   $t2 , 668($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t217 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 676($sp) 

#t218 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 680($sp) 

#t208 , t218 , t217 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 680($sp) 

lw   $t2 , 676($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t219 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 684($sp) 

#t220 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 688($sp) 

#t208 , t220 , t219 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 688($sp) 

lw   $t2 , 684($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t221 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 692($sp) 

#t222 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 696($sp) 

#t208 , t222 , t221 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 696($sp) 

lw   $t2 , 692($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t223 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 700($sp) 

#t224 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 704($sp) 

#t208 , t224 , t223 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 704($sp) 

lw   $t2 , 700($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t225 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 708($sp) 

#t226 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 712($sp) 

#t208 , t226 , t225 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 712($sp) 

lw   $t2 , 708($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t227 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 716($sp) 

#t228 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 720($sp) 

#t208 , t228 , t227 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 720($sp) 

lw   $t2 , 716($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t229 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 724($sp) 

#t230 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 728($sp) 

#t208 , t230 , t229 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 728($sp) 

lw   $t2 , 724($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t231 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 732($sp) 

#t232 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 736($sp) 

#t208 , t232 , t231 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 736($sp) 

lw   $t2 , 732($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t233 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 740($sp) 

#t234 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 744($sp) 

#t208 , t234 , t233 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 744($sp) 

lw   $t2 , 740($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t235 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 748($sp) 

#t236 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 752($sp) 

#t208 , t236 , t235 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 752($sp) 

lw   $t2 , 748($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t237 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 756($sp) 

#t238 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 760($sp) 

#t208 , t238 , t237 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 760($sp) 

lw   $t2 , 756($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t239 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 764($sp) 

#t240 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 768($sp) 

#t208 , t240 , t239 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 768($sp) 

lw   $t2 , 764($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t241 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 772($sp) 

#t242 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 776($sp) 

#t208 , t242 , t241 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 776($sp) 

lw   $t2 , 772($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t243 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 780($sp) 

#t244 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 784($sp) 

#t208 , t244 , t243 , *=
lw   $t0 , 640($sp) 

lw   $t1 , 784($sp) 

lw   $t2 , 780($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t245 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 788($sp) 

#t246 , t208 , t245 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 788($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 792($sp) 

#putchar , t246 ,  , 
lw   $a0 , 792($sp) 

li   $v0 , 11 

syscall  

#t247 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 796($sp) 

#t248 , t208 , t247 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 796($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 800($sp) 

#putchar , t248 ,  , 
lw   $a0 , 800($sp) 

li   $v0 , 11 

syscall  

#t249 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 804($sp) 

#t250 , t208 , t249 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 804($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 808($sp) 

#putchar , t250 ,  , 
lw   $a0 , 808($sp) 

li   $v0 , 11 

syscall  

#t251 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 812($sp) 

#t252 , t208 , t251 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 812($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 816($sp) 

#putchar , t252 ,  , 
lw   $a0 , 816($sp) 

li   $v0 , 11 

syscall  

#t253 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 820($sp) 

#t254 , t208 , t253 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 820($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 824($sp) 

#putchar , t254 ,  , 
lw   $a0 , 824($sp) 

li   $v0 , 11 

syscall  

#t255 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 828($sp) 

#t256 , t208 , t255 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 828($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 832($sp) 

#putchar , t256 ,  , 
lw   $a0 , 832($sp) 

li   $v0 , 11 

syscall  

#t257 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 836($sp) 

#t258 , t208 , t257 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 836($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 840($sp) 

#putchar , t258 ,  , 
lw   $a0 , 840($sp) 

li   $v0 , 11 

syscall  

#t259 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 844($sp) 

#t260 , t208 , t259 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 844($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 848($sp) 

#putchar , t260 ,  , 
lw   $a0 , 848($sp) 

li   $v0 , 11 

syscall  

#t261 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 852($sp) 

#t262 , t208 , t261 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 852($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 856($sp) 

#putchar , t262 ,  , 
lw   $a0 , 856($sp) 

li   $v0 , 11 

syscall  

#t263 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 860($sp) 

#t264 , t208 , t263 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 860($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 864($sp) 

#putchar , t264 ,  , 
lw   $a0 , 864($sp) 

li   $v0 , 11 

syscall  

#t265 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 868($sp) 

#t266 , t208 , t265 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 868($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 872($sp) 

#putchar , t266 ,  , 
lw   $a0 , 872($sp) 

li   $v0 , 11 

syscall  

#t267 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 876($sp) 

#t268 , t208 , t267 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 876($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 880($sp) 

#putchar , t268 ,  , 
lw   $a0 , 880($sp) 

li   $v0 , 11 

syscall  

#t269 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 884($sp) 

#t270 , t208 , t269 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 884($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 888($sp) 

#putchar , t270 ,  , 
lw   $a0 , 888($sp) 

li   $v0 , 11 

syscall  

#t271 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 892($sp) 

#t272 , t208 , t271 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 892($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 896($sp) 

#putchar , t272 ,  , 
lw   $a0 , 896($sp) 

li   $v0 , 11 

syscall  

#t273 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 900($sp) 

#t274 , t208 , t273 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 900($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 904($sp) 

#putchar , t274 ,  , 
lw   $a0 , 904($sp) 

li   $v0 , 11 

syscall  

#t275 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 908($sp) 

#t276 , t208 , t275 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 908($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 912($sp) 

#putchar , t276 ,  , 
lw   $a0 , 912($sp) 

li   $v0 , 11 

syscall  

#t277 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 916($sp) 

#t278 , t208 , t277 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 916($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 920($sp) 

#putchar , t278 ,  , 
lw   $a0 , 920($sp) 

li   $v0 , 11 

syscall  

#t279 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 924($sp) 

#t280 , t208 , t279 , =*
lw   $t1 , 640($sp) 

lw   $t2 , 924($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 928($sp) 

#putchar , t280 ,  , 
lw   $a0 , 928($sp) 

li   $v0 , 11 

syscall  

#t281 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 932($sp) 

#putchar , t281 ,  , 
lw   $a0 , 932($sp) 

li   $v0 , 11 

syscall  

#goto , l10 ,  , 
b   l10 

#label , l9 ,  , 
l9:  

#t282 , 76 ,  , new
li   $a0 , 76 

li   $v0 , 9 

syscall  

sw   $v0 , 936($sp) 

#t283 , 'b' ,  , =
li   $t0 , 98 

sw   $t0 , 940($sp) 

#t284 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 944($sp) 

#t282 , t284 , t283 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 944($sp) 

lw   $t2 , 940($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t285 , '.' ,  , =
li   $t0 , 46 

sw   $t0 , 948($sp) 

#t286 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 952($sp) 

#t282 , t286 , t285 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 952($sp) 

lw   $t2 , 948($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t287 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 956($sp) 

#t288 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 960($sp) 

#t282 , t288 , t287 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 960($sp) 

lw   $t2 , 956($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t289 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 964($sp) 

#t290 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 968($sp) 

#t282 , t290 , t289 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 968($sp) 

lw   $t2 , 964($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t291 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 972($sp) 

#t292 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 976($sp) 

#t282 , t292 , t291 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 976($sp) 

lw   $t2 , 972($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t293 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 980($sp) 

#t294 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 984($sp) 

#t282 , t294 , t293 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 984($sp) 

lw   $t2 , 980($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t295 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 988($sp) 

#t296 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 992($sp) 

#t282 , t296 , t295 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 992($sp) 

lw   $t2 , 988($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t297 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 996($sp) 

#t298 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1000($sp) 

#t282 , t298 , t297 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1000($sp) 

lw   $t2 , 996($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t299 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1004($sp) 

#t300 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1008($sp) 

#t282 , t300 , t299 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1008($sp) 

lw   $t2 , 1004($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t301 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 1012($sp) 

#t302 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1016($sp) 

#t282 , t302 , t301 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1016($sp) 

lw   $t2 , 1012($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t303 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1020($sp) 

#t304 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1024($sp) 

#t282 , t304 , t303 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1024($sp) 

lw   $t2 , 1020($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t305 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 1028($sp) 

#t306 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1032($sp) 

#t282 , t306 , t305 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1032($sp) 

lw   $t2 , 1028($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t307 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1036($sp) 

#t308 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1040($sp) 

#t282 , t308 , t307 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1040($sp) 

lw   $t2 , 1036($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t309 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 1044($sp) 

#t310 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1048($sp) 

#t282 , t310 , t309 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1048($sp) 

lw   $t2 , 1044($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t311 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 1052($sp) 

#t312 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1056($sp) 

#t282 , t312 , t311 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1056($sp) 

lw   $t2 , 1052($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t313 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 1060($sp) 

#t314 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1064($sp) 

#t282 , t314 , t313 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1064($sp) 

lw   $t2 , 1060($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t315 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 1068($sp) 

#t316 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1072($sp) 

#t282 , t316 , t315 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1072($sp) 

lw   $t2 , 1068($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t317 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 1076($sp) 

#t318 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1080($sp) 

#t282 , t318 , t317 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1080($sp) 

lw   $t2 , 1076($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t319 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 1084($sp) 

#t320 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1088($sp) 

#t282 , t320 , t319 , *=
lw   $t0 , 936($sp) 

lw   $t1 , 1088($sp) 

lw   $t2 , 1084($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t321 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1092($sp) 

#t322 , t282 , t321 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1092($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1096($sp) 

#putchar , t322 ,  , 
lw   $a0 , 1096($sp) 

li   $v0 , 11 

syscall  

#t323 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1100($sp) 

#t324 , t282 , t323 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1100($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1104($sp) 

#putchar , t324 ,  , 
lw   $a0 , 1104($sp) 

li   $v0 , 11 

syscall  

#t325 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1108($sp) 

#t326 , t282 , t325 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1108($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1112($sp) 

#putchar , t326 ,  , 
lw   $a0 , 1112($sp) 

li   $v0 , 11 

syscall  

#t327 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1116($sp) 

#t328 , t282 , t327 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1116($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1120($sp) 

#putchar , t328 ,  , 
lw   $a0 , 1120($sp) 

li   $v0 , 11 

syscall  

#t329 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1124($sp) 

#t330 , t282 , t329 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1124($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1128($sp) 

#putchar , t330 ,  , 
lw   $a0 , 1128($sp) 

li   $v0 , 11 

syscall  

#t331 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1132($sp) 

#t332 , t282 , t331 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1132($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1136($sp) 

#putchar , t332 ,  , 
lw   $a0 , 1136($sp) 

li   $v0 , 11 

syscall  

#t333 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1140($sp) 

#t334 , t282 , t333 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1140($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1144($sp) 

#putchar , t334 ,  , 
lw   $a0 , 1144($sp) 

li   $v0 , 11 

syscall  

#t335 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1148($sp) 

#t336 , t282 , t335 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1148($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1152($sp) 

#putchar , t336 ,  , 
lw   $a0 , 1152($sp) 

li   $v0 , 11 

syscall  

#t337 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1156($sp) 

#t338 , t282 , t337 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1156($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1160($sp) 

#putchar , t338 ,  , 
lw   $a0 , 1160($sp) 

li   $v0 , 11 

syscall  

#t339 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1164($sp) 

#t340 , t282 , t339 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1164($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1168($sp) 

#putchar , t340 ,  , 
lw   $a0 , 1168($sp) 

li   $v0 , 11 

syscall  

#t341 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1172($sp) 

#t342 , t282 , t341 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1172($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1176($sp) 

#putchar , t342 ,  , 
lw   $a0 , 1176($sp) 

li   $v0 , 11 

syscall  

#t343 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1180($sp) 

#t344 , t282 , t343 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1180($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1184($sp) 

#putchar , t344 ,  , 
lw   $a0 , 1184($sp) 

li   $v0 , 11 

syscall  

#t345 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1188($sp) 

#t346 , t282 , t345 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1188($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1192($sp) 

#putchar , t346 ,  , 
lw   $a0 , 1192($sp) 

li   $v0 , 11 

syscall  

#t347 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1196($sp) 

#t348 , t282 , t347 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1196($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1200($sp) 

#putchar , t348 ,  , 
lw   $a0 , 1200($sp) 

li   $v0 , 11 

syscall  

#t349 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1204($sp) 

#t350 , t282 , t349 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1204($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1208($sp) 

#putchar , t350 ,  , 
lw   $a0 , 1208($sp) 

li   $v0 , 11 

syscall  

#t351 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1212($sp) 

#t352 , t282 , t351 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1212($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1216($sp) 

#putchar , t352 ,  , 
lw   $a0 , 1216($sp) 

li   $v0 , 11 

syscall  

#t353 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1220($sp) 

#t354 , t282 , t353 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1220($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1224($sp) 

#putchar , t354 ,  , 
lw   $a0 , 1224($sp) 

li   $v0 , 11 

syscall  

#t355 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1228($sp) 

#t356 , t282 , t355 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1228($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1232($sp) 

#putchar , t356 ,  , 
lw   $a0 , 1232($sp) 

li   $v0 , 11 

syscall  

#t357 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1236($sp) 

#t358 , t282 , t357 , =*
lw   $t1 , 936($sp) 

lw   $t2 , 1236($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1240($sp) 

#putchar , t358 ,  , 
lw   $a0 , 1240($sp) 

li   $v0 , 11 

syscall  

#t359 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1244($sp) 

#putchar , t359 ,  , 
lw   $a0 , 1244($sp) 

li   $v0 , 11 

syscall  

#label , l10 ,  , 
l10:  

exit:
li $v0, 10 
syscall
