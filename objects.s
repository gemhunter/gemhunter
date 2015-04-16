.text 
main:
addi   $sp , $sp , -1176 

#goto , l0 ,  , 
b   l0 

#label , m0 ,  , 
m0:  

#methodStarts , m0 ,  , 
addi   $sp , $sp , -48 

#t0 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t1 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 4($sp) 

#t2 , t1 ,  , =
lw   $t0 , 4($sp) 

sw   $t0 , 8($sp) 

#t3 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#label , l1 ,  , 
l1:  

#t5 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 16($sp) 

#t6 , t3 , t5 , >=
lw   $t1 , 12($sp) 

lw   $t2 , 16($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel0 

li   $t0 , 0 

b   mipsLabel1 

mipsLabel0:  

li   $t0 , 1 

mipsLabel1:  

sw   $t0 , 20($sp) 

#if , t6 , goto , l3
lw   $t1 , 20($sp) 

bnez   $t1 , l3 

#t7 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 24($sp) 

#t8 , t3 , t7 , *
lw   $t1 , 12($sp) 

lw   $t2 , 24($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 28($sp) 

#t4 , t0 , t8 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 32($sp) 

#t9 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 36($sp) 

#t3 , t3 , t9 , +
lw   $t1 , 12($sp) 

lw   $t2 , 36($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 12($sp) 

#label , l2 ,  , 
l2:  

#t10 , t2 , t4 , *
lw   $t1 , 8($sp) 

lw   $t2 , 32($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 40($sp) 

#t2 , t10 ,  , =
lw   $t0 , 40($sp) 

sw   $t0 , 8($sp) 

#goto , l1 ,  , 
b   l1 

#label , l3 ,  , 
l3:  

#return , t2 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t11 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 44($sp) 

#return , t11 ,  , 
lw   $v0 , 44($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l0 ,  , 
l0:  

#t12 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 0($sp) 

#t13 , t12 ,  , =
lw   $t0 , 0($sp) 

sw   $t0 , 0($gp) 

#t14 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 4($sp) 

#t15 , t14 ,  , =
lw   $t0 , 4($sp) 

sw   $t0 , 8($sp) 

#t16 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#t17 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 16($sp) 

#t18 , 7 ,  , =
li   $t0 , 7 

sw   $t0 , 20($sp) 

#t19 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 24($sp) 

#t20 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 28($sp) 

#t19 , t20 , t17 , *=
lw   $t0 , 24($sp) 

lw   $t1 , 28($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t21 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 32($sp) 

#t19 , t21 , t18 , *=
lw   $t0 , 24($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#label , l4 ,  , 
l4:  

#t25 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 36($sp) 

#t26 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 40($sp) 

#t23 , t19 , t25 , =*
lw   $t1 , 24($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 44($sp) 

#t24 , t19 , t26 , =*
lw   $t1 , 24($sp) 

lw   $t2 , 40($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 48($sp) 

#t22 , t23 , t16 , +
lw   $t1 , 44($sp) 

lw   $t2 , 12($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 52($sp) 

#t27 , t22 , t24 , >
lw   $t1 , 52($sp) 

lw   $t2 , 48($sp) 

slt   $t0 , $t2 , $t1 

sw   $t0 , 56($sp) 

#if , t27 , goto , l6
lw   $t1 , 56($sp) 

bnez   $t1 , l6 

#t28 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 60($sp) 

#t16 , t16 , t28 , +
lw   $t1 , 12($sp) 

lw   $t2 , 60($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 12($sp) 

#label , l5 ,  , 
l5:  

#t29 , 5 ,  , =
li   $t0 , 5 

sw   $t0 , 64($sp) 

#t30 , t22 , t29 , ==
lw   $t1 , 52($sp) 

lw   $t2 , 64($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel2 

li   $t0 , 0 

b   mipsLabel3 

mipsLabel2:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel4 

li   $t0 , 0 

b   mipsLabel3 

mipsLabel4:  

li   $t0 , 1 

mipsLabel3:  

sw   $t0 , 68($sp) 

#if , t30 , goto , l7
lw   $t1 , 68($sp) 

bnez   $t1 , l7 

#goto , l8 ,  , 
b   l8 

#label , l7 ,  , 
l7:  

#goto , l4 ,  , 
b   l4 

#goto , l9 ,  , 
b   l9 

#label , l8 ,  , 
l8:  

#label , l9 ,  , 
l9:  

#t31 , t15 , t22 , +
lw   $t1 , 8($sp) 

lw   $t2 , 52($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 72($sp) 

#t15 , t31 ,  , =
lw   $t0 , 72($sp) 

sw   $t0 , 8($sp) 

#goto , l4 ,  , 
b   l4 

#label , l6 ,  , 
l6:  

#putint , t15 ,  , 
lw   $a0 , 8($sp) 

li   $v0 , 1 

syscall  

#t32 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 76($sp) 

#putchar , t32 ,  , 
lw   $a0 , 76($sp) 

li   $v0 , 11 

syscall  

#t33 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 80($sp) 

#t34 , t33 ,  , =
lw   $t0 , 80($sp) 

sw   $t0 , 4($gp) 

#goto , l10 ,  , 
b   l10 

#label , m1 ,  , 
m1:  

#methodStarts , m1 ,  , 
addi   $sp , $sp , -104 

#t35 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t36 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 4($sp) 

#t37 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t35 , t37 , t36 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 8($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t38 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 12($sp) 

#t39 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 16($sp) 

#t40 , t39 ,  , -
lw   $t1 , 16($sp) 

sub   $t0 , $zero , $t1 

sw   $t0 , 20($sp) 

#t41 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 24($sp) 

#t42 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 28($sp) 

#t41 , t42 , t38 , *=
lw   $t0 , 24($sp) 

lw   $t1 , 28($sp) 

lw   $t2 , 12($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t43 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 32($sp) 

#t41 , t43 , t40 , *=
lw   $t0 , 24($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t44 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 36($sp) 

#t45 , t44 ,  , -
lw   $t1 , 36($sp) 

sub   $t0 , $zero , $t1 

sw   $t0 , 40($sp) 

#t46 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 44($sp) 

#t47 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 48($sp) 

#t48 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 52($sp) 

#t47 , t48 , t45 , *=
lw   $t0 , 48($sp) 

lw   $t1 , 52($sp) 

lw   $t2 , 40($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t49 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 56($sp) 

#t47 , t49 , t46 , *=
lw   $t0 , 48($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t50 , 5 ,  , =
li   $t0 , 5 

sw   $t0 , 60($sp) 

#t51 , 6 ,  , =
li   $t0 , 6 

sw   $t0 , 64($sp) 

#t52 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 68($sp) 

#t53 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 72($sp) 

#t52 , t53 , t50 , *=
lw   $t0 , 68($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t54 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 76($sp) 

#t52 , t54 , t51 , *=
lw   $t0 , 68($sp) 

lw   $t1 , 76($sp) 

lw   $t2 , 64($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t55 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 80($sp) 

#t56 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 84($sp) 

#t55 , t56 , t41 , *=
lw   $t0 , 80($sp) 

lw   $t1 , 84($sp) 

lw   $t2 , 24($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t57 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 88($sp) 

#t55 , t57 , t47 , *=
lw   $t0 , 80($sp) 

lw   $t1 , 88($sp) 

lw   $t2 , 48($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t58 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 92($sp) 

#t55 , t58 , t52 , *=
lw   $t0 , 80($sp) 

lw   $t1 , 92($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t59 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 96($sp) 

#t35 , t59 , t55 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 96($sp) 

lw   $t2 , 80($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t35 ,  , 
lw   $v0 , 0($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t60 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 100($sp) 

#return , t60 ,  , 
lw   $v0 , 100($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l10 ,  , 
l10:  

#goto , l11 ,  , 
b   l11 

#label , m2 ,  , 
m2:  

#methodStarts , m2 ,  , 
addi   $sp , $sp , -32 

#t61 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t62 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t64 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t63 , t62 , t64 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 8($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 12($sp) 

#t65 , t63 , t61 , +
lw   $t1 , 12($sp) 

lw   $t2 , 0($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 16($sp) 

#t66 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 20($sp) 

#t62 , t66 , t65 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#goto , l12 ,  , 
b   l12 

#label , m3 ,  , 
m3:  

#methodStarts , m3 ,  , 
addi   $sp , $sp , -12 

#t67 , 1000 ,  , =
li   $t0 , 1000 

sw   $t0 , 0($sp) 

#putint , t67 ,  , 
lw   $a0 , 0($sp) 

li   $v0 , 1 

syscall  

#t68 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 4($sp) 

#putchar , t68 ,  , 
lw   $a0 , 4($sp) 

li   $v0 , 11 

syscall  

#t69 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#return , t69 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l12 ,  , 
l12:  

#t70 , m3 ,  , call
addi   $sp , $sp , 0 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m3 

lw   $ra , 0($sp) 

addi   $sp , $sp , 8 

sw   $v0 , 24($sp) 

#t71 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 28($sp) 

#return , t71 ,  , 
lw   $v0 , 28($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l11 ,  , 
l11:  

#goto , l13 ,  , 
b   l13 

#label , m4 ,  , 
m4:  

#methodStarts , m4 ,  , 
addi   $sp , $sp , -56 

#t72 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t73 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t74 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t75 , t74 ,  , =
lw   $t0 , 8($sp) 

sw   $t0 , 12($sp) 

#t76 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 16($sp) 

#label , l14 ,  , 
l14:  

#t78 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 20($sp) 

#t79 , t76 , t78 , >=
lw   $t1 , 16($sp) 

lw   $t2 , 20($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel5 

li   $t0 , 0 

b   mipsLabel6 

mipsLabel5:  

li   $t0 , 1 

mipsLabel6:  

sw   $t0 , 24($sp) 

#if , t79 , goto , l16
lw   $t1 , 24($sp) 

bnez   $t1 , l16 

#t80 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 28($sp) 

#t81 , t76 , t80 , *
lw   $t1 , 16($sp) 

lw   $t2 , 28($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 32($sp) 

#t77 , t72 , t81 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 32($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 36($sp) 

#t82 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 40($sp) 

#t76 , t76 , t82 , +
lw   $t1 , 16($sp) 

lw   $t2 , 40($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 16($sp) 

#label , l15 ,  , 
l15:  

#param , t77 ,  , 
lw   $t0 , 36($sp) 

sw   $t0 , -4($sp) 

#t83 , m0 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 44($sp) 

#t84 , t75 , t83 , +
lw   $t1 , 12($sp) 

lw   $t2 , 44($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 48($sp) 

#t75 , t84 ,  , =
lw   $t0 , 48($sp) 

sw   $t0 , 12($sp) 

#goto , l14 ,  , 
b   l14 

#label , l16 ,  , 
l16:  

#return , t75 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t85 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 52($sp) 

#return , t85 ,  , 
lw   $v0 , 52($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l13 ,  , 
l13:  

#goto , l17 ,  , 
b   l17 

#label , m5 ,  , 
m5:  

#methodStarts , m5 ,  , 
addi   $sp , $sp , -144 

#t86 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t87 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t88 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t89 , t88 ,  , =
lw   $t0 , 8($sp) 

sw   $t0 , 12($sp) 

#t90 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 16($sp) 

#t91 , t90 ,  , =
lw   $t0 , 16($sp) 

sw   $t0 , 20($sp) 

#label , l18 ,  , 
l18:  

#t92 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 24($sp) 

#t93 , t91 , t92 , <
lw   $t1 , 20($sp) 

lw   $t2 , 24($sp) 

slt   $t0 , $t1 , $t2 

sw   $t0 , 28($sp) 

#ifnot , t93 , goto , l20
lw   $t1 , 28($sp) 

beqz   $t1 , l20 

#label , l19 ,  , 
l19:  

#t94 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 32($sp) 

#t95 , t94 ,  , =
lw   $t0 , 32($sp) 

sw   $t0 , 36($sp) 

#label , l21 ,  , 
l21:  

#t96 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 40($sp) 

#t97 , t91 , t96 , *
lw   $t1 , 20($sp) 

lw   $t2 , 40($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 44($sp) 

#t98 , t86 , t97 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 48($sp) 

#t99 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 52($sp) 

#t100 , t95 , t99 , <
lw   $t1 , 36($sp) 

lw   $t2 , 52($sp) 

slt   $t0 , $t1 , $t2 

sw   $t0 , 56($sp) 

#ifnot , t100 , goto , l23
lw   $t1 , 56($sp) 

beqz   $t1 , l23 

#label , l22 ,  , 
l22:  

#t101 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 60($sp) 

#t102 , t91 , t101 , *
lw   $t1 , 20($sp) 

lw   $t2 , 60($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 64($sp) 

#t103 , t86 , t102 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 64($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 68($sp) 

#t104 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 72($sp) 

#t105 , t95 , t104 , *
lw   $t1 , 36($sp) 

lw   $t2 , 72($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 76($sp) 

#t106 , t103 , t105 , =*
lw   $t1 , 68($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 80($sp) 

#t107 , t89 , t106 , +
lw   $t1 , 12($sp) 

lw   $t2 , 80($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 84($sp) 

#t89 , t107 ,  , =
lw   $t0 , 84($sp) 

sw   $t0 , 12($sp) 

#t108 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 88($sp) 

#t109 , t95 , t108 , +
lw   $t1 , 36($sp) 

lw   $t2 , 88($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 92($sp) 

#t95 , t109 ,  , =
lw   $t0 , 92($sp) 

sw   $t0 , 36($sp) 

#goto , l21 ,  , 
b   l21 

#label , l23 ,  , 
l23:  

#t110 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 96($sp) 

#t111 , t89 , t110 , ==
lw   $t1 , 12($sp) 

lw   $t2 , 96($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel7 

li   $t0 , 0 

b   mipsLabel8 

mipsLabel7:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel9 

li   $t0 , 0 

b   mipsLabel8 

mipsLabel9:  

li   $t0 , 1 

mipsLabel8:  

sw   $t0 , 100($sp) 

#if , t111 , goto , l24
lw   $t1 , 100($sp) 

bnez   $t1 , l24 

#goto , l25 ,  , 
b   l25 

#label , l24 ,  , 
l24:  

#putint , t91 ,  , 
lw   $a0 , 20($sp) 

li   $v0 , 1 

syscall  

#t112 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 104($sp) 

#putchar , t112 ,  , 
lw   $a0 , 104($sp) 

li   $v0 , 11 

syscall  

#goto , l18 ,  , 
b   l18 

#goto , l26 ,  , 
b   l26 

#label , l25 ,  , 
l25:  

#label , l26 ,  , 
l26:  

#t113 , 6 ,  , =
li   $t0 , 6 

sw   $t0 , 108($sp) 

#t114 , t89 , t113 , ==
lw   $t1 , 12($sp) 

lw   $t2 , 108($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel10 

li   $t0 , 0 

b   mipsLabel11 

mipsLabel10:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel12 

li   $t0 , 0 

b   mipsLabel11 

mipsLabel12:  

li   $t0 , 1 

mipsLabel11:  

sw   $t0 , 112($sp) 

#if , t114 , goto , l27
lw   $t1 , 112($sp) 

bnez   $t1 , l27 

#goto , l28 ,  , 
b   l28 

#label , l27 ,  , 
l27:  

#putint , t91 ,  , 
lw   $a0 , 20($sp) 

li   $v0 , 1 

syscall  

#t115 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 116($sp) 

#putchar , t115 ,  , 
lw   $a0 , 116($sp) 

li   $v0 , 11 

syscall  

#goto , l19 ,  , 
b   l19 

#goto , l29 ,  , 
b   l29 

#label , l28 ,  , 
l28:  

#label , l29 ,  , 
l29:  

#t116 , 9 ,  , =
li   $t0 , 9 

sw   $t0 , 120($sp) 

#t117 , t89 , t116 , ==
lw   $t1 , 12($sp) 

lw   $t2 , 120($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel13 

li   $t0 , 0 

b   mipsLabel14 

mipsLabel13:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel15 

li   $t0 , 0 

b   mipsLabel14 

mipsLabel15:  

li   $t0 , 1 

mipsLabel14:  

sw   $t0 , 124($sp) 

#if , t117 , goto , l30
lw   $t1 , 124($sp) 

bnez   $t1 , l30 

#goto , l31 ,  , 
b   l31 

#label , l30 ,  , 
l30:  

#putint , t91 ,  , 
lw   $a0 , 20($sp) 

li   $v0 , 1 

syscall  

#t118 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 128($sp) 

#putchar , t118 ,  , 
lw   $a0 , 128($sp) 

li   $v0 , 11 

syscall  

#goto , l20 ,  , 
b   l20 

#goto , l32 ,  , 
b   l32 

#label , l31 ,  , 
l31:  

#label , l32 ,  , 
l32:  

#t119 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 132($sp) 

#t120 , t91 , t119 , +
lw   $t1 , 20($sp) 

lw   $t2 , 132($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 136($sp) 

#t91 , t120 ,  , =
lw   $t0 , 136($sp) 

sw   $t0 , 20($sp) 

#goto , l18 ,  , 
b   l18 

#label , l20 ,  , 
l20:  

#return , t89 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t121 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 140($sp) 

#return , t121 ,  , 
lw   $v0 , 140($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l17 ,  , 
l17:  

#goto , l33 ,  , 
b   l33 

#label , m6 ,  , 
m6:  

#methodStarts , m6 ,  , 
addi   $sp , $sp , -16 

#t122 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t124 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 4($sp) 

#t123 , t122 , t124 , =*
lw   $t1 , 0($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 8($sp) 

#return , t123 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t125 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#return , t125 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l33 ,  , 
l33:  

#goto , l34 ,  , 
b   l34 

#label , m7 ,  , 
m7:  

#methodStarts , m7 ,  , 
addi   $sp , $sp , -20 

#t126 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t127 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 4($sp) 

#t128 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 8($sp) 

#t126 , t128 , t127 , *=
lw   $t0 , 0($sp) 

lw   $t1 , 8($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#param , t126 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -4($sp) 

#t129 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 12($sp) 

#return , t126 ,  , 
lw   $v0 , 0($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t130 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 16($sp) 

#return , t130 ,  , 
lw   $v0 , 16($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l34 ,  , 
l34:  

#goto , l35 ,  , 
b   l35 

#label , m8 ,  , 
m8:  

#methodStarts , m8 ,  , 
addi   $sp , $sp , -16 

#t131 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t132 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#param , t132 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -4($sp) 

#param , t131 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -8($sp) 

#t133 , m2 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 8($sp) 

#t134 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#return , t134 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l35 ,  , 
l35:  

#goto , l36 ,  , 
b   l36 

#label , m9 ,  , 
m9:  

#methodStarts , m9 ,  , 
addi   $sp , $sp , -40 

#t135 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t136 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t138 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 8($sp) 

#t137 , t136 , t138 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 8($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 12($sp) 

#t139 , t137 , t135 , +
lw   $t1 , 12($sp) 

lw   $t2 , 0($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 16($sp) 

#t140 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 20($sp) 

#t136 , t140 , t139 , *=
lw   $t0 , 4($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t142 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 24($sp) 

#t141 , t136 , t142 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 24($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 28($sp) 

#putint , t141 ,  , 
lw   $a0 , 28($sp) 

li   $v0 , 1 

syscall  

#t143 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 32($sp) 

#putchar , t143 ,  , 
lw   $a0 , 32($sp) 

li   $v0 , 11 

syscall  

#t144 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 36($sp) 

#return , t144 ,  , 
lw   $v0 , 36($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l36 ,  , 
l36:  

#goto , l37 ,  , 
b   l37 

#label , m10 ,  , 
m10:  

#methodStarts , m10 ,  , 
addi   $sp , $sp , -36 

#t145 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t146 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 4($sp) 

#t147 , t145 , t146 , ==
lw   $t1 , 0($sp) 

lw   $t2 , 4($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel16 

li   $t0 , 0 

b   mipsLabel17 

mipsLabel16:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel18 

li   $t0 , 0 

b   mipsLabel17 

mipsLabel18:  

li   $t0 , 1 

mipsLabel17:  

sw   $t0 , 8($sp) 

#if , t147 , goto , l38
lw   $t1 , 8($sp) 

bnez   $t1 , l38 

#goto , l39 ,  , 
b   l39 

#label , l38 ,  , 
l38:  

#t148 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 12($sp) 

#return , t148 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#goto , l40 ,  , 
b   l40 

#label , l39 ,  , 
l39:  

#t149 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 16($sp) 

#t150 , t145 , t149 , -
lw   $t1 , 0($sp) 

lw   $t2 , 16($sp) 

sub   $t0 , $t1 , $t2 

sw   $t0 , 20($sp) 

#param , t150 ,  , 
lw   $t0 , 20($sp) 

sw   $t0 , -4($sp) 

#t151 , m10 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m10 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 24($sp) 

#t152 , t145 , t151 , *
lw   $t1 , 0($sp) 

lw   $t2 , 24($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 28($sp) 

#return , t152 ,  , 
lw   $v0 , 28($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#label , l40 ,  , 
l40:  

#t153 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 32($sp) 

#return , t153 ,  , 
lw   $v0 , 32($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l37 ,  , 
l37:  

#t154 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 84($sp) 

#param , t154 ,  , 
lw   $t0 , 84($sp) 

sw   $t0 , -4($sp) 

#t155 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 88($sp) 

#t156 , t155 ,  , =
lw   $t0 , 88($sp) 

sw   $t0 , 92($sp) 

#putint , t34 ,  , 
lw   $a0 , 4($gp) 

li   $v0 , 1 

syscall  

#t157 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 96($sp) 

#putchar , t157 ,  , 
lw   $a0 , 96($sp) 

li   $v0 , 11 

syscall  

#param , t156 ,  , 
lw   $t0 , 92($sp) 

sw   $t0 , -4($sp) 

#t158 , m6 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m6 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 100($sp) 

#putint , t158 ,  , 
lw   $a0 , 100($sp) 

li   $v0 , 1 

syscall  

#t159 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 104($sp) 

#putchar , t159 ,  , 
lw   $a0 , 104($sp) 

li   $v0 , 11 

syscall  

#t160 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 108($sp) 

#param , t156 ,  , 
lw   $t0 , 92($sp) 

sw   $t0 , -4($sp) 

#param , t160 ,  , 
lw   $t0 , 108($sp) 

sw   $t0 , -8($sp) 

#t161 , m2 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 112($sp) 

#t162 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 116($sp) 

#param , t162 ,  , 
lw   $t0 , 116($sp) 

sw   $t0 , -4($sp) 

#t163 , m7 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m7 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 120($sp) 

#t164 , t163 ,  , =
lw   $t0 , 120($sp) 

sw   $t0 , 124($sp) 

#t165 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 128($sp) 

#t166 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 132($sp) 

#t167 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 136($sp) 

#t168 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 140($sp) 

#t169 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 144($sp) 

#t168 , t169 , t165 , *=
lw   $t0 , 140($sp) 

lw   $t1 , 144($sp) 

lw   $t2 , 128($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t170 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 148($sp) 

#t168 , t170 , t166 , *=
lw   $t0 , 140($sp) 

lw   $t1 , 148($sp) 

lw   $t2 , 132($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t171 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 152($sp) 

#t168 , t171 , t167 , *=
lw   $t0 , 140($sp) 

lw   $t1 , 152($sp) 

lw   $t2 , 136($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t172 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 156($sp) 

#t173 , t172 ,  , -
lw   $t1 , 156($sp) 

sub   $t0 , $zero , $t1 

sw   $t0 , 160($sp) 

#t174 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 164($sp) 

#t175 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 168($sp) 

#t176 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 172($sp) 

#t177 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 176($sp) 

#t176 , t177 , t173 , *=
lw   $t0 , 172($sp) 

lw   $t1 , 176($sp) 

lw   $t2 , 160($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t178 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 180($sp) 

#t176 , t178 , t174 , *=
lw   $t0 , 172($sp) 

lw   $t1 , 180($sp) 

lw   $t2 , 164($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t179 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 184($sp) 

#t176 , t179 , t175 , *=
lw   $t0 , 172($sp) 

lw   $t1 , 184($sp) 

lw   $t2 , 168($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t180 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 188($sp) 

#t181 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 192($sp) 

#t182 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 196($sp) 

#t183 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 200($sp) 

#t184 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 204($sp) 

#t183 , t184 , t180 , *=
lw   $t0 , 200($sp) 

lw   $t1 , 204($sp) 

lw   $t2 , 188($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t185 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 208($sp) 

#t183 , t185 , t181 , *=
lw   $t0 , 200($sp) 

lw   $t1 , 208($sp) 

lw   $t2 , 192($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t186 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 212($sp) 

#t183 , t186 , t182 , *=
lw   $t0 , 200($sp) 

lw   $t1 , 212($sp) 

lw   $t2 , 196($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t187 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 216($sp) 

#t188 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 220($sp) 

#t189 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 224($sp) 

#t190 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 228($sp) 

#t191 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 232($sp) 

#t190 , t191 , t187 , *=
lw   $t0 , 228($sp) 

lw   $t1 , 232($sp) 

lw   $t2 , 216($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t192 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 236($sp) 

#t190 , t192 , t188 , *=
lw   $t0 , 228($sp) 

lw   $t1 , 236($sp) 

lw   $t2 , 220($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t193 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 240($sp) 

#t190 , t193 , t189 , *=
lw   $t0 , 228($sp) 

lw   $t1 , 240($sp) 

lw   $t2 , 224($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t194 , 16 ,  , new
li   $a0 , 16 

li   $v0 , 9 

syscall  

sw   $v0 , 244($sp) 

#t195 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 248($sp) 

#t194 , t195 , t168 , *=
lw   $t0 , 244($sp) 

lw   $t1 , 248($sp) 

lw   $t2 , 140($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t196 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 252($sp) 

#t194 , t196 , t176 , *=
lw   $t0 , 244($sp) 

lw   $t1 , 252($sp) 

lw   $t2 , 172($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t197 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 256($sp) 

#t194 , t197 , t183 , *=
lw   $t0 , 244($sp) 

lw   $t1 , 256($sp) 

lw   $t2 , 200($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t198 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 260($sp) 

#t194 , t198 , t190 , *=
lw   $t0 , 244($sp) 

lw   $t1 , 260($sp) 

lw   $t2 , 228($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#param , t164 ,  , 
lw   $t0 , 124($sp) 

sw   $t0 , -4($sp) 

#param , t194 ,  , 
lw   $t0 , 244($sp) 

sw   $t0 , -8($sp) 

#t199 , m4 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m4 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 264($sp) 

#putint , t199 ,  , 
lw   $a0 , 264($sp) 

li   $v0 , 1 

syscall  

#t200 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 268($sp) 

#putchar , t200 ,  , 
lw   $a0 , 268($sp) 

li   $v0 , 11 

syscall  

#t202 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 272($sp) 

#t201 , t164 , t202 , =*
lw   $t1 , 124($sp) 

lw   $t2 , 272($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 276($sp) 

#putint , t201 ,  , 
lw   $a0 , 276($sp) 

li   $v0 , 1 

syscall  

#t203 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 280($sp) 

#putchar , t203 ,  , 
lw   $a0 , 280($sp) 

li   $v0 , 11 

syscall  

#t204 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 284($sp) 

#param , t164 ,  , 
lw   $t0 , 124($sp) 

sw   $t0 , -4($sp) 

#param , t204 ,  , 
lw   $t0 , 284($sp) 

sw   $t0 , -8($sp) 

#t205 , m9 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m9 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 288($sp) 

#t207 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 292($sp) 

#t206 , t164 , t207 , =*
lw   $t1 , 124($sp) 

lw   $t2 , 292($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 296($sp) 

#putint , t206 ,  , 
lw   $a0 , 296($sp) 

li   $v0 , 1 

syscall  

#t208 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 300($sp) 

#putchar , t208 ,  , 
lw   $a0 , 300($sp) 

li   $v0 , 11 

syscall  

#t209 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 304($sp) 

#t210 , t209 ,  , =
lw   $t0 , 304($sp) 

sw   $t0 , 308($sp) 

#t211 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 312($sp) 

#t212 , t211 ,  , =
lw   $t0 , 312($sp) 

sw   $t0 , 316($sp) 

#t213 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 320($sp) 

#t214 , t210 , t213 , ==
lw   $t1 , 308($sp) 

lw   $t2 , 320($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel19 

li   $t0 , 0 

b   mipsLabel20 

mipsLabel19:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel21 

li   $t0 , 0 

b   mipsLabel20 

mipsLabel21:  

li   $t0 , 1 

mipsLabel20:  

sw   $t0 , 324($sp) 

#if , t214 , goto , l41
lw   $t1 , 324($sp) 

bnez   $t1 , l41 

#goto , l42 ,  , 
b   l42 

#label , l41 ,  , 
l41:  

#t215 , 36 ,  , new
li   $a0 , 36 

li   $v0 , 9 

syscall  

sw   $v0 , 328($sp) 

#t216 , 'I' ,  , =
li   $t0 , 73 

sw   $t0 , 332($sp) 

#t217 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 336($sp) 

#t215 , t217 , t216 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 336($sp) 

lw   $t2 , 332($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t218 , ''' ,  , =
li   $t0 , 39 

sw   $t0 , 340($sp) 

#t219 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 344($sp) 

#t215 , t219 , t218 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 344($sp) 

lw   $t2 , 340($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t220 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 348($sp) 

#t221 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 352($sp) 

#t215 , t221 , t220 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 352($sp) 

lw   $t2 , 348($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t222 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 356($sp) 

#t223 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 360($sp) 

#t215 , t223 , t222 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 360($sp) 

lw   $t2 , 356($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t224 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 364($sp) 

#t225 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 368($sp) 

#t215 , t225 , t224 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 368($sp) 

lw   $t2 , 364($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t226 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 372($sp) 

#t227 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 376($sp) 

#t215 , t227 , t226 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 376($sp) 

lw   $t2 , 372($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t228 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 380($sp) 

#t229 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 384($sp) 

#t215 , t229 , t228 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 384($sp) 

lw   $t2 , 380($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t230 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 388($sp) 

#t231 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 392($sp) 

#t215 , t231 , t230 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 392($sp) 

lw   $t2 , 388($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t232 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 396($sp) 

#t233 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 400($sp) 

#t215 , t233 , t232 , *=
lw   $t0 , 328($sp) 

lw   $t1 , 400($sp) 

lw   $t2 , 396($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t234 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 404($sp) 

#t235 , t215 , t234 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 404($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 408($sp) 

#putchar , t235 ,  , 
lw   $a0 , 408($sp) 

li   $v0 , 11 

syscall  

#t236 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 412($sp) 

#t237 , t215 , t236 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 412($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 416($sp) 

#putchar , t237 ,  , 
lw   $a0 , 416($sp) 

li   $v0 , 11 

syscall  

#t238 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 420($sp) 

#t239 , t215 , t238 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 420($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 424($sp) 

#putchar , t239 ,  , 
lw   $a0 , 424($sp) 

li   $v0 , 11 

syscall  

#t240 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 428($sp) 

#t241 , t215 , t240 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 428($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 432($sp) 

#putchar , t241 ,  , 
lw   $a0 , 432($sp) 

li   $v0 , 11 

syscall  

#t242 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 436($sp) 

#t243 , t215 , t242 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 436($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 440($sp) 

#putchar , t243 ,  , 
lw   $a0 , 440($sp) 

li   $v0 , 11 

syscall  

#t244 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 444($sp) 

#t245 , t215 , t244 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 444($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 448($sp) 

#putchar , t245 ,  , 
lw   $a0 , 448($sp) 

li   $v0 , 11 

syscall  

#t246 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 452($sp) 

#t247 , t215 , t246 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 452($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 456($sp) 

#putchar , t247 ,  , 
lw   $a0 , 456($sp) 

li   $v0 , 11 

syscall  

#t248 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 460($sp) 

#t249 , t215 , t248 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 460($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 464($sp) 

#putchar , t249 ,  , 
lw   $a0 , 464($sp) 

li   $v0 , 11 

syscall  

#t250 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 468($sp) 

#t251 , t215 , t250 , =*
lw   $t1 , 328($sp) 

lw   $t2 , 468($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 472($sp) 

#putchar , t251 ,  , 
lw   $a0 , 472($sp) 

li   $v0 , 11 

syscall  

#t252 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 476($sp) 

#putchar , t252 ,  , 
lw   $a0 , 476($sp) 

li   $v0 , 11 

syscall  

#t253 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 480($sp) 

#t254 , t212 , t253 , ==
lw   $t1 , 316($sp) 

lw   $t2 , 480($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel22 

li   $t0 , 0 

b   mipsLabel23 

mipsLabel22:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel24 

li   $t0 , 0 

b   mipsLabel23 

mipsLabel24:  

li   $t0 , 1 

mipsLabel23:  

sw   $t0 , 484($sp) 

#if , t254 , goto , l44
lw   $t1 , 484($sp) 

bnez   $t1 , l44 

#goto , l45 ,  , 
b   l45 

#label , l44 ,  , 
l44:  

#t255 , 80 ,  , new
li   $a0 , 80 

li   $v0 , 9 

syscall  

sw   $v0 , 488($sp) 

#t256 , 'I' ,  , =
li   $t0 , 73 

sw   $t0 , 492($sp) 

#t257 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 496($sp) 

#t255 , t257 , t256 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 496($sp) 

lw   $t2 , 492($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t258 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 500($sp) 

#t259 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 504($sp) 

#t255 , t259 , t258 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 504($sp) 

lw   $t2 , 500($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t260 , 's' ,  , =
li   $t0 , 115 

sw   $t0 , 508($sp) 

#t261 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 512($sp) 

#t255 , t261 , t260 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 512($sp) 

lw   $t2 , 508($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t262 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 516($sp) 

#t263 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 520($sp) 

#t255 , t263 , t262 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 520($sp) 

lw   $t2 , 516($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t264 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 524($sp) 

#t265 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 528($sp) 

#t255 , t265 , t264 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 528($sp) 

lw   $t2 , 524($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t266 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 532($sp) 

#t267 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 536($sp) 

#t255 , t267 , t266 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 536($sp) 

lw   $t2 , 532($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t268 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 540($sp) 

#t269 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 544($sp) 

#t255 , t269 , t268 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 544($sp) 

lw   $t2 , 540($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t270 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 548($sp) 

#t271 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 552($sp) 

#t255 , t271 , t270 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 552($sp) 

lw   $t2 , 548($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t272 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 556($sp) 

#t273 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 560($sp) 

#t255 , t273 , t272 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 560($sp) 

lw   $t2 , 556($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t274 , ''' ,  , =
li   $t0 , 39 

sw   $t0 , 564($sp) 

#t275 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 568($sp) 

#t255 , t275 , t274 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 568($sp) 

lw   $t2 , 564($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t276 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 572($sp) 

#t277 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 576($sp) 

#t255 , t277 , t276 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 576($sp) 

lw   $t2 , 572($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t278 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 580($sp) 

#t279 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 584($sp) 

#t255 , t279 , t278 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 584($sp) 

lw   $t2 , 580($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t280 , 'b' ,  , =
li   $t0 , 98 

sw   $t0 , 588($sp) 

#t281 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 592($sp) 

#t255 , t281 , t280 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 592($sp) 

lw   $t2 , 588($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t282 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 596($sp) 

#t283 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 600($sp) 

#t255 , t283 , t282 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 600($sp) 

lw   $t2 , 596($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t284 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 604($sp) 

#t285 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 608($sp) 

#t255 , t285 , t284 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 608($sp) 

lw   $t2 , 604($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t286 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 612($sp) 

#t287 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 616($sp) 

#t255 , t287 , t286 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 616($sp) 

lw   $t2 , 612($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t288 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 620($sp) 

#t289 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 624($sp) 

#t255 , t289 , t288 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 624($sp) 

lw   $t2 , 620($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t290 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 628($sp) 

#t291 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 632($sp) 

#t255 , t291 , t290 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 632($sp) 

lw   $t2 , 628($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t292 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 636($sp) 

#t293 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 640($sp) 

#t255 , t293 , t292 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 640($sp) 

lw   $t2 , 636($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t294 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 644($sp) 

#t295 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 648($sp) 

#t255 , t295 , t294 , *=
lw   $t0 , 488($sp) 

lw   $t1 , 648($sp) 

lw   $t2 , 644($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t296 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 652($sp) 

#t297 , t255 , t296 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 652($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 656($sp) 

#putchar , t297 ,  , 
lw   $a0 , 656($sp) 

li   $v0 , 11 

syscall  

#t298 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 660($sp) 

#t299 , t255 , t298 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 660($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 664($sp) 

#putchar , t299 ,  , 
lw   $a0 , 664($sp) 

li   $v0 , 11 

syscall  

#t300 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 668($sp) 

#t301 , t255 , t300 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 668($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 672($sp) 

#putchar , t301 ,  , 
lw   $a0 , 672($sp) 

li   $v0 , 11 

syscall  

#t302 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 676($sp) 

#t303 , t255 , t302 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 676($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 680($sp) 

#putchar , t303 ,  , 
lw   $a0 , 680($sp) 

li   $v0 , 11 

syscall  

#t304 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 684($sp) 

#t305 , t255 , t304 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 684($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 688($sp) 

#putchar , t305 ,  , 
lw   $a0 , 688($sp) 

li   $v0 , 11 

syscall  

#t306 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 692($sp) 

#t307 , t255 , t306 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 692($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 696($sp) 

#putchar , t307 ,  , 
lw   $a0 , 696($sp) 

li   $v0 , 11 

syscall  

#t308 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 700($sp) 

#t309 , t255 , t308 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 700($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 704($sp) 

#putchar , t309 ,  , 
lw   $a0 , 704($sp) 

li   $v0 , 11 

syscall  

#t310 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 708($sp) 

#t311 , t255 , t310 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 708($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 712($sp) 

#putchar , t311 ,  , 
lw   $a0 , 712($sp) 

li   $v0 , 11 

syscall  

#t312 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 716($sp) 

#t313 , t255 , t312 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 716($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 720($sp) 

#putchar , t313 ,  , 
lw   $a0 , 720($sp) 

li   $v0 , 11 

syscall  

#t314 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 724($sp) 

#t315 , t255 , t314 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 724($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 728($sp) 

#putchar , t315 ,  , 
lw   $a0 , 728($sp) 

li   $v0 , 11 

syscall  

#t316 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 732($sp) 

#t317 , t255 , t316 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 732($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 736($sp) 

#putchar , t317 ,  , 
lw   $a0 , 736($sp) 

li   $v0 , 11 

syscall  

#t318 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 740($sp) 

#t319 , t255 , t318 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 740($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 744($sp) 

#putchar , t319 ,  , 
lw   $a0 , 744($sp) 

li   $v0 , 11 

syscall  

#t320 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 748($sp) 

#t321 , t255 , t320 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 748($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 752($sp) 

#putchar , t321 ,  , 
lw   $a0 , 752($sp) 

li   $v0 , 11 

syscall  

#t322 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 756($sp) 

#t323 , t255 , t322 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 756($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 760($sp) 

#putchar , t323 ,  , 
lw   $a0 , 760($sp) 

li   $v0 , 11 

syscall  

#t324 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 764($sp) 

#t325 , t255 , t324 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 764($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 768($sp) 

#putchar , t325 ,  , 
lw   $a0 , 768($sp) 

li   $v0 , 11 

syscall  

#t326 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 772($sp) 

#t327 , t255 , t326 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 772($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 776($sp) 

#putchar , t327 ,  , 
lw   $a0 , 776($sp) 

li   $v0 , 11 

syscall  

#t328 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 780($sp) 

#t329 , t255 , t328 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 780($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 784($sp) 

#putchar , t329 ,  , 
lw   $a0 , 784($sp) 

li   $v0 , 11 

syscall  

#t330 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 788($sp) 

#t331 , t255 , t330 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 788($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 792($sp) 

#putchar , t331 ,  , 
lw   $a0 , 792($sp) 

li   $v0 , 11 

syscall  

#t332 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 796($sp) 

#t333 , t255 , t332 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 796($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 800($sp) 

#putchar , t333 ,  , 
lw   $a0 , 800($sp) 

li   $v0 , 11 

syscall  

#t334 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 804($sp) 

#t335 , t255 , t334 , =*
lw   $t1 , 488($sp) 

lw   $t2 , 804($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 808($sp) 

#putchar , t335 ,  , 
lw   $a0 , 808($sp) 

li   $v0 , 11 

syscall  

#t336 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 812($sp) 

#putchar , t336 ,  , 
lw   $a0 , 812($sp) 

li   $v0 , 11 

syscall  

#goto , l46 ,  , 
b   l46 

#label , l45 ,  , 
l45:  

#t337 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 816($sp) 

#t338 , t212 , t337 , ==
lw   $t1 , 316($sp) 

lw   $t2 , 816($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel25 

li   $t0 , 0 

b   mipsLabel26 

mipsLabel25:  

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel27 

li   $t0 , 0 

b   mipsLabel26 

mipsLabel27:  

li   $t0 , 1 

mipsLabel26:  

sw   $t0 , 820($sp) 

#if , t338 , goto , l47
lw   $t1 , 820($sp) 

bnez   $t1 , l47 

#goto , l48 ,  , 
b   l48 

#label , l47 ,  , 
l47:  

#t339 , 48 ,  , new
li   $a0 , 48 

li   $v0 , 9 

syscall  

sw   $v0 , 824($sp) 

#t340 , 'W' ,  , =
li   $t0 , 87 

sw   $t0 , 828($sp) 

#t341 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 832($sp) 

#t339 , t341 , t340 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 832($sp) 

lw   $t2 , 828($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t342 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 836($sp) 

#t343 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 840($sp) 

#t339 , t343 , t342 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 840($sp) 

lw   $t2 , 836($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t344 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 844($sp) 

#t345 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 848($sp) 

#t339 , t345 , t344 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 848($sp) 

lw   $t2 , 844($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t346 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 852($sp) 

#t347 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 856($sp) 

#t339 , t347 , t346 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 856($sp) 

lw   $t2 , 852($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t348 , 'g' ,  , =
li   $t0 , 103 

sw   $t0 , 860($sp) 

#t349 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 864($sp) 

#t339 , t349 , t348 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 864($sp) 

lw   $t2 , 860($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t350 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 868($sp) 

#t351 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 872($sp) 

#t339 , t351 , t350 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 872($sp) 

lw   $t2 , 868($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t352 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 876($sp) 

#t353 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 880($sp) 

#t339 , t353 , t352 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 880($sp) 

lw   $t2 , 876($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t354 , 'g' ,  , =
li   $t0 , 103 

sw   $t0 , 884($sp) 

#t355 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 888($sp) 

#t339 , t355 , t354 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 888($sp) 

lw   $t2 , 884($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t356 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 892($sp) 

#t357 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 896($sp) 

#t339 , t357 , t356 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 896($sp) 

lw   $t2 , 892($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t358 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 900($sp) 

#t359 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 904($sp) 

#t339 , t359 , t358 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 904($sp) 

lw   $t2 , 900($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t360 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 908($sp) 

#t361 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 912($sp) 

#t339 , t361 , t360 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 912($sp) 

lw   $t2 , 908($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t362 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 916($sp) 

#t363 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 920($sp) 

#t339 , t363 , t362 , *=
lw   $t0 , 824($sp) 

lw   $t1 , 920($sp) 

lw   $t2 , 916($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t364 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 924($sp) 

#t365 , t339 , t364 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 924($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 928($sp) 

#putchar , t365 ,  , 
lw   $a0 , 928($sp) 

li   $v0 , 11 

syscall  

#t366 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 932($sp) 

#t367 , t339 , t366 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 932($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 936($sp) 

#putchar , t367 ,  , 
lw   $a0 , 936($sp) 

li   $v0 , 11 

syscall  

#t368 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 940($sp) 

#t369 , t339 , t368 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 940($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 944($sp) 

#putchar , t369 ,  , 
lw   $a0 , 944($sp) 

li   $v0 , 11 

syscall  

#t370 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 948($sp) 

#t371 , t339 , t370 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 948($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 952($sp) 

#putchar , t371 ,  , 
lw   $a0 , 952($sp) 

li   $v0 , 11 

syscall  

#t372 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 956($sp) 

#t373 , t339 , t372 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 956($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 960($sp) 

#putchar , t373 ,  , 
lw   $a0 , 960($sp) 

li   $v0 , 11 

syscall  

#t374 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 964($sp) 

#t375 , t339 , t374 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 964($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 968($sp) 

#putchar , t375 ,  , 
lw   $a0 , 968($sp) 

li   $v0 , 11 

syscall  

#t376 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 972($sp) 

#t377 , t339 , t376 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 972($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 976($sp) 

#putchar , t377 ,  , 
lw   $a0 , 976($sp) 

li   $v0 , 11 

syscall  

#t378 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 980($sp) 

#t379 , t339 , t378 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 980($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 984($sp) 

#putchar , t379 ,  , 
lw   $a0 , 984($sp) 

li   $v0 , 11 

syscall  

#t380 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 988($sp) 

#t381 , t339 , t380 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 988($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 992($sp) 

#putchar , t381 ,  , 
lw   $a0 , 992($sp) 

li   $v0 , 11 

syscall  

#t382 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 996($sp) 

#t383 , t339 , t382 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 996($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1000($sp) 

#putchar , t383 ,  , 
lw   $a0 , 1000($sp) 

li   $v0 , 11 

syscall  

#t384 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 1004($sp) 

#t385 , t339 , t384 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 1004($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1008($sp) 

#putchar , t385 ,  , 
lw   $a0 , 1008($sp) 

li   $v0 , 11 

syscall  

#t386 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 1012($sp) 

#t387 , t339 , t386 , =*
lw   $t1 , 824($sp) 

lw   $t2 , 1012($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1016($sp) 

#putchar , t387 ,  , 
lw   $a0 , 1016($sp) 

li   $v0 , 11 

syscall  

#t388 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1020($sp) 

#putchar , t388 ,  , 
lw   $a0 , 1020($sp) 

li   $v0 , 11 

syscall  

#goto , l49 ,  , 
b   l49 

#label , l48 ,  , 
l48:  

#t389 , 28 ,  , new
li   $a0 , 28 

li   $v0 , 9 

syscall  

sw   $v0 , 1024($sp) 

#t390 , 'Y' ,  , =
li   $t0 , 89 

sw   $t0 , 1028($sp) 

#t391 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1032($sp) 

#t389 , t391 , t390 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1032($sp) 

lw   $t2 , 1028($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t392 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 1036($sp) 

#t393 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1040($sp) 

#t389 , t393 , t392 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1040($sp) 

lw   $t2 , 1036($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t394 , 'y' ,  , =
li   $t0 , 121 

sw   $t0 , 1044($sp) 

#t395 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1048($sp) 

#t389 , t395 , t394 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1048($sp) 

lw   $t2 , 1044($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t396 , '!' ,  , =
li   $t0 , 33 

sw   $t0 , 1052($sp) 

#t397 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1056($sp) 

#t389 , t397 , t396 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1056($sp) 

lw   $t2 , 1052($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t398 , '!' ,  , =
li   $t0 , 33 

sw   $t0 , 1060($sp) 

#t399 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1064($sp) 

#t389 , t399 , t398 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1064($sp) 

lw   $t2 , 1060($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t400 , '!' ,  , =
li   $t0 , 33 

sw   $t0 , 1068($sp) 

#t401 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1072($sp) 

#t389 , t401 , t400 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1072($sp) 

lw   $t2 , 1068($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t402 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 1076($sp) 

#t403 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1080($sp) 

#t389 , t403 , t402 , *=
lw   $t0 , 1024($sp) 

lw   $t1 , 1080($sp) 

lw   $t2 , 1076($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t404 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1084($sp) 

#t405 , t389 , t404 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1084($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1088($sp) 

#putchar , t405 ,  , 
lw   $a0 , 1088($sp) 

li   $v0 , 11 

syscall  

#t406 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 1092($sp) 

#t407 , t389 , t406 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1092($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1096($sp) 

#putchar , t407 ,  , 
lw   $a0 , 1096($sp) 

li   $v0 , 11 

syscall  

#t408 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 1100($sp) 

#t409 , t389 , t408 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1100($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1104($sp) 

#putchar , t409 ,  , 
lw   $a0 , 1104($sp) 

li   $v0 , 11 

syscall  

#t410 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 1108($sp) 

#t411 , t389 , t410 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1108($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1112($sp) 

#putchar , t411 ,  , 
lw   $a0 , 1112($sp) 

li   $v0 , 11 

syscall  

#t412 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 1116($sp) 

#t413 , t389 , t412 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1116($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1120($sp) 

#putchar , t413 ,  , 
lw   $a0 , 1120($sp) 

li   $v0 , 11 

syscall  

#t414 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 1124($sp) 

#t415 , t389 , t414 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1124($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1128($sp) 

#putchar , t415 ,  , 
lw   $a0 , 1128($sp) 

li   $v0 , 11 

syscall  

#t416 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 1132($sp) 

#t417 , t389 , t416 , =*
lw   $t1 , 1024($sp) 

lw   $t2 , 1132($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1136($sp) 

#putchar , t417 ,  , 
lw   $a0 , 1136($sp) 

li   $v0 , 11 

syscall  

#t418 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1140($sp) 

#putchar , t418 ,  , 
lw   $a0 , 1140($sp) 

li   $v0 , 11 

syscall  

#label , l49 ,  , 
l49:  

#label , l46 ,  , 
l46:  

#goto , l43 ,  , 
b   l43 

#label , l42 ,  , 
l42:  

#label , l43 ,  , 
l43:  

#t419 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 1144($sp) 

#param , t164 ,  , 
lw   $t0 , 124($sp) 

sw   $t0 , -4($sp) 

#param , t419 ,  , 
lw   $t0 , 1144($sp) 

sw   $t0 , -8($sp) 

#t420 , m8 ,  , call
addi   $sp , $sp , -8 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m8 

lw   $ra , 0($sp) 

addi   $sp , $sp , 16 

sw   $v0 , 1148($sp) 

#t422 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 1152($sp) 

#t421 , t164 , t422 , =*
lw   $t1 , 124($sp) 

lw   $t2 , 1152($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 1156($sp) 

#param , t421 ,  , 
lw   $t0 , 1156($sp) 

sw   $t0 , -4($sp) 

#t423 , m10 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m10 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 1160($sp) 

#putint , t423 ,  , 
lw   $a0 , 1160($sp) 

li   $v0 , 1 

syscall  

#t424 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 1164($sp) 

#putchar , t424 ,  , 
lw   $a0 , 1164($sp) 

li   $v0 , 11 

syscall  

exit:
li $v0, 10 
syscall
