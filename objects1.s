.text 
main:
addi   $sp , $sp , -1988 

#goto , l0 ,  , 
b   l0 

#label , m0 ,  , 
m0:  

#methodStarts , m0 ,  , 
addi   $sp , $sp , -16 

#t0 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t1 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t2 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t1 , t2 , t0 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 8($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t1 ,  , 
lw   $v0 , 4($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t3 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#return , t3 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l0 ,  , 
l0:  

#goto , l1 ,  , 
b   l1 

#label , m1 ,  , 
m1:  

#methodStarts , m1 ,  , 
addi   $sp , $sp , -92 

#t4 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t6 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 4($sp) 

#t5 , t4 , t6 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 8($sp) 

#t7 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#t8 , t5 , t7 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 12($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 16($sp) 

#putchar , t8 ,  , 
lw   $a0 , 16($sp) 

li   $v0 , 11 

syscall  

#t9 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 20($sp) 

#t10 , t5 , t9 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 24($sp) 

#putchar , t10 ,  , 
lw   $a0 , 24($sp) 

li   $v0 , 11 

syscall  

#t11 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 28($sp) 

#t12 , t5 , t11 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 32($sp) 

#putchar , t12 ,  , 
lw   $a0 , 32($sp) 

li   $v0 , 11 

syscall  

#t13 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 36($sp) 

#t14 , t5 , t13 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 40($sp) 

#putchar , t14 ,  , 
lw   $a0 , 40($sp) 

li   $v0 , 11 

syscall  

#t15 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 44($sp) 

#t16 , t5 , t15 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 48($sp) 

#putchar , t16 ,  , 
lw   $a0 , 48($sp) 

li   $v0 , 11 

syscall  

#t17 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 52($sp) 

#t18 , t5 , t17 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 56($sp) 

#putchar , t18 ,  , 
lw   $a0 , 56($sp) 

li   $v0 , 11 

syscall  

#t19 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 60($sp) 

#t20 , t5 , t19 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 64($sp) 

#putchar , t20 ,  , 
lw   $a0 , 64($sp) 

li   $v0 , 11 

syscall  

#t21 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 68($sp) 

#t22 , t5 , t21 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 72($sp) 

#putchar , t22 ,  , 
lw   $a0 , 72($sp) 

li   $v0 , 11 

syscall  

#t23 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 76($sp) 

#t24 , t5 , t23 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 80($sp) 

#putchar , t24 ,  , 
lw   $a0 , 80($sp) 

li   $v0 , 11 

syscall  

#t25 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 84($sp) 

#putchar , t25 ,  , 
lw   $a0 , 84($sp) 

li   $v0 , 11 

syscall  

#t26 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 88($sp) 

#return , t26 ,  , 
lw   $v0 , 88($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l1 ,  , 
l1:  

#t27 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 0($sp) 

#t28 , t27 ,  , =
lw   $t0 , 0($sp) 

sw   $t0 , 0($gp) 

#goto , l2 ,  , 
b   l2 

#label , m2 ,  , 
m2:  

#methodStarts , m2 ,  , 
addi   $sp , $sp , -112 

#t29 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t30 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t31 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 8($sp) 

#t32 , t28 , t31 , +
lw   $t1 , 0($gp) 

lw   $t2 , 8($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 12($sp) 

#t28 , t32 ,  , =
lw   $t0 , 12($sp) 

sw   $t0 , 0($gp) 

#t33 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 16($sp) 

#t34 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 20($sp) 

#t35 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 24($sp) 

#t33 , t35 , t34 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t36 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 28($sp) 

#t37 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 32($sp) 

#t33 , t37 , t36 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t38 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 36($sp) 

#t39 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 40($sp) 

#t33 , t39 , t38 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 40($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t40 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 44($sp) 

#t41 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 48($sp) 

#t33 , t41 , t40 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 48($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t42 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 52($sp) 

#t43 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 56($sp) 

#t33 , t43 , t42 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t44 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 60($sp) 

#t45 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 64($sp) 

#t33 , t45 , t44 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 64($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t46 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 68($sp) 

#t47 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 72($sp) 

#t33 , t47 , t46 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t48 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 76($sp) 

#t49 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 80($sp) 

#t33 , t49 , t48 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t50 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 84($sp) 

#t51 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 88($sp) 

#t33 , t51 , t50 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 88($sp) 

lw   $t2 , 84($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t52 , 4 ,  , new
li   $a0 , 4 

li   $v0 , 9 

syscall  

sw   $v0 , 92($sp) 

#param , t52 ,  , 
lw   $t0 , 92($sp) 

sw   $t0 , -4($sp) 

#param , t33 ,  , 
lw   $t0 , 16($sp) 

sw   $t0 , -8($sp) 

#t53 , m0 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 96($sp) 

#t54 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 100($sp) 

#t30 , t54 , t53 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 100($sp) 

lw   $t2 , 96($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#param , t30 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -4($sp) 

#param , t29 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -8($sp) 

#t55 , m0 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 104($sp) 

#return , t30 ,  , 
lw   $v0 , 4($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t56 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 108($sp) 

#return , t56 ,  , 
lw   $v0 , 108($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l2 ,  , 
l2:  

#goto , l3 ,  , 
b   l3 

#label , m3 ,  , 
m3:  

#methodStarts , m3 ,  , 
addi   $sp , $sp , -16 

#t57 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t58 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t59 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 8($sp) 

#t58 , t59 , t57 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 8($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t60 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#return , t60 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l3 ,  , 
l3:  

#goto , l4 ,  , 
b   l4 

#label , m4 ,  , 
m4:  

#methodStarts , m4 ,  , 
addi   $sp , $sp , -96 

#t61 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t62 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 4($sp) 

#t63 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 8($sp) 

#t64 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#t62 , t64 , t63 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 12($sp) 

lw   $t2 , 8($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t65 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 16($sp) 

#t66 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 20($sp) 

#t62 , t66 , t65 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t67 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 24($sp) 

#t68 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 28($sp) 

#t62 , t68 , t67 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 28($sp) 

lw   $t2 , 24($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t69 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 32($sp) 

#t70 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 36($sp) 

#t62 , t70 , t69 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 36($sp) 

lw   $t2 , 32($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t71 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 40($sp) 

#t72 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 44($sp) 

#t62 , t72 , t71 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 44($sp) 

lw   $t2 , 40($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t73 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 48($sp) 

#t74 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 52($sp) 

#t62 , t74 , t73 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 52($sp) 

lw   $t2 , 48($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t75 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 56($sp) 

#t76 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 60($sp) 

#t62 , t76 , t75 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 60($sp) 

lw   $t2 , 56($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t77 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 64($sp) 

#t78 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 68($sp) 

#t62 , t78 , t77 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 68($sp) 

lw   $t2 , 64($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t79 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 72($sp) 

#t80 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 76($sp) 

#t62 , t80 , t79 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 76($sp) 

lw   $t2 , 72($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t81 , 4 ,  , new
li   $a0 , 4 

li   $v0 , 9 

syscall  

sw   $v0 , 80($sp) 

#param , t81 ,  , 
lw   $t0 , 80($sp) 

sw   $t0 , -4($sp) 

#param , t62 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -8($sp) 

#t82 , m0 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 84($sp) 

#t83 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 88($sp) 

#t61 , t83 , t82 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 88($sp) 

lw   $t2 , 84($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t84 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 92($sp) 

#return , t84 ,  , 
lw   $v0 , 92($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l4 ,  , 
l4:  

#goto , l5 ,  , 
b   l5 

#label , m5 ,  , 
m5:  

#methodStarts , m5 ,  , 
addi   $sp , $sp , -32 

#t85 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t86 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t87 ,  ,  , getarg
lw   $t0 , 16($fp) 

sw   $t0 , 8($sp) 

#t88 ,  ,  , getarg
lw   $t0 , 20($fp) 

sw   $t0 , 12($sp) 

#t89 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 16($sp) 

#t88 , t89 , t87 , *=
lw   $t0 , 12($sp) 

lw   $t1 , 16($sp) 

lw   $t2 , 8($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t90 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 20($sp) 

#t88 , t90 , t86 , *=
lw   $t0 , 12($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t91 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 24($sp) 

#t88 , t91 , t85 , *=
lw   $t0 , 12($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t88 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t92 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 28($sp) 

#return , t92 ,  , 
lw   $v0 , 28($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l5 ,  , 
l5:  

#t93 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 4($sp) 

#t94 , t93 ,  , =
lw   $t0 , 4($sp) 

sw   $t0 , 4($gp) 

#goto , l6 ,  , 
b   l6 

#label , m6 ,  , 
m6:  

#methodStarts , m6 ,  , 
addi   $sp , $sp , -64 

#t95 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t96 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t97 ,  ,  , getarg
lw   $t0 , 16($fp) 

sw   $t0 , 8($sp) 

#t98 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 12($sp) 

#t99 , t94 , t98 , +
lw   $t1 , 4($gp) 

lw   $t2 , 12($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 16($sp) 

#t94 , t99 ,  , =
lw   $t0 , 16($sp) 

sw   $t0 , 4($gp) 

#t100 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 20($sp) 

#t97 , t100 , t96 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t102 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 24($sp) 

#t101 , t97 , t102 , =*
lw   $t1 , 8($sp) 

lw   $t2 , 24($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 28($sp) 

#param , t101 ,  , 
lw   $t0 , 28($sp) 

sw   $t0 , -4($sp) 

#param , t95 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -8($sp) 

#t103 , m3 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m3 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 32($sp) 

#t104 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 36($sp) 

#t105 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 40($sp) 

#t106 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 44($sp) 

#t107 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 48($sp) 

#param , t107 ,  , 
lw   $t0 , 48($sp) 

sw   $t0 , -4($sp) 

#param , t104 ,  , 
lw   $t0 , 36($sp) 

sw   $t0 , -8($sp) 

#param , t105 ,  , 
lw   $t0 , 40($sp) 

sw   $t0 , -12($sp) 

#param , t106 ,  , 
lw   $t0 , 44($sp) 

sw   $t0 , -16($sp) 

#t108 , m5 ,  , call
addi   $sp , $sp , -16 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m5 

lw   $ra , 0($sp) 

addi   $sp , $sp , 24 

sw   $v0 , 52($sp) 

#t109 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 56($sp) 

#t97 , t109 , t108 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t97 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t110 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 60($sp) 

#return , t110 ,  , 
lw   $v0 , 60($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l6 ,  , 
l6:  

#goto , l7 ,  , 
b   l7 

#label , m7 ,  , 
m7:  

#methodStarts , m7 ,  , 
addi   $sp , $sp , -16 

#t111 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t112 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t113 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 8($sp) 

#t112 , t113 , t111 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 8($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t114 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#return , t114 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l7 ,  , 
l7:  

#goto , l8 ,  , 
b   l8 

#label , m8 ,  , 
m8:  

#methodStarts , m8 ,  , 
addi   $sp , $sp , -1352 

#t115 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t116 , 168 ,  , new
li   $a0 , 168 

li   $v0 , 9 

syscall  

sw   $v0 , 4($sp) 

#t117 , 'T' ,  , =
li   $t0 , 84 

sw   $t0 , 8($sp) 

#t118 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#t116 , t118 , t117 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 12($sp) 

lw   $t2 , 8($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t119 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 16($sp) 

#t120 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 20($sp) 

#t116 , t120 , t119 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t121 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 24($sp) 

#t122 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 28($sp) 

#t116 , t122 , t121 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 28($sp) 

lw   $t2 , 24($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t123 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 32($sp) 

#t124 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 36($sp) 

#t116 , t124 , t123 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 36($sp) 

lw   $t2 , 32($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t125 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 40($sp) 

#t126 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 44($sp) 

#t116 , t126 , t125 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 44($sp) 

lw   $t2 , 40($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t127 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 48($sp) 

#t128 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 52($sp) 

#t116 , t128 , t127 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 52($sp) 

lw   $t2 , 48($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t129 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 56($sp) 

#t130 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 60($sp) 

#t116 , t130 , t129 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 60($sp) 

lw   $t2 , 56($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t131 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 64($sp) 

#t132 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 68($sp) 

#t116 , t132 , t131 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 68($sp) 

lw   $t2 , 64($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t133 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 72($sp) 

#t134 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 76($sp) 

#t116 , t134 , t133 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 76($sp) 

lw   $t2 , 72($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t135 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 80($sp) 

#t136 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 84($sp) 

#t116 , t136 , t135 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 84($sp) 

lw   $t2 , 80($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t137 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 88($sp) 

#t138 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 92($sp) 

#t116 , t138 , t137 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 92($sp) 

lw   $t2 , 88($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t139 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 96($sp) 

#t140 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 100($sp) 

#t116 , t140 , t139 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 100($sp) 

lw   $t2 , 96($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t141 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 104($sp) 

#t142 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 108($sp) 

#t116 , t142 , t141 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 108($sp) 

lw   $t2 , 104($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t143 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 112($sp) 

#t144 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 116($sp) 

#t116 , t144 , t143 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 116($sp) 

lw   $t2 , 112($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t145 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 120($sp) 

#t146 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 124($sp) 

#t116 , t146 , t145 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 124($sp) 

lw   $t2 , 120($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t147 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 128($sp) 

#t148 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 132($sp) 

#t116 , t148 , t147 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 132($sp) 

lw   $t2 , 128($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t149 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 136($sp) 

#t150 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 140($sp) 

#t116 , t150 , t149 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 140($sp) 

lw   $t2 , 136($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t151 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 144($sp) 

#t152 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 148($sp) 

#t116 , t152 , t151 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 148($sp) 

lw   $t2 , 144($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t153 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 152($sp) 

#t154 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 156($sp) 

#t116 , t154 , t153 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 156($sp) 

lw   $t2 , 152($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t155 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 160($sp) 

#t156 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 164($sp) 

#t116 , t156 , t155 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 164($sp) 

lw   $t2 , 160($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t157 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 168($sp) 

#t158 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 172($sp) 

#t116 , t158 , t157 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 172($sp) 

lw   $t2 , 168($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t159 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 176($sp) 

#t160 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 180($sp) 

#t116 , t160 , t159 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 180($sp) 

lw   $t2 , 176($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t161 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 184($sp) 

#t162 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 188($sp) 

#t116 , t162 , t161 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 188($sp) 

lw   $t2 , 184($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t163 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 192($sp) 

#t164 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 196($sp) 

#t116 , t164 , t163 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 196($sp) 

lw   $t2 , 192($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t165 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 200($sp) 

#t166 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 204($sp) 

#t116 , t166 , t165 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 204($sp) 

lw   $t2 , 200($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t167 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 208($sp) 

#t168 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 212($sp) 

#t116 , t168 , t167 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 212($sp) 

lw   $t2 , 208($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t169 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 216($sp) 

#t170 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 220($sp) 

#t116 , t170 , t169 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 220($sp) 

lw   $t2 , 216($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t171 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 224($sp) 

#t172 , 108 ,  , =
li   $t0 , 108 

sw   $t0 , 228($sp) 

#t116 , t172 , t171 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 228($sp) 

lw   $t2 , 224($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t173 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 232($sp) 

#t174 , 112 ,  , =
li   $t0 , 112 

sw   $t0 , 236($sp) 

#t116 , t174 , t173 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 236($sp) 

lw   $t2 , 232($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t175 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 240($sp) 

#t176 , 116 ,  , =
li   $t0 , 116 

sw   $t0 , 244($sp) 

#t116 , t176 , t175 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 244($sp) 

lw   $t2 , 240($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t177 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 248($sp) 

#t178 , 120 ,  , =
li   $t0 , 120 

sw   $t0 , 252($sp) 

#t116 , t178 , t177 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 252($sp) 

lw   $t2 , 248($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t179 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 256($sp) 

#t180 , 124 ,  , =
li   $t0 , 124 

sw   $t0 , 260($sp) 

#t116 , t180 , t179 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 260($sp) 

lw   $t2 , 256($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t181 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 264($sp) 

#t182 , 128 ,  , =
li   $t0 , 128 

sw   $t0 , 268($sp) 

#t116 , t182 , t181 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 268($sp) 

lw   $t2 , 264($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t183 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 272($sp) 

#t184 , 132 ,  , =
li   $t0 , 132 

sw   $t0 , 276($sp) 

#t116 , t184 , t183 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 276($sp) 

lw   $t2 , 272($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t185 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 280($sp) 

#t186 , 136 ,  , =
li   $t0 , 136 

sw   $t0 , 284($sp) 

#t116 , t186 , t185 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 284($sp) 

lw   $t2 , 280($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t187 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 288($sp) 

#t188 , 140 ,  , =
li   $t0 , 140 

sw   $t0 , 292($sp) 

#t116 , t188 , t187 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 292($sp) 

lw   $t2 , 288($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t189 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 296($sp) 

#t190 , 144 ,  , =
li   $t0 , 144 

sw   $t0 , 300($sp) 

#t116 , t190 , t189 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 300($sp) 

lw   $t2 , 296($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t191 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 304($sp) 

#t192 , 148 ,  , =
li   $t0 , 148 

sw   $t0 , 308($sp) 

#t116 , t192 , t191 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 308($sp) 

lw   $t2 , 304($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t193 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 312($sp) 

#t194 , 152 ,  , =
li   $t0 , 152 

sw   $t0 , 316($sp) 

#t116 , t194 , t193 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 316($sp) 

lw   $t2 , 312($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t195 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 320($sp) 

#t196 , 156 ,  , =
li   $t0 , 156 

sw   $t0 , 324($sp) 

#t116 , t196 , t195 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 324($sp) 

lw   $t2 , 320($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t197 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 328($sp) 

#t198 , 160 ,  , =
li   $t0 , 160 

sw   $t0 , 332($sp) 

#t116 , t198 , t197 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 332($sp) 

lw   $t2 , 328($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t199 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 336($sp) 

#t200 , 164 ,  , =
li   $t0 , 164 

sw   $t0 , 340($sp) 

#t116 , t200 , t199 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 340($sp) 

lw   $t2 , 336($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t201 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 344($sp) 

#t202 , t116 , t201 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 344($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 348($sp) 

#putchar , t202 ,  , 
lw   $a0 , 348($sp) 

li   $v0 , 11 

syscall  

#t203 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 352($sp) 

#t204 , t116 , t203 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 352($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 356($sp) 

#putchar , t204 ,  , 
lw   $a0 , 356($sp) 

li   $v0 , 11 

syscall  

#t205 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 360($sp) 

#t206 , t116 , t205 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 360($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 364($sp) 

#putchar , t206 ,  , 
lw   $a0 , 364($sp) 

li   $v0 , 11 

syscall  

#t207 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 368($sp) 

#t208 , t116 , t207 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 368($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 372($sp) 

#putchar , t208 ,  , 
lw   $a0 , 372($sp) 

li   $v0 , 11 

syscall  

#t209 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 376($sp) 

#t210 , t116 , t209 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 376($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 380($sp) 

#putchar , t210 ,  , 
lw   $a0 , 380($sp) 

li   $v0 , 11 

syscall  

#t211 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 384($sp) 

#t212 , t116 , t211 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 384($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 388($sp) 

#putchar , t212 ,  , 
lw   $a0 , 388($sp) 

li   $v0 , 11 

syscall  

#t213 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 392($sp) 

#t214 , t116 , t213 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 392($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 396($sp) 

#putchar , t214 ,  , 
lw   $a0 , 396($sp) 

li   $v0 , 11 

syscall  

#t215 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 400($sp) 

#t216 , t116 , t215 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 400($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 404($sp) 

#putchar , t216 ,  , 
lw   $a0 , 404($sp) 

li   $v0 , 11 

syscall  

#t217 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 408($sp) 

#t218 , t116 , t217 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 408($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 412($sp) 

#putchar , t218 ,  , 
lw   $a0 , 412($sp) 

li   $v0 , 11 

syscall  

#t219 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 416($sp) 

#t220 , t116 , t219 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 416($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 420($sp) 

#putchar , t220 ,  , 
lw   $a0 , 420($sp) 

li   $v0 , 11 

syscall  

#t221 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 424($sp) 

#t222 , t116 , t221 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 424($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 428($sp) 

#putchar , t222 ,  , 
lw   $a0 , 428($sp) 

li   $v0 , 11 

syscall  

#t223 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 432($sp) 

#t224 , t116 , t223 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 432($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 436($sp) 

#putchar , t224 ,  , 
lw   $a0 , 436($sp) 

li   $v0 , 11 

syscall  

#t225 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 440($sp) 

#t226 , t116 , t225 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 440($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 444($sp) 

#putchar , t226 ,  , 
lw   $a0 , 444($sp) 

li   $v0 , 11 

syscall  

#t227 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 448($sp) 

#t228 , t116 , t227 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 448($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 452($sp) 

#putchar , t228 ,  , 
lw   $a0 , 452($sp) 

li   $v0 , 11 

syscall  

#t229 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 456($sp) 

#t230 , t116 , t229 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 456($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 460($sp) 

#putchar , t230 ,  , 
lw   $a0 , 460($sp) 

li   $v0 , 11 

syscall  

#t231 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 464($sp) 

#t232 , t116 , t231 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 464($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 468($sp) 

#putchar , t232 ,  , 
lw   $a0 , 468($sp) 

li   $v0 , 11 

syscall  

#t233 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 472($sp) 

#t234 , t116 , t233 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 472($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 476($sp) 

#putchar , t234 ,  , 
lw   $a0 , 476($sp) 

li   $v0 , 11 

syscall  

#t235 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 480($sp) 

#t236 , t116 , t235 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 480($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 484($sp) 

#putchar , t236 ,  , 
lw   $a0 , 484($sp) 

li   $v0 , 11 

syscall  

#t237 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 488($sp) 

#t238 , t116 , t237 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 488($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 492($sp) 

#putchar , t238 ,  , 
lw   $a0 , 492($sp) 

li   $v0 , 11 

syscall  

#t239 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 496($sp) 

#t240 , t116 , t239 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 496($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 500($sp) 

#putchar , t240 ,  , 
lw   $a0 , 500($sp) 

li   $v0 , 11 

syscall  

#t241 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 504($sp) 

#t242 , t116 , t241 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 504($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 508($sp) 

#putchar , t242 ,  , 
lw   $a0 , 508($sp) 

li   $v0 , 11 

syscall  

#t243 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 512($sp) 

#t244 , t116 , t243 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 512($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 516($sp) 

#putchar , t244 ,  , 
lw   $a0 , 516($sp) 

li   $v0 , 11 

syscall  

#t245 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 520($sp) 

#t246 , t116 , t245 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 520($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 524($sp) 

#putchar , t246 ,  , 
lw   $a0 , 524($sp) 

li   $v0 , 11 

syscall  

#t247 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 528($sp) 

#t248 , t116 , t247 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 528($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 532($sp) 

#putchar , t248 ,  , 
lw   $a0 , 532($sp) 

li   $v0 , 11 

syscall  

#t249 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 536($sp) 

#t250 , t116 , t249 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 536($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 540($sp) 

#putchar , t250 ,  , 
lw   $a0 , 540($sp) 

li   $v0 , 11 

syscall  

#t251 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 544($sp) 

#t252 , t116 , t251 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 544($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 548($sp) 

#putchar , t252 ,  , 
lw   $a0 , 548($sp) 

li   $v0 , 11 

syscall  

#t253 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 552($sp) 

#t254 , t116 , t253 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 552($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 556($sp) 

#putchar , t254 ,  , 
lw   $a0 , 556($sp) 

li   $v0 , 11 

syscall  

#t255 , 108 ,  , =
li   $t0 , 108 

sw   $t0 , 560($sp) 

#t256 , t116 , t255 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 560($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 564($sp) 

#putchar , t256 ,  , 
lw   $a0 , 564($sp) 

li   $v0 , 11 

syscall  

#t257 , 112 ,  , =
li   $t0 , 112 

sw   $t0 , 568($sp) 

#t258 , t116 , t257 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 568($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 572($sp) 

#putchar , t258 ,  , 
lw   $a0 , 572($sp) 

li   $v0 , 11 

syscall  

#t259 , 116 ,  , =
li   $t0 , 116 

sw   $t0 , 576($sp) 

#t260 , t116 , t259 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 576($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 580($sp) 

#putchar , t260 ,  , 
lw   $a0 , 580($sp) 

li   $v0 , 11 

syscall  

#t261 , 120 ,  , =
li   $t0 , 120 

sw   $t0 , 584($sp) 

#t262 , t116 , t261 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 584($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 588($sp) 

#putchar , t262 ,  , 
lw   $a0 , 588($sp) 

li   $v0 , 11 

syscall  

#t263 , 124 ,  , =
li   $t0 , 124 

sw   $t0 , 592($sp) 

#t264 , t116 , t263 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 592($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 596($sp) 

#putchar , t264 ,  , 
lw   $a0 , 596($sp) 

li   $v0 , 11 

syscall  

#t265 , 128 ,  , =
li   $t0 , 128 

sw   $t0 , 600($sp) 

#t266 , t116 , t265 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 600($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 604($sp) 

#putchar , t266 ,  , 
lw   $a0 , 604($sp) 

li   $v0 , 11 

syscall  

#t267 , 132 ,  , =
li   $t0 , 132 

sw   $t0 , 608($sp) 

#t268 , t116 , t267 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 608($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 612($sp) 

#putchar , t268 ,  , 
lw   $a0 , 612($sp) 

li   $v0 , 11 

syscall  

#t269 , 136 ,  , =
li   $t0 , 136 

sw   $t0 , 616($sp) 

#t270 , t116 , t269 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 616($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 620($sp) 

#putchar , t270 ,  , 
lw   $a0 , 620($sp) 

li   $v0 , 11 

syscall  

#t271 , 140 ,  , =
li   $t0 , 140 

sw   $t0 , 624($sp) 

#t272 , t116 , t271 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 624($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 628($sp) 

#putchar , t272 ,  , 
lw   $a0 , 628($sp) 

li   $v0 , 11 

syscall  

#t273 , 144 ,  , =
li   $t0 , 144 

sw   $t0 , 632($sp) 

#t274 , t116 , t273 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 632($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 636($sp) 

#putchar , t274 ,  , 
lw   $a0 , 636($sp) 

li   $v0 , 11 

syscall  

#t275 , 148 ,  , =
li   $t0 , 148 

sw   $t0 , 640($sp) 

#t276 , t116 , t275 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 640($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 644($sp) 

#putchar , t276 ,  , 
lw   $a0 , 644($sp) 

li   $v0 , 11 

syscall  

#t277 , 152 ,  , =
li   $t0 , 152 

sw   $t0 , 648($sp) 

#t278 , t116 , t277 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 648($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 652($sp) 

#putchar , t278 ,  , 
lw   $a0 , 652($sp) 

li   $v0 , 11 

syscall  

#t279 , 156 ,  , =
li   $t0 , 156 

sw   $t0 , 656($sp) 

#t280 , t116 , t279 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 656($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 660($sp) 

#putchar , t280 ,  , 
lw   $a0 , 660($sp) 

li   $v0 , 11 

syscall  

#t281 , 160 ,  , =
li   $t0 , 160 

sw   $t0 , 664($sp) 

#t282 , t116 , t281 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 664($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 668($sp) 

#putchar , t282 ,  , 
lw   $a0 , 668($sp) 

li   $v0 , 11 

syscall  

#t283 , 164 ,  , =
li   $t0 , 164 

sw   $t0 , 672($sp) 

#t284 , t116 , t283 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 672($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 676($sp) 

#putchar , t284 ,  , 
lw   $a0 , 676($sp) 

li   $v0 , 11 

syscall  

#t285 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 680($sp) 

#putchar , t285 ,  , 
lw   $a0 , 680($sp) 

li   $v0 , 11 

syscall  

#t287 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 684($sp) 

#t286 , t115 , t287 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 684($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 688($sp) 

#param , t286 ,  , 
lw   $t0 , 688($sp) 

sw   $t0 , -4($sp) 

#t288 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 692($sp) 

#t289 , 156 ,  , new
li   $a0 , 156 

li   $v0 , 9 

syscall  

sw   $v0 , 696($sp) 

#t290 , 'T' ,  , =
li   $t0 , 84 

sw   $t0 , 700($sp) 

#t291 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 704($sp) 

#t289 , t291 , t290 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 704($sp) 

lw   $t2 , 700($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t292 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 708($sp) 

#t293 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 712($sp) 

#t289 , t293 , t292 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 712($sp) 

lw   $t2 , 708($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t294 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 716($sp) 

#t295 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 720($sp) 

#t289 , t295 , t294 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 720($sp) 

lw   $t2 , 716($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t296 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 724($sp) 

#t297 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 728($sp) 

#t289 , t297 , t296 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 728($sp) 

lw   $t2 , 724($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t298 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 732($sp) 

#t299 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 736($sp) 

#t289 , t299 , t298 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 736($sp) 

lw   $t2 , 732($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t300 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 740($sp) 

#t301 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 744($sp) 

#t289 , t301 , t300 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 744($sp) 

lw   $t2 , 740($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t302 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 748($sp) 

#t303 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 752($sp) 

#t289 , t303 , t302 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 752($sp) 

lw   $t2 , 748($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t304 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 756($sp) 

#t305 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 760($sp) 

#t289 , t305 , t304 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 760($sp) 

lw   $t2 , 756($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t306 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 764($sp) 

#t307 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 768($sp) 

#t289 , t307 , t306 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 768($sp) 

lw   $t2 , 764($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t308 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 772($sp) 

#t309 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 776($sp) 

#t289 , t309 , t308 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 776($sp) 

lw   $t2 , 772($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t310 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 780($sp) 

#t311 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 784($sp) 

#t289 , t311 , t310 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 784($sp) 

lw   $t2 , 780($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t312 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 788($sp) 

#t313 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 792($sp) 

#t289 , t313 , t312 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 792($sp) 

lw   $t2 , 788($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t314 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 796($sp) 

#t315 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 800($sp) 

#t289 , t315 , t314 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 800($sp) 

lw   $t2 , 796($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t316 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 804($sp) 

#t317 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 808($sp) 

#t289 , t317 , t316 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 808($sp) 

lw   $t2 , 804($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t318 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 812($sp) 

#t319 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 816($sp) 

#t289 , t319 , t318 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 816($sp) 

lw   $t2 , 812($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t320 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 820($sp) 

#t321 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 824($sp) 

#t289 , t321 , t320 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 824($sp) 

lw   $t2 , 820($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t322 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 828($sp) 

#t323 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 832($sp) 

#t289 , t323 , t322 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 832($sp) 

lw   $t2 , 828($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t324 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 836($sp) 

#t325 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 840($sp) 

#t289 , t325 , t324 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 840($sp) 

lw   $t2 , 836($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t326 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 844($sp) 

#t327 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 848($sp) 

#t289 , t327 , t326 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 848($sp) 

lw   $t2 , 844($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t328 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 852($sp) 

#t329 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 856($sp) 

#t289 , t329 , t328 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 856($sp) 

lw   $t2 , 852($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t330 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 860($sp) 

#t331 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 864($sp) 

#t289 , t331 , t330 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 864($sp) 

lw   $t2 , 860($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t332 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 868($sp) 

#t333 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 872($sp) 

#t289 , t333 , t332 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 872($sp) 

lw   $t2 , 868($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t334 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 876($sp) 

#t335 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 880($sp) 

#t289 , t335 , t334 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 880($sp) 

lw   $t2 , 876($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t336 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 884($sp) 

#t337 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 888($sp) 

#t289 , t337 , t336 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 888($sp) 

lw   $t2 , 884($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t338 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 892($sp) 

#t339 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 896($sp) 

#t289 , t339 , t338 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 896($sp) 

lw   $t2 , 892($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t340 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 900($sp) 

#t341 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 904($sp) 

#t289 , t341 , t340 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 904($sp) 

lw   $t2 , 900($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t342 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 908($sp) 

#t343 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 912($sp) 

#t289 , t343 , t342 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 912($sp) 

lw   $t2 , 908($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t344 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 916($sp) 

#t345 , 108 ,  , =
li   $t0 , 108 

sw   $t0 , 920($sp) 

#t289 , t345 , t344 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 920($sp) 

lw   $t2 , 916($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t346 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 924($sp) 

#t347 , 112 ,  , =
li   $t0 , 112 

sw   $t0 , 928($sp) 

#t289 , t347 , t346 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 928($sp) 

lw   $t2 , 924($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t348 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 932($sp) 

#t349 , 116 ,  , =
li   $t0 , 116 

sw   $t0 , 936($sp) 

#t289 , t349 , t348 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 936($sp) 

lw   $t2 , 932($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t350 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 940($sp) 

#t351 , 120 ,  , =
li   $t0 , 120 

sw   $t0 , 944($sp) 

#t289 , t351 , t350 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 944($sp) 

lw   $t2 , 940($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t352 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 948($sp) 

#t353 , 124 ,  , =
li   $t0 , 124 

sw   $t0 , 952($sp) 

#t289 , t353 , t352 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 952($sp) 

lw   $t2 , 948($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t354 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 956($sp) 

#t355 , 128 ,  , =
li   $t0 , 128 

sw   $t0 , 960($sp) 

#t289 , t355 , t354 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 960($sp) 

lw   $t2 , 956($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t356 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 964($sp) 

#t357 , 132 ,  , =
li   $t0 , 132 

sw   $t0 , 968($sp) 

#t289 , t357 , t356 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 968($sp) 

lw   $t2 , 964($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t358 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 972($sp) 

#t359 , 136 ,  , =
li   $t0 , 136 

sw   $t0 , 976($sp) 

#t289 , t359 , t358 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 976($sp) 

lw   $t2 , 972($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t360 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 980($sp) 

#t361 , 140 ,  , =
li   $t0 , 140 

sw   $t0 , 984($sp) 

#t289 , t361 , t360 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 984($sp) 

lw   $t2 , 980($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t362 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 988($sp) 

#t363 , 144 ,  , =
li   $t0 , 144 

sw   $t0 , 992($sp) 

#t289 , t363 , t362 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 992($sp) 

lw   $t2 , 988($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t364 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 996($sp) 

#t365 , 148 ,  , =
li   $t0 , 148 

sw   $t0 , 1000($sp) 

#t289 , t365 , t364 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 1000($sp) 

lw   $t2 , 996($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t366 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 1004($sp) 

#t367 , 152 ,  , =
li   $t0 , 152 

sw   $t0 , 1008($sp) 

#t289 , t367 , t366 , *=
lw   $t0 , 696($sp) 

lw   $t1 , 1008($sp) 

lw   $t2 , 1004($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t368 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1012($sp) 

#t369 , t289 , t368 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1012($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1016($sp) 

#putchar , t369 ,  , 
lw   $a0 , 1016($sp) 

li   $v0 , 11 

syscall  

#t370 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1020($sp) 

#t371 , t289 , t370 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1020($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1024($sp) 

#putchar , t371 ,  , 
lw   $a0 , 1024($sp) 

li   $v0 , 11 

syscall  

#t372 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1028($sp) 

#t373 , t289 , t372 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1028($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1032($sp) 

#putchar , t373 ,  , 
lw   $a0 , 1032($sp) 

li   $v0 , 11 

syscall  

#t374 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1036($sp) 

#t375 , t289 , t374 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1036($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1040($sp) 

#putchar , t375 ,  , 
lw   $a0 , 1040($sp) 

li   $v0 , 11 

syscall  

#t376 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1044($sp) 

#t377 , t289 , t376 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1044($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1048($sp) 

#putchar , t377 ,  , 
lw   $a0 , 1048($sp) 

li   $v0 , 11 

syscall  

#t378 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1052($sp) 

#t379 , t289 , t378 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1052($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1056($sp) 

#putchar , t379 ,  , 
lw   $a0 , 1056($sp) 

li   $v0 , 11 

syscall  

#t380 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1060($sp) 

#t381 , t289 , t380 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1060($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1064($sp) 

#putchar , t381 ,  , 
lw   $a0 , 1064($sp) 

li   $v0 , 11 

syscall  

#t382 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1068($sp) 

#t383 , t289 , t382 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1068($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1072($sp) 

#putchar , t383 ,  , 
lw   $a0 , 1072($sp) 

li   $v0 , 11 

syscall  

#t384 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1076($sp) 

#t385 , t289 , t384 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1076($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1080($sp) 

#putchar , t385 ,  , 
lw   $a0 , 1080($sp) 

li   $v0 , 11 

syscall  

#t386 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1084($sp) 

#t387 , t289 , t386 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1084($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1088($sp) 

#putchar , t387 ,  , 
lw   $a0 , 1088($sp) 

li   $v0 , 11 

syscall  

#t388 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1092($sp) 

#t389 , t289 , t388 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1092($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1096($sp) 

#putchar , t389 ,  , 
lw   $a0 , 1096($sp) 

li   $v0 , 11 

syscall  

#t390 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1100($sp) 

#t391 , t289 , t390 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1100($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1104($sp) 

#putchar , t391 ,  , 
lw   $a0 , 1104($sp) 

li   $v0 , 11 

syscall  

#t392 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1108($sp) 

#t393 , t289 , t392 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1108($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1112($sp) 

#putchar , t393 ,  , 
lw   $a0 , 1112($sp) 

li   $v0 , 11 

syscall  

#t394 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1116($sp) 

#t395 , t289 , t394 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1116($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1120($sp) 

#putchar , t395 ,  , 
lw   $a0 , 1120($sp) 

li   $v0 , 11 

syscall  

#t396 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1124($sp) 

#t397 , t289 , t396 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1124($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1128($sp) 

#putchar , t397 ,  , 
lw   $a0 , 1128($sp) 

li   $v0 , 11 

syscall  

#t398 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1132($sp) 

#t399 , t289 , t398 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1132($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1136($sp) 

#putchar , t399 ,  , 
lw   $a0 , 1136($sp) 

li   $v0 , 11 

syscall  

#t400 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1140($sp) 

#t401 , t289 , t400 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1140($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1144($sp) 

#putchar , t401 ,  , 
lw   $a0 , 1144($sp) 

li   $v0 , 11 

syscall  

#t402 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1148($sp) 

#t403 , t289 , t402 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1148($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1152($sp) 

#putchar , t403 ,  , 
lw   $a0 , 1152($sp) 

li   $v0 , 11 

syscall  

#t404 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1156($sp) 

#t405 , t289 , t404 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1156($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1160($sp) 

#putchar , t405 ,  , 
lw   $a0 , 1160($sp) 

li   $v0 , 11 

syscall  

#t406 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 1164($sp) 

#t407 , t289 , t406 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1164($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1168($sp) 

#putchar , t407 ,  , 
lw   $a0 , 1168($sp) 

li   $v0 , 11 

syscall  

#t408 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 1172($sp) 

#t409 , t289 , t408 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1172($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1176($sp) 

#putchar , t409 ,  , 
lw   $a0 , 1176($sp) 

li   $v0 , 11 

syscall  

#t410 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 1180($sp) 

#t411 , t289 , t410 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1180($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1184($sp) 

#putchar , t411 ,  , 
lw   $a0 , 1184($sp) 

li   $v0 , 11 

syscall  

#t412 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 1188($sp) 

#t413 , t289 , t412 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1188($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1192($sp) 

#putchar , t413 ,  , 
lw   $a0 , 1192($sp) 

li   $v0 , 11 

syscall  

#t414 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 1196($sp) 

#t415 , t289 , t414 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1196($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1200($sp) 

#putchar , t415 ,  , 
lw   $a0 , 1200($sp) 

li   $v0 , 11 

syscall  

#t416 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 1204($sp) 

#t417 , t289 , t416 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1204($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1208($sp) 

#putchar , t417 ,  , 
lw   $a0 , 1208($sp) 

li   $v0 , 11 

syscall  

#t418 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 1212($sp) 

#t419 , t289 , t418 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1212($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1216($sp) 

#putchar , t419 ,  , 
lw   $a0 , 1216($sp) 

li   $v0 , 11 

syscall  

#t420 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 1220($sp) 

#t421 , t289 , t420 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1220($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1224($sp) 

#putchar , t421 ,  , 
lw   $a0 , 1224($sp) 

li   $v0 , 11 

syscall  

#t422 , 108 ,  , =
li   $t0 , 108 

sw   $t0 , 1228($sp) 

#t423 , t289 , t422 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1228($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1232($sp) 

#putchar , t423 ,  , 
lw   $a0 , 1232($sp) 

li   $v0 , 11 

syscall  

#t424 , 112 ,  , =
li   $t0 , 112 

sw   $t0 , 1236($sp) 

#t425 , t289 , t424 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1236($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1240($sp) 

#putchar , t425 ,  , 
lw   $a0 , 1240($sp) 

li   $v0 , 11 

syscall  

#t426 , 116 ,  , =
li   $t0 , 116 

sw   $t0 , 1244($sp) 

#t427 , t289 , t426 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1244($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1248($sp) 

#putchar , t427 ,  , 
lw   $a0 , 1248($sp) 

li   $v0 , 11 

syscall  

#t428 , 120 ,  , =
li   $t0 , 120 

sw   $t0 , 1252($sp) 

#t429 , t289 , t428 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1252($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1256($sp) 

#putchar , t429 ,  , 
lw   $a0 , 1256($sp) 

li   $v0 , 11 

syscall  

#t430 , 124 ,  , =
li   $t0 , 124 

sw   $t0 , 1260($sp) 

#t431 , t289 , t430 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1260($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1264($sp) 

#putchar , t431 ,  , 
lw   $a0 , 1264($sp) 

li   $v0 , 11 

syscall  

#t432 , 128 ,  , =
li   $t0 , 128 

sw   $t0 , 1268($sp) 

#t433 , t289 , t432 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1268($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1272($sp) 

#putchar , t433 ,  , 
lw   $a0 , 1272($sp) 

li   $v0 , 11 

syscall  

#t434 , 132 ,  , =
li   $t0 , 132 

sw   $t0 , 1276($sp) 

#t435 , t289 , t434 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1276($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1280($sp) 

#putchar , t435 ,  , 
lw   $a0 , 1280($sp) 

li   $v0 , 11 

syscall  

#t436 , 136 ,  , =
li   $t0 , 136 

sw   $t0 , 1284($sp) 

#t437 , t289 , t436 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1284($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1288($sp) 

#putchar , t437 ,  , 
lw   $a0 , 1288($sp) 

li   $v0 , 11 

syscall  

#t438 , 140 ,  , =
li   $t0 , 140 

sw   $t0 , 1292($sp) 

#t439 , t289 , t438 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1292($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1296($sp) 

#putchar , t439 ,  , 
lw   $a0 , 1296($sp) 

li   $v0 , 11 

syscall  

#t440 , 144 ,  , =
li   $t0 , 144 

sw   $t0 , 1300($sp) 

#t441 , t289 , t440 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1300($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1304($sp) 

#putchar , t441 ,  , 
lw   $a0 , 1304($sp) 

li   $v0 , 11 

syscall  

#t442 , 148 ,  , =
li   $t0 , 148 

sw   $t0 , 1308($sp) 

#t443 , t289 , t442 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1308($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1312($sp) 

#putchar , t443 ,  , 
lw   $a0 , 1312($sp) 

li   $v0 , 11 

syscall  

#t444 , 152 ,  , =
li   $t0 , 152 

sw   $t0 , 1316($sp) 

#t445 , t289 , t444 , =*
lw   $t1 , 696($sp) 

lw   $t2 , 1316($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1320($sp) 

#putchar , t445 ,  , 
lw   $a0 , 1320($sp) 

li   $v0 , 11 

syscall  

#t446 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1324($sp) 

#putchar , t446 ,  , 
lw   $a0 , 1324($sp) 

li   $v0 , 11 

syscall  

#t448 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1328($sp) 

#t447 , t115 , t448 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 1328($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1332($sp) 

#t450 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1336($sp) 

#t449 , t447 , t450 , =*
lw   $t1 , 1332($sp) 

lw   $t2 , 1336($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1340($sp) 

#param , t449 ,  , 
lw   $t0 , 1340($sp) 

sw   $t0 , -4($sp) 

#t451 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 1344($sp) 

#t452 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 1348($sp) 

#return , t452 ,  , 
lw   $v0 , 1348($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l8 ,  , 
l8:  

#t453 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 8($sp) 

#t454 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 12($sp) 

#t455 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 16($sp) 

#t453 , t455 , t454 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 16($sp) 

lw   $t2 , 12($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t456 , 'b' ,  , =
li   $t0 , 98 

sw   $t0 , 20($sp) 

#t457 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 24($sp) 

#t453 , t457 , t456 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t458 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 28($sp) 

#t459 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 32($sp) 

#t453 , t459 , t458 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t460 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 36($sp) 

#t461 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 40($sp) 

#t453 , t461 , t460 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 40($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t462 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 44($sp) 

#t463 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 48($sp) 

#t453 , t463 , t462 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 48($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t464 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 52($sp) 

#t465 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 56($sp) 

#t453 , t465 , t464 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t466 , 'g' ,  , =
li   $t0 , 103 

sw   $t0 , 60($sp) 

#t467 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 64($sp) 

#t453 , t467 , t466 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 64($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t468 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 68($sp) 

#t469 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 72($sp) 

#t453 , t469 , t468 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t470 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 76($sp) 

#t471 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 80($sp) 

#t453 , t471 , t470 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t472 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 84($sp) 

#param , t472 ,  , 
lw   $t0 , 84($sp) 

sw   $t0 , -4($sp) 

#param , t453 ,  , 
lw   $t0 , 8($sp) 

sw   $t0 , -8($sp) 

#t473 , m2 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 88($sp) 

#t474 , t473 ,  , =
lw   $t0 , 88($sp) 

sw   $t0 , 92($sp) 

#t475 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 96($sp) 

#t476 , 'J' ,  , =
li   $t0 , 74 

sw   $t0 , 100($sp) 

#t477 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 104($sp) 

#t475 , t477 , t476 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 104($sp) 

lw   $t2 , 100($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t478 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 108($sp) 

#t479 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 112($sp) 

#t475 , t479 , t478 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 112($sp) 

lw   $t2 , 108($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t480 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 116($sp) 

#t481 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 120($sp) 

#t475 , t481 , t480 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 120($sp) 

lw   $t2 , 116($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t482 , 'k' ,  , =
li   $t0 , 107 

sw   $t0 , 124($sp) 

#t483 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 128($sp) 

#t475 , t483 , t482 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 128($sp) 

lw   $t2 , 124($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t484 , 'B' ,  , =
li   $t0 , 66 

sw   $t0 , 132($sp) 

#t485 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 136($sp) 

#t475 , t485 , t484 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 136($sp) 

lw   $t2 , 132($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t486 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 140($sp) 

#t487 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 144($sp) 

#t475 , t487 , t486 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 144($sp) 

lw   $t2 , 140($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t488 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 148($sp) 

#t489 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 152($sp) 

#t475 , t489 , t488 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 152($sp) 

lw   $t2 , 148($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t490 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 156($sp) 

#t491 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 160($sp) 

#t475 , t491 , t490 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 160($sp) 

lw   $t2 , 156($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t492 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 164($sp) 

#t493 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 168($sp) 

#t475 , t493 , t492 , *=
lw   $t0 , 96($sp) 

lw   $t1 , 168($sp) 

lw   $t2 , 164($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t494 , 4 ,  , new
li   $a0 , 4 

li   $v0 , 9 

syscall  

sw   $v0 , 172($sp) 

#param , t494 ,  , 
lw   $t0 , 172($sp) 

sw   $t0 , -4($sp) 

#param , t475 ,  , 
lw   $t0 , 96($sp) 

sw   $t0 , -8($sp) 

#t495 , m0 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 176($sp) 

#t496 , t495 ,  , =
lw   $t0 , 176($sp) 

sw   $t0 , 180($sp) 

#t497 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 184($sp) 

#t498 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 188($sp) 

#t499 , 15 ,  , =
li   $t0 , 15 

sw   $t0 , 192($sp) 

#t500 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 196($sp) 

#param , t500 ,  , 
lw   $t0 , 196($sp) 

sw   $t0 , -4($sp) 

#param , t497 ,  , 
lw   $t0 , 184($sp) 

sw   $t0 , -8($sp) 

#param , t498 ,  , 
lw   $t0 , 188($sp) 

sw   $t0 , -12($sp) 

#param , t499 ,  , 
lw   $t0 , 192($sp) 

sw   $t0 , -16($sp) 

#t501 , m5 ,  , call
addi   $sp , $sp , -16 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m5 

lw   $ra , 0($sp) 

addi   $sp , $sp , 24 

sw   $v0 , 200($sp) 

#t502 , t501 ,  , =
lw   $t0 , 200($sp) 

sw   $t0 , 204($sp) 

#t503 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 208($sp) 

#param , t503 ,  , 
lw   $t0 , 208($sp) 

sw   $t0 , -4($sp) 

#param , t474 ,  , 
lw   $t0 , 92($sp) 

sw   $t0 , -8($sp) 

#param , t496 ,  , 
lw   $t0 , 180($sp) 

sw   $t0 , -12($sp) 

#t504 , m6 ,  , call
addi   $sp , $sp , -12 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m6 

lw   $ra , 0($sp) 

addi   $sp , $sp , 20 

sw   $v0 , 212($sp) 

#t505 , t504 ,  , =
lw   $t0 , 212($sp) 

sw   $t0 , 216($sp) 

#param , t505 ,  , 
lw   $t0 , 216($sp) 

sw   $t0 , -4($sp) 

#param , t502 ,  , 
lw   $t0 , 204($sp) 

sw   $t0 , -8($sp) 

#t506 , m7 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m7 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 220($sp) 

#param , t505 ,  , 
lw   $t0 , 216($sp) 

sw   $t0 , -4($sp) 

#t507 , m8 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m8 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 224($sp) 

#putint , t28 ,  , 
lw   $a0 , 0($gp) 

li   $v0 , 1 

syscall  

#t508 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 228($sp) 

#putchar , t508 ,  , 
lw   $a0 , 228($sp) 

li   $v0 , 11 

syscall  

#t510 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 232($sp) 

#t509 , t505 , t510 , =*
lw   $t1 , 216($sp) 

lw   $t2 , 232($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 236($sp) 

#t512 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 240($sp) 

#t511 , t509 , t512 , =*
lw   $t1 , 236($sp) 

lw   $t2 , 240($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 244($sp) 

#t514 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 248($sp) 

#t513 , t511 , t514 , =*
lw   $t1 , 244($sp) 

lw   $t2 , 248($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 252($sp) 

#t515 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 256($sp) 

#t516 , t513 , t515 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 256($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 260($sp) 

#putchar , t516 ,  , 
lw   $a0 , 260($sp) 

li   $v0 , 11 

syscall  

#t517 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 264($sp) 

#t518 , t513 , t517 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 264($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 268($sp) 

#putchar , t518 ,  , 
lw   $a0 , 268($sp) 

li   $v0 , 11 

syscall  

#t519 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 272($sp) 

#t520 , t513 , t519 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 272($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 276($sp) 

#putchar , t520 ,  , 
lw   $a0 , 276($sp) 

li   $v0 , 11 

syscall  

#t521 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 280($sp) 

#t522 , t513 , t521 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 280($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 284($sp) 

#putchar , t522 ,  , 
lw   $a0 , 284($sp) 

li   $v0 , 11 

syscall  

#t523 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 288($sp) 

#t524 , t513 , t523 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 288($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 292($sp) 

#putchar , t524 ,  , 
lw   $a0 , 292($sp) 

li   $v0 , 11 

syscall  

#t525 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 296($sp) 

#t526 , t513 , t525 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 296($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 300($sp) 

#putchar , t526 ,  , 
lw   $a0 , 300($sp) 

li   $v0 , 11 

syscall  

#t527 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 304($sp) 

#t528 , t513 , t527 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 304($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 308($sp) 

#putchar , t528 ,  , 
lw   $a0 , 308($sp) 

li   $v0 , 11 

syscall  

#t529 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 312($sp) 

#t530 , t513 , t529 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 312($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 316($sp) 

#putchar , t530 ,  , 
lw   $a0 , 316($sp) 

li   $v0 , 11 

syscall  

#t531 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 320($sp) 

#t532 , t513 , t531 , =*
lw   $t1 , 252($sp) 

lw   $t2 , 320($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 324($sp) 

#putchar , t532 ,  , 
lw   $a0 , 324($sp) 

li   $v0 , 11 

syscall  

#t533 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 328($sp) 

#putchar , t533 ,  , 
lw   $a0 , 328($sp) 

li   $v0 , 11 

syscall  

#t534 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 332($sp) 

#t535 , '1' ,  , =
li   $t0 , 49 

sw   $t0 , 336($sp) 

#t536 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 340($sp) 

#t534 , t536 , t535 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 340($sp) 

lw   $t2 , 336($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t537 , '2' ,  , =
li   $t0 , 50 

sw   $t0 , 344($sp) 

#t538 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 348($sp) 

#t534 , t538 , t537 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 348($sp) 

lw   $t2 , 344($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t539 , '3' ,  , =
li   $t0 , 51 

sw   $t0 , 352($sp) 

#t540 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 356($sp) 

#t534 , t540 , t539 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 356($sp) 

lw   $t2 , 352($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t541 , '4' ,  , =
li   $t0 , 52 

sw   $t0 , 360($sp) 

#t542 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 364($sp) 

#t534 , t542 , t541 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 364($sp) 

lw   $t2 , 360($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t543 , '5' ,  , =
li   $t0 , 53 

sw   $t0 , 368($sp) 

#t544 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 372($sp) 

#t534 , t544 , t543 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 372($sp) 

lw   $t2 , 368($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t545 , '6' ,  , =
li   $t0 , 54 

sw   $t0 , 376($sp) 

#t546 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 380($sp) 

#t534 , t546 , t545 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 380($sp) 

lw   $t2 , 376($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t547 , '7' ,  , =
li   $t0 , 55 

sw   $t0 , 384($sp) 

#t548 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 388($sp) 

#t534 , t548 , t547 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 388($sp) 

lw   $t2 , 384($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t549 , '8' ,  , =
li   $t0 , 56 

sw   $t0 , 392($sp) 

#t550 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 396($sp) 

#t534 , t550 , t549 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 396($sp) 

lw   $t2 , 392($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t551 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 400($sp) 

#t552 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 404($sp) 

#t534 , t552 , t551 , *=
lw   $t0 , 332($sp) 

lw   $t1 , 404($sp) 

lw   $t2 , 400($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t553 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 408($sp) 

#param , t553 ,  , 
lw   $t0 , 408($sp) 

sw   $t0 , -4($sp) 

#param , t534 ,  , 
lw   $t0 , 332($sp) 

sw   $t0 , -8($sp) 

#t554 , m2 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 412($sp) 

#t555 , t554 ,  , =
lw   $t0 , 412($sp) 

sw   $t0 , 416($sp) 

#t556 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 420($sp) 

#t557 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 424($sp) 

#t558 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 428($sp) 

#t556 , t558 , t557 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 428($sp) 

lw   $t2 , 424($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t559 , '1' ,  , =
li   $t0 , 49 

sw   $t0 , 432($sp) 

#t560 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 436($sp) 

#t556 , t560 , t559 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 436($sp) 

lw   $t2 , 432($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t561 , 'b' ,  , =
li   $t0 , 98 

sw   $t0 , 440($sp) 

#t562 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 444($sp) 

#t556 , t562 , t561 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 444($sp) 

lw   $t2 , 440($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t563 , '2' ,  , =
li   $t0 , 50 

sw   $t0 , 448($sp) 

#t564 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 452($sp) 

#t556 , t564 , t563 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 452($sp) 

lw   $t2 , 448($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t565 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 456($sp) 

#t566 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 460($sp) 

#t556 , t566 , t565 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 460($sp) 

lw   $t2 , 456($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t567 , '3' ,  , =
li   $t0 , 51 

sw   $t0 , 464($sp) 

#t568 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 468($sp) 

#t556 , t568 , t567 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 468($sp) 

lw   $t2 , 464($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t569 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 472($sp) 

#t570 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 476($sp) 

#t556 , t570 , t569 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 476($sp) 

lw   $t2 , 472($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t571 , '4' ,  , =
li   $t0 , 52 

sw   $t0 , 480($sp) 

#t572 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 484($sp) 

#t556 , t572 , t571 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 484($sp) 

lw   $t2 , 480($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t573 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 488($sp) 

#t574 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 492($sp) 

#t556 , t574 , t573 , *=
lw   $t0 , 420($sp) 

lw   $t1 , 492($sp) 

lw   $t2 , 488($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t575 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 496($sp) 

#param , t575 ,  , 
lw   $t0 , 496($sp) 

sw   $t0 , -4($sp) 

#param , t556 ,  , 
lw   $t0 , 420($sp) 

sw   $t0 , -8($sp) 

#t576 , m2 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 500($sp) 

#t577 , t576 ,  , =
lw   $t0 , 500($sp) 

sw   $t0 , 504($sp) 

#putint , t28 ,  , 
lw   $a0 , 0($gp) 

li   $v0 , 1 

syscall  

#t578 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 508($sp) 

#putchar , t578 ,  , 
lw   $a0 , 508($sp) 

li   $v0 , 11 

syscall  

#putint , t28 ,  , 
lw   $a0 , 0($gp) 

li   $v0 , 1 

syscall  

#t579 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 512($sp) 

#putchar , t579 ,  , 
lw   $a0 , 512($sp) 

li   $v0 , 11 

syscall  

#t580 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 516($sp) 

#t581 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 520($sp) 

#t580 , t581 , t474 , *=
lw   $t0 , 516($sp) 

lw   $t1 , 520($sp) 

lw   $t2 , 92($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t582 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 524($sp) 

#t580 , t582 , t555 , *=
lw   $t0 , 516($sp) 

lw   $t1 , 524($sp) 

lw   $t2 , 416($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t583 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 528($sp) 

#t580 , t583 , t577 , *=
lw   $t0 , 516($sp) 

lw   $t1 , 528($sp) 

lw   $t2 , 504($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t584 , t580 ,  , =
lw   $t0 , 516($sp) 

sw   $t0 , 532($sp) 

#t585 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 536($sp) 

#label , l9 ,  , 
l9:  

#t587 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 540($sp) 

#t588 , t585 , t587 , >=
lw   $t1 , 536($sp) 

lw   $t2 , 540($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel0 

li   $t0 , 0 

b   mipsLabel1 

mipsLabel0:  

li   $t0 , 1 

mipsLabel1:  

sw   $t0 , 544($sp) 

#if , t588 , goto , l11
lw   $t1 , 544($sp) 

bnez   $t1 , l11 

#t589 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 548($sp) 

#t590 , t585 , t589 , *
lw   $t1 , 536($sp) 

lw   $t2 , 548($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 552($sp) 

#t586 , t584 , t590 , =*
lw   $t1 , 532($sp) 

lw   $t2 , 552($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 556($sp) 

#t591 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 560($sp) 

#t585 , t585 , t591 , +
lw   $t1 , 536($sp) 

lw   $t2 , 560($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 536($sp) 

#label , l10 ,  , 
l10:  

#t592 , 32 ,  , new
li   $a0 , 32 

li   $v0 , 9 

syscall  

sw   $v0 , 564($sp) 

#t593 , 'D' ,  , =
li   $t0 , 68 

sw   $t0 , 568($sp) 

#t594 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 572($sp) 

#t592 , t594 , t593 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 572($sp) 

lw   $t2 , 568($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t595 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 576($sp) 

#t596 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 580($sp) 

#t592 , t596 , t595 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 580($sp) 

lw   $t2 , 576($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t597 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 584($sp) 

#t598 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 588($sp) 

#t592 , t598 , t597 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 588($sp) 

lw   $t2 , 584($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t599 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 592($sp) 

#t600 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 596($sp) 

#t592 , t600 , t599 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 596($sp) 

lw   $t2 , 592($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t601 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 600($sp) 

#t602 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 604($sp) 

#t592 , t602 , t601 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 604($sp) 

lw   $t2 , 600($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t603 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 608($sp) 

#t604 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 612($sp) 

#t592 , t604 , t603 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 612($sp) 

lw   $t2 , 608($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t605 , ':' ,  , =
li   $t0 , 58 

sw   $t0 , 616($sp) 

#t606 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 620($sp) 

#t592 , t606 , t605 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 620($sp) 

lw   $t2 , 616($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t607 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 624($sp) 

#t608 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 628($sp) 

#t592 , t608 , t607 , *=
lw   $t0 , 564($sp) 

lw   $t1 , 628($sp) 

lw   $t2 , 624($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t609 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 632($sp) 

#t610 , t592 , t609 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 632($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 636($sp) 

#putchar , t610 ,  , 
lw   $a0 , 636($sp) 

li   $v0 , 11 

syscall  

#t611 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 640($sp) 

#t612 , t592 , t611 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 640($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 644($sp) 

#putchar , t612 ,  , 
lw   $a0 , 644($sp) 

li   $v0 , 11 

syscall  

#t613 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 648($sp) 

#t614 , t592 , t613 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 648($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 652($sp) 

#putchar , t614 ,  , 
lw   $a0 , 652($sp) 

li   $v0 , 11 

syscall  

#t615 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 656($sp) 

#t616 , t592 , t615 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 656($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 660($sp) 

#putchar , t616 ,  , 
lw   $a0 , 660($sp) 

li   $v0 , 11 

syscall  

#t617 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 664($sp) 

#t618 , t592 , t617 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 664($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 668($sp) 

#putchar , t618 ,  , 
lw   $a0 , 668($sp) 

li   $v0 , 11 

syscall  

#t619 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 672($sp) 

#t620 , t592 , t619 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 672($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 676($sp) 

#putchar , t620 ,  , 
lw   $a0 , 676($sp) 

li   $v0 , 11 

syscall  

#t621 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 680($sp) 

#t622 , t592 , t621 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 680($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 684($sp) 

#putchar , t622 ,  , 
lw   $a0 , 684($sp) 

li   $v0 , 11 

syscall  

#t623 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 688($sp) 

#t624 , t592 , t623 , =*
lw   $t1 , 564($sp) 

lw   $t2 , 688($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 692($sp) 

#putchar , t624 ,  , 
lw   $a0 , 692($sp) 

li   $v0 , 11 

syscall  

#t625 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 696($sp) 

#putchar , t625 ,  , 
lw   $a0 , 696($sp) 

li   $v0 , 11 

syscall  

#param , t586 ,  , 
lw   $t0 , 556($sp) 

sw   $t0 , -4($sp) 

#t626 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 700($sp) 

#t627 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 704($sp) 

#t628 , 'P' ,  , =
li   $t0 , 80 

sw   $t0 , 708($sp) 

#t629 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 712($sp) 

#t627 , t629 , t628 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 712($sp) 

lw   $t2 , 708($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t630 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 716($sp) 

#t631 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 720($sp) 

#t627 , t631 , t630 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 720($sp) 

lw   $t2 , 716($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t632 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 724($sp) 

#t633 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 728($sp) 

#t627 , t633 , t632 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 728($sp) 

lw   $t2 , 724($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t634 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 732($sp) 

#t635 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 736($sp) 

#t627 , t635 , t634 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 736($sp) 

lw   $t2 , 732($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t636 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 740($sp) 

#t637 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 744($sp) 

#t627 , t637 , t636 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 744($sp) 

lw   $t2 , 740($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t638 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 748($sp) 

#t639 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 752($sp) 

#t627 , t639 , t638 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 752($sp) 

lw   $t2 , 748($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t640 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 756($sp) 

#t641 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 760($sp) 

#t627 , t641 , t640 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 760($sp) 

lw   $t2 , 756($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t642 , ':' ,  , =
li   $t0 , 58 

sw   $t0 , 764($sp) 

#t643 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 768($sp) 

#t627 , t643 , t642 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 768($sp) 

lw   $t2 , 764($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t644 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 772($sp) 

#t645 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 776($sp) 

#t627 , t645 , t644 , *=
lw   $t0 , 704($sp) 

lw   $t1 , 776($sp) 

lw   $t2 , 772($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t646 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 780($sp) 

#t647 , t627 , t646 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 780($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 784($sp) 

#putchar , t647 ,  , 
lw   $a0 , 784($sp) 

li   $v0 , 11 

syscall  

#t648 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 788($sp) 

#t649 , t627 , t648 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 788($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 792($sp) 

#putchar , t649 ,  , 
lw   $a0 , 792($sp) 

li   $v0 , 11 

syscall  

#t650 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 796($sp) 

#t651 , t627 , t650 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 796($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 800($sp) 

#putchar , t651 ,  , 
lw   $a0 , 800($sp) 

li   $v0 , 11 

syscall  

#t652 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 804($sp) 

#t653 , t627 , t652 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 804($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 808($sp) 

#putchar , t653 ,  , 
lw   $a0 , 808($sp) 

li   $v0 , 11 

syscall  

#t654 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 812($sp) 

#t655 , t627 , t654 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 812($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 816($sp) 

#putchar , t655 ,  , 
lw   $a0 , 816($sp) 

li   $v0 , 11 

syscall  

#t656 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 820($sp) 

#t657 , t627 , t656 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 820($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 824($sp) 

#putchar , t657 ,  , 
lw   $a0 , 824($sp) 

li   $v0 , 11 

syscall  

#t658 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 828($sp) 

#t659 , t627 , t658 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 828($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 832($sp) 

#putchar , t659 ,  , 
lw   $a0 , 832($sp) 

li   $v0 , 11 

syscall  

#t660 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 836($sp) 

#t661 , t627 , t660 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 836($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 840($sp) 

#putchar , t661 ,  , 
lw   $a0 , 840($sp) 

li   $v0 , 11 

syscall  

#t662 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 844($sp) 

#t663 , t627 , t662 , =*
lw   $t1 , 704($sp) 

lw   $t2 , 844($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 848($sp) 

#putchar , t663 ,  , 
lw   $a0 , 848($sp) 

li   $v0 , 11 

syscall  

#t664 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 852($sp) 

#putchar , t664 ,  , 
lw   $a0 , 852($sp) 

li   $v0 , 11 

syscall  

#t666 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 856($sp) 

#t665 , t586 , t666 , =*
lw   $t1 , 556($sp) 

lw   $t2 , 856($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 860($sp) 

#t668 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 864($sp) 

#t667 , t665 , t668 , =*
lw   $t1 , 860($sp) 

lw   $t2 , 864($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 868($sp) 

#t669 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 872($sp) 

#t670 , t667 , t669 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 872($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 876($sp) 

#putchar , t670 ,  , 
lw   $a0 , 876($sp) 

li   $v0 , 11 

syscall  

#t671 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 880($sp) 

#t672 , t667 , t671 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 880($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 884($sp) 

#putchar , t672 ,  , 
lw   $a0 , 884($sp) 

li   $v0 , 11 

syscall  

#t673 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 888($sp) 

#t674 , t667 , t673 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 888($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 892($sp) 

#putchar , t674 ,  , 
lw   $a0 , 892($sp) 

li   $v0 , 11 

syscall  

#t675 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 896($sp) 

#t676 , t667 , t675 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 896($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 900($sp) 

#putchar , t676 ,  , 
lw   $a0 , 900($sp) 

li   $v0 , 11 

syscall  

#t677 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 904($sp) 

#t678 , t667 , t677 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 904($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 908($sp) 

#putchar , t678 ,  , 
lw   $a0 , 908($sp) 

li   $v0 , 11 

syscall  

#t679 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 912($sp) 

#t680 , t667 , t679 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 912($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 916($sp) 

#putchar , t680 ,  , 
lw   $a0 , 916($sp) 

li   $v0 , 11 

syscall  

#t681 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 920($sp) 

#t682 , t667 , t681 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 920($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 924($sp) 

#putchar , t682 ,  , 
lw   $a0 , 924($sp) 

li   $v0 , 11 

syscall  

#t683 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 928($sp) 

#t684 , t667 , t683 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 928($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 932($sp) 

#putchar , t684 ,  , 
lw   $a0 , 932($sp) 

li   $v0 , 11 

syscall  

#t685 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 936($sp) 

#t686 , t667 , t685 , =*
lw   $t1 , 868($sp) 

lw   $t2 , 936($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 940($sp) 

#putchar , t686 ,  , 
lw   $a0 , 940($sp) 

li   $v0 , 11 

syscall  

#t687 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 944($sp) 

#putchar , t687 ,  , 
lw   $a0 , 944($sp) 

li   $v0 , 11 

syscall  

#t688 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 948($sp) 

#putchar , t688 ,  , 
lw   $a0 , 948($sp) 

li   $v0 , 11 

syscall  

#t689 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 952($sp) 

#putchar , t689 ,  , 
lw   $a0 , 952($sp) 

li   $v0 , 11 

syscall  

#goto , l9 ,  , 
b   l9 

#label , l11 ,  , 
l11:  

#t690 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 956($sp) 

#putchar , t690 ,  , 
lw   $a0 , 956($sp) 

li   $v0 , 11 

syscall  

#t691 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 960($sp) 

#putchar , t691 ,  , 
lw   $a0 , 960($sp) 

li   $v0 , 11 

syscall  

#t692 , 108 ,  , new
li   $a0 , 108 

li   $v0 , 9 

syscall  

sw   $v0 , 964($sp) 

#t693 , 'P' ,  , =
li   $t0 , 80 

sw   $t0 , 968($sp) 

#t694 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 972($sp) 

#t692 , t694 , t693 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 972($sp) 

lw   $t2 , 968($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t695 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 976($sp) 

#t696 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 980($sp) 

#t692 , t696 , t695 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 980($sp) 

lw   $t2 , 976($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t697 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 984($sp) 

#t698 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 988($sp) 

#t692 , t698 , t697 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 988($sp) 

lw   $t2 , 984($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t699 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 992($sp) 

#t700 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 996($sp) 

#t692 , t700 , t699 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 996($sp) 

lw   $t2 , 992($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t701 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 1000($sp) 

#t702 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1004($sp) 

#t692 , t702 , t701 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1004($sp) 

lw   $t2 , 1000($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t703 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 1008($sp) 

#t704 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1012($sp) 

#t692 , t704 , t703 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1012($sp) 

lw   $t2 , 1008($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t705 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1016($sp) 

#t706 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1020($sp) 

#t692 , t706 , t705 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1020($sp) 

lw   $t2 , 1016($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t707 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1024($sp) 

#t708 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1028($sp) 

#t692 , t708 , t707 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1028($sp) 

lw   $t2 , 1024($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t709 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1032($sp) 

#t710 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1036($sp) 

#t692 , t710 , t709 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1036($sp) 

lw   $t2 , 1032($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t711 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 1040($sp) 

#t712 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1044($sp) 

#t692 , t712 , t711 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1044($sp) 

lw   $t2 , 1040($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t713 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1048($sp) 

#t714 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1052($sp) 

#t692 , t714 , t713 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1052($sp) 

lw   $t2 , 1048($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t715 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 1056($sp) 

#t716 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1060($sp) 

#t692 , t716 , t715 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1060($sp) 

lw   $t2 , 1056($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t717 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 1064($sp) 

#t718 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1068($sp) 

#t692 , t718 , t717 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1068($sp) 

lw   $t2 , 1064($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t719 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 1072($sp) 

#t720 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1076($sp) 

#t692 , t720 , t719 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1076($sp) 

lw   $t2 , 1072($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t721 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 1080($sp) 

#t722 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1084($sp) 

#t692 , t722 , t721 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1084($sp) 

lw   $t2 , 1080($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t723 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1088($sp) 

#t724 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1092($sp) 

#t692 , t724 , t723 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1092($sp) 

lw   $t2 , 1088($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t725 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1096($sp) 

#t726 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1100($sp) 

#t692 , t726 , t725 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1100($sp) 

lw   $t2 , 1096($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t727 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 1104($sp) 

#t728 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1108($sp) 

#t692 , t728 , t727 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1108($sp) 

lw   $t2 , 1104($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t729 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1112($sp) 

#t730 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1116($sp) 

#t692 , t730 , t729 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1116($sp) 

lw   $t2 , 1112($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t731 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 1120($sp) 

#t732 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 1124($sp) 

#t692 , t732 , t731 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1124($sp) 

lw   $t2 , 1120($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t733 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1128($sp) 

#t734 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 1132($sp) 

#t692 , t734 , t733 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1132($sp) 

lw   $t2 , 1128($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t735 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1136($sp) 

#t736 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 1140($sp) 

#t692 , t736 , t735 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1140($sp) 

lw   $t2 , 1136($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t737 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 1144($sp) 

#t738 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 1148($sp) 

#t692 , t738 , t737 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1148($sp) 

lw   $t2 , 1144($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t739 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1152($sp) 

#t740 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 1156($sp) 

#t692 , t740 , t739 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1156($sp) 

lw   $t2 , 1152($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t741 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 1160($sp) 

#t742 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 1164($sp) 

#t692 , t742 , t741 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1164($sp) 

lw   $t2 , 1160($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t743 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 1168($sp) 

#t744 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 1172($sp) 

#t692 , t744 , t743 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1172($sp) 

lw   $t2 , 1168($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t745 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 1176($sp) 

#t746 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 1180($sp) 

#t692 , t746 , t745 , *=
lw   $t0 , 964($sp) 

lw   $t1 , 1180($sp) 

lw   $t2 , 1176($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t747 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1184($sp) 

#t748 , t692 , t747 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1184($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1188($sp) 

#putchar , t748 ,  , 
lw   $a0 , 1188($sp) 

li   $v0 , 11 

syscall  

#t749 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1192($sp) 

#t750 , t692 , t749 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1192($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1196($sp) 

#putchar , t750 ,  , 
lw   $a0 , 1196($sp) 

li   $v0 , 11 

syscall  

#t751 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1200($sp) 

#t752 , t692 , t751 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1200($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1204($sp) 

#putchar , t752 ,  , 
lw   $a0 , 1204($sp) 

li   $v0 , 11 

syscall  

#t753 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1208($sp) 

#t754 , t692 , t753 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1208($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1212($sp) 

#putchar , t754 ,  , 
lw   $a0 , 1212($sp) 

li   $v0 , 11 

syscall  

#t755 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1216($sp) 

#t756 , t692 , t755 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1216($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1220($sp) 

#putchar , t756 ,  , 
lw   $a0 , 1220($sp) 

li   $v0 , 11 

syscall  

#t757 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1224($sp) 

#t758 , t692 , t757 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1224($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1228($sp) 

#putchar , t758 ,  , 
lw   $a0 , 1228($sp) 

li   $v0 , 11 

syscall  

#t759 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1232($sp) 

#t760 , t692 , t759 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1232($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1236($sp) 

#putchar , t760 ,  , 
lw   $a0 , 1236($sp) 

li   $v0 , 11 

syscall  

#t761 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1240($sp) 

#t762 , t692 , t761 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1240($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1244($sp) 

#putchar , t762 ,  , 
lw   $a0 , 1244($sp) 

li   $v0 , 11 

syscall  

#t763 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1248($sp) 

#t764 , t692 , t763 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1248($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1252($sp) 

#putchar , t764 ,  , 
lw   $a0 , 1252($sp) 

li   $v0 , 11 

syscall  

#t765 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1256($sp) 

#t766 , t692 , t765 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1256($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1260($sp) 

#putchar , t766 ,  , 
lw   $a0 , 1260($sp) 

li   $v0 , 11 

syscall  

#t767 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1264($sp) 

#t768 , t692 , t767 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1264($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1268($sp) 

#putchar , t768 ,  , 
lw   $a0 , 1268($sp) 

li   $v0 , 11 

syscall  

#t769 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1272($sp) 

#t770 , t692 , t769 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1272($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1276($sp) 

#putchar , t770 ,  , 
lw   $a0 , 1276($sp) 

li   $v0 , 11 

syscall  

#t771 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1280($sp) 

#t772 , t692 , t771 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1280($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1284($sp) 

#putchar , t772 ,  , 
lw   $a0 , 1284($sp) 

li   $v0 , 11 

syscall  

#t773 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1288($sp) 

#t774 , t692 , t773 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1288($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1292($sp) 

#putchar , t774 ,  , 
lw   $a0 , 1292($sp) 

li   $v0 , 11 

syscall  

#t775 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1296($sp) 

#t776 , t692 , t775 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1296($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1300($sp) 

#putchar , t776 ,  , 
lw   $a0 , 1300($sp) 

li   $v0 , 11 

syscall  

#t777 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1304($sp) 

#t778 , t692 , t777 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1304($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1308($sp) 

#putchar , t778 ,  , 
lw   $a0 , 1308($sp) 

li   $v0 , 11 

syscall  

#t779 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1312($sp) 

#t780 , t692 , t779 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1312($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1316($sp) 

#putchar , t780 ,  , 
lw   $a0 , 1316($sp) 

li   $v0 , 11 

syscall  

#t781 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1320($sp) 

#t782 , t692 , t781 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1320($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1324($sp) 

#putchar , t782 ,  , 
lw   $a0 , 1324($sp) 

li   $v0 , 11 

syscall  

#t783 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1328($sp) 

#t784 , t692 , t783 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1328($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1332($sp) 

#putchar , t784 ,  , 
lw   $a0 , 1332($sp) 

li   $v0 , 11 

syscall  

#t785 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 1336($sp) 

#t786 , t692 , t785 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1336($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1340($sp) 

#putchar , t786 ,  , 
lw   $a0 , 1340($sp) 

li   $v0 , 11 

syscall  

#t787 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 1344($sp) 

#t788 , t692 , t787 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1344($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1348($sp) 

#putchar , t788 ,  , 
lw   $a0 , 1348($sp) 

li   $v0 , 11 

syscall  

#t789 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 1352($sp) 

#t790 , t692 , t789 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1352($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1356($sp) 

#putchar , t790 ,  , 
lw   $a0 , 1356($sp) 

li   $v0 , 11 

syscall  

#t791 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 1360($sp) 

#t792 , t692 , t791 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1360($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1364($sp) 

#putchar , t792 ,  , 
lw   $a0 , 1364($sp) 

li   $v0 , 11 

syscall  

#t793 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 1368($sp) 

#t794 , t692 , t793 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1368($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1372($sp) 

#putchar , t794 ,  , 
lw   $a0 , 1372($sp) 

li   $v0 , 11 

syscall  

#t795 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 1376($sp) 

#t796 , t692 , t795 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1376($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1380($sp) 

#putchar , t796 ,  , 
lw   $a0 , 1380($sp) 

li   $v0 , 11 

syscall  

#t797 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 1384($sp) 

#t798 , t692 , t797 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1384($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1388($sp) 

#putchar , t798 ,  , 
lw   $a0 , 1388($sp) 

li   $v0 , 11 

syscall  

#t799 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 1392($sp) 

#t800 , t692 , t799 , =*
lw   $t1 , 964($sp) 

lw   $t2 , 1392($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1396($sp) 

#putchar , t800 ,  , 
lw   $a0 , 1396($sp) 

li   $v0 , 11 

syscall  

#t801 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1400($sp) 

#putchar , t801 ,  , 
lw   $a0 , 1400($sp) 

li   $v0 , 11 

syscall  

#t802 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1404($sp) 

#t803 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1408($sp) 

#t804 , t802 , t803 , *
lw   $t1 , 1404($sp) 

lw   $t2 , 1408($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 1412($sp) 

#t805 , t584 , t804 , =*
lw   $t1 , 532($sp) 

lw   $t2 , 1412($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1416($sp) 

#t807 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1420($sp) 

#t806 , t805 , t807 , =*
lw   $t1 , 1416($sp) 

lw   $t2 , 1420($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1424($sp) 

#t809 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1428($sp) 

#t808 , t806 , t809 , =*
lw   $t1 , 1424($sp) 

lw   $t2 , 1428($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1432($sp) 

#t810 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1436($sp) 

#t811 , t808 , t810 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1436($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1440($sp) 

#putchar , t811 ,  , 
lw   $a0 , 1440($sp) 

li   $v0 , 11 

syscall  

#t812 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1444($sp) 

#t813 , t808 , t812 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1444($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1448($sp) 

#putchar , t813 ,  , 
lw   $a0 , 1448($sp) 

li   $v0 , 11 

syscall  

#t814 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1452($sp) 

#t815 , t808 , t814 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1452($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1456($sp) 

#putchar , t815 ,  , 
lw   $a0 , 1456($sp) 

li   $v0 , 11 

syscall  

#t816 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1460($sp) 

#t817 , t808 , t816 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1460($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1464($sp) 

#putchar , t817 ,  , 
lw   $a0 , 1464($sp) 

li   $v0 , 11 

syscall  

#t818 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1468($sp) 

#t819 , t808 , t818 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1468($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1472($sp) 

#putchar , t819 ,  , 
lw   $a0 , 1472($sp) 

li   $v0 , 11 

syscall  

#t820 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1476($sp) 

#t821 , t808 , t820 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1476($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1480($sp) 

#putchar , t821 ,  , 
lw   $a0 , 1480($sp) 

li   $v0 , 11 

syscall  

#t822 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1484($sp) 

#t823 , t808 , t822 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1484($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1488($sp) 

#putchar , t823 ,  , 
lw   $a0 , 1488($sp) 

li   $v0 , 11 

syscall  

#t824 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1492($sp) 

#t825 , t808 , t824 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1492($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1496($sp) 

#putchar , t825 ,  , 
lw   $a0 , 1496($sp) 

li   $v0 , 11 

syscall  

#t826 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1500($sp) 

#t827 , t808 , t826 , =*
lw   $t1 , 1432($sp) 

lw   $t2 , 1500($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1504($sp) 

#putchar , t827 ,  , 
lw   $a0 , 1504($sp) 

li   $v0 , 11 

syscall  

#t828 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1508($sp) 

#putchar , t828 ,  , 
lw   $a0 , 1508($sp) 

li   $v0 , 11 

syscall  

#t829 , 108 ,  , new
li   $a0 , 108 

li   $v0 , 9 

syscall  

sw   $v0 , 1512($sp) 

#t830 , 'P' ,  , =
li   $t0 , 80 

sw   $t0 , 1516($sp) 

#t831 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1520($sp) 

#t829 , t831 , t830 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1520($sp) 

lw   $t2 , 1516($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t832 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 1524($sp) 

#t833 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1528($sp) 

#t829 , t833 , t832 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1528($sp) 

lw   $t2 , 1524($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t834 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1532($sp) 

#t835 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1536($sp) 

#t829 , t835 , t834 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1536($sp) 

lw   $t2 , 1532($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t836 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 1540($sp) 

#t837 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1544($sp) 

#t829 , t837 , t836 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1544($sp) 

lw   $t2 , 1540($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t838 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 1548($sp) 

#t839 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1552($sp) 

#t829 , t839 , t838 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1552($sp) 

lw   $t2 , 1548($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t840 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 1556($sp) 

#t841 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1560($sp) 

#t829 , t841 , t840 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1560($sp) 

lw   $t2 , 1556($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t842 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1564($sp) 

#t843 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1568($sp) 

#t829 , t843 , t842 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1568($sp) 

lw   $t2 , 1564($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t844 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1572($sp) 

#t845 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1576($sp) 

#t829 , t845 , t844 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1576($sp) 

lw   $t2 , 1572($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t846 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1580($sp) 

#t847 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1584($sp) 

#t829 , t847 , t846 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1584($sp) 

lw   $t2 , 1580($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t848 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 1588($sp) 

#t849 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1592($sp) 

#t829 , t849 , t848 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1592($sp) 

lw   $t2 , 1588($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t850 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1596($sp) 

#t851 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1600($sp) 

#t829 , t851 , t850 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1600($sp) 

lw   $t2 , 1596($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t852 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1604($sp) 

#t853 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1608($sp) 

#t829 , t853 , t852 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1608($sp) 

lw   $t2 , 1604($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t854 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 1612($sp) 

#t855 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1616($sp) 

#t829 , t855 , t854 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1616($sp) 

lw   $t2 , 1612($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t856 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 1620($sp) 

#t857 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1624($sp) 

#t829 , t857 , t856 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1624($sp) 

lw   $t2 , 1620($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t858 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 1628($sp) 

#t859 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1632($sp) 

#t829 , t859 , t858 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1632($sp) 

lw   $t2 , 1628($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t860 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 1636($sp) 

#t861 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1640($sp) 

#t829 , t861 , t860 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1640($sp) 

lw   $t2 , 1636($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t862 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1644($sp) 

#t863 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1648($sp) 

#t829 , t863 , t862 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1648($sp) 

lw   $t2 , 1644($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t864 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 1652($sp) 

#t865 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1656($sp) 

#t829 , t865 , t864 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1656($sp) 

lw   $t2 , 1652($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t866 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1660($sp) 

#t867 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1664($sp) 

#t829 , t867 , t866 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1664($sp) 

lw   $t2 , 1660($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t868 , 'c' ,  , =
li   $t0 , 99 

sw   $t0 , 1668($sp) 

#t869 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 1672($sp) 

#t829 , t869 , t868 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1672($sp) 

lw   $t2 , 1668($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t870 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 1676($sp) 

#t871 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 1680($sp) 

#t829 , t871 , t870 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1680($sp) 

lw   $t2 , 1676($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t872 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 1684($sp) 

#t873 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 1688($sp) 

#t829 , t873 , t872 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1688($sp) 

lw   $t2 , 1684($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t874 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 1692($sp) 

#t875 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 1696($sp) 

#t829 , t875 , t874 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1696($sp) 

lw   $t2 , 1692($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t876 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 1700($sp) 

#t877 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 1704($sp) 

#t829 , t877 , t876 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1704($sp) 

lw   $t2 , 1700($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t878 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 1708($sp) 

#t879 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 1712($sp) 

#t829 , t879 , t878 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1712($sp) 

lw   $t2 , 1708($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t880 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 1716($sp) 

#t881 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 1720($sp) 

#t829 , t881 , t880 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1720($sp) 

lw   $t2 , 1716($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t882 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 1724($sp) 

#t883 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 1728($sp) 

#t829 , t883 , t882 , *=
lw   $t0 , 1512($sp) 

lw   $t1 , 1728($sp) 

lw   $t2 , 1724($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t884 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1732($sp) 

#t885 , t829 , t884 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1732($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1736($sp) 

#putchar , t885 ,  , 
lw   $a0 , 1736($sp) 

li   $v0 , 11 

syscall  

#t886 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1740($sp) 

#t887 , t829 , t886 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1740($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1744($sp) 

#putchar , t887 ,  , 
lw   $a0 , 1744($sp) 

li   $v0 , 11 

syscall  

#t888 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1748($sp) 

#t889 , t829 , t888 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1748($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1752($sp) 

#putchar , t889 ,  , 
lw   $a0 , 1752($sp) 

li   $v0 , 11 

syscall  

#t890 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1756($sp) 

#t891 , t829 , t890 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1756($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1760($sp) 

#putchar , t891 ,  , 
lw   $a0 , 1760($sp) 

li   $v0 , 11 

syscall  

#t892 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1764($sp) 

#t893 , t829 , t892 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1764($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1768($sp) 

#putchar , t893 ,  , 
lw   $a0 , 1768($sp) 

li   $v0 , 11 

syscall  

#t894 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1772($sp) 

#t895 , t829 , t894 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1772($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1776($sp) 

#putchar , t895 ,  , 
lw   $a0 , 1776($sp) 

li   $v0 , 11 

syscall  

#t896 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1780($sp) 

#t897 , t829 , t896 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1780($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1784($sp) 

#putchar , t897 ,  , 
lw   $a0 , 1784($sp) 

li   $v0 , 11 

syscall  

#t898 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 1788($sp) 

#t899 , t829 , t898 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1788($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1792($sp) 

#putchar , t899 ,  , 
lw   $a0 , 1792($sp) 

li   $v0 , 11 

syscall  

#t900 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 1796($sp) 

#t901 , t829 , t900 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1796($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1800($sp) 

#putchar , t901 ,  , 
lw   $a0 , 1800($sp) 

li   $v0 , 11 

syscall  

#t902 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 1804($sp) 

#t903 , t829 , t902 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1804($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1808($sp) 

#putchar , t903 ,  , 
lw   $a0 , 1808($sp) 

li   $v0 , 11 

syscall  

#t904 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1812($sp) 

#t905 , t829 , t904 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1812($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1816($sp) 

#putchar , t905 ,  , 
lw   $a0 , 1816($sp) 

li   $v0 , 11 

syscall  

#t906 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1820($sp) 

#t907 , t829 , t906 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1820($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1824($sp) 

#putchar , t907 ,  , 
lw   $a0 , 1824($sp) 

li   $v0 , 11 

syscall  

#t908 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 1828($sp) 

#t909 , t829 , t908 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1828($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1832($sp) 

#putchar , t909 ,  , 
lw   $a0 , 1832($sp) 

li   $v0 , 11 

syscall  

#t910 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 1836($sp) 

#t911 , t829 , t910 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1836($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1840($sp) 

#putchar , t911 ,  , 
lw   $a0 , 1840($sp) 

li   $v0 , 11 

syscall  

#t912 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 1844($sp) 

#t913 , t829 , t912 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1844($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1848($sp) 

#putchar , t913 ,  , 
lw   $a0 , 1848($sp) 

li   $v0 , 11 

syscall  

#t914 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 1852($sp) 

#t915 , t829 , t914 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1852($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1856($sp) 

#putchar , t915 ,  , 
lw   $a0 , 1856($sp) 

li   $v0 , 11 

syscall  

#t916 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 1860($sp) 

#t917 , t829 , t916 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1860($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1864($sp) 

#putchar , t917 ,  , 
lw   $a0 , 1864($sp) 

li   $v0 , 11 

syscall  

#t918 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 1868($sp) 

#t919 , t829 , t918 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1868($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1872($sp) 

#putchar , t919 ,  , 
lw   $a0 , 1872($sp) 

li   $v0 , 11 

syscall  

#t920 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 1876($sp) 

#t921 , t829 , t920 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1876($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1880($sp) 

#putchar , t921 ,  , 
lw   $a0 , 1880($sp) 

li   $v0 , 11 

syscall  

#t922 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 1884($sp) 

#t923 , t829 , t922 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1884($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1888($sp) 

#putchar , t923 ,  , 
lw   $a0 , 1888($sp) 

li   $v0 , 11 

syscall  

#t924 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 1892($sp) 

#t925 , t829 , t924 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1892($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1896($sp) 

#putchar , t925 ,  , 
lw   $a0 , 1896($sp) 

li   $v0 , 11 

syscall  

#t926 , 84 ,  , =
li   $t0 , 84 

sw   $t0 , 1900($sp) 

#t927 , t829 , t926 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1900($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1904($sp) 

#putchar , t927 ,  , 
lw   $a0 , 1904($sp) 

li   $v0 , 11 

syscall  

#t928 , 88 ,  , =
li   $t0 , 88 

sw   $t0 , 1908($sp) 

#t929 , t829 , t928 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1908($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1912($sp) 

#putchar , t929 ,  , 
lw   $a0 , 1912($sp) 

li   $v0 , 11 

syscall  

#t930 , 92 ,  , =
li   $t0 , 92 

sw   $t0 , 1916($sp) 

#t931 , t829 , t930 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1916($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1920($sp) 

#putchar , t931 ,  , 
lw   $a0 , 1920($sp) 

li   $v0 , 11 

syscall  

#t932 , 96 ,  , =
li   $t0 , 96 

sw   $t0 , 1924($sp) 

#t933 , t829 , t932 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1924($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1928($sp) 

#putchar , t933 ,  , 
lw   $a0 , 1928($sp) 

li   $v0 , 11 

syscall  

#t934 , 100 ,  , =
li   $t0 , 100 

sw   $t0 , 1932($sp) 

#t935 , t829 , t934 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1932($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1936($sp) 

#putchar , t935 ,  , 
lw   $a0 , 1936($sp) 

li   $v0 , 11 

syscall  

#t936 , 104 ,  , =
li   $t0 , 104 

sw   $t0 , 1940($sp) 

#t937 , t829 , t936 , =*
lw   $t1 , 1512($sp) 

lw   $t2 , 1940($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1944($sp) 

#putchar , t937 ,  , 
lw   $a0 , 1944($sp) 

li   $v0 , 11 

syscall  

#t938 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1948($sp) 

#putchar , t938 ,  , 
lw   $a0 , 1948($sp) 

li   $v0 , 11 

syscall  

#t939 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 1952($sp) 

#t940 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1956($sp) 

#t941 , t939 , t940 , *
lw   $t1 , 1952($sp) 

lw   $t2 , 1956($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 1960($sp) 

#t942 , t584 , t941 , =*
lw   $t1 , 532($sp) 

lw   $t2 , 1960($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1964($sp) 

#t944 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1968($sp) 

#t943 , t942 , t944 , =*
lw   $t1 , 1964($sp) 

lw   $t2 , 1968($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1972($sp) 

#param , t943 ,  , 
lw   $t0 , 1972($sp) 

sw   $t0 , -4($sp) 

#t945 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 1976($sp) 

exit:
li $v0, 10 
syscall
