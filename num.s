.text 
main:
addi   $sp , $sp , -676 

#goto , l0 ,  , 
b   l0 

#label , m0 ,  , 
m0:  

#methodStarts , m0 ,  , 
addi   $sp , $sp , -16 

#t0 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#goto , l1 ,  , 
b   l1 

#label , m1 ,  , 
m1:  

#methodStarts , m1 ,  , 
addi   $sp , $sp , -12 

#t1 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t2 , t1 , t1 , *
lw   $t1 , 0($sp) 

lw   $t2 , 0($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 4($sp) 

#return , t2 ,  , 
lw   $v0 , 4($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t3 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#return , t3 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l1 ,  , 
l1:  

#param , t0 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -4($sp) 

#t4 , m1 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 4($sp) 

#t5 , t0 , t4 , *
lw   $t1 , 0($sp) 

lw   $t2 , 4($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 8($sp) 

#return , t5 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t6 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#return , t6 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l0 ,  , 
l0:  

#goto , l2 ,  , 
b   l2 

#label , m2 ,  , 
m2:  

#methodStarts , m2 ,  , 
addi   $sp , $sp , -36 

#t7 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t8 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 4($sp) 

#t9 , t7 , t8 , <=
lw   $t1 , 0($sp) 

lw   $t2 , 4($sp) 

slt   $t0 , $t2 , $t1 

beqz   $t0 , mipsLabel0 

li   $t0 , 0 

b   mipsLabel1 

mipsLabel0:  

li   $t0 , 1 

mipsLabel1:  

sw   $t0 , 8($sp) 

#if , t9 , goto , l3
lw   $t1 , 8($sp) 

bnez   $t1 , l3 

#goto , l4 ,  , 
b   l4 

#label , l3 ,  , 
l3:  

#t10 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 12($sp) 

#return , t10 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#goto , l5 ,  , 
b   l5 

#label , l4 ,  , 
l4:  

#label , l5 ,  , 
l5:  

#t11 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 16($sp) 

#t12 , t7 , t11 , -
lw   $t1 , 0($sp) 

lw   $t2 , 16($sp) 

sub   $t0 , $t1 , $t2 

sw   $t0 , 20($sp) 

#param , t12 ,  , 
lw   $t0 , 20($sp) 

sw   $t0 , -4($sp) 

#t13 , m2 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 24($sp) 

#t14 , t7 , t13 , *
lw   $t1 , 0($sp) 

lw   $t2 , 24($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 28($sp) 

#return , t14 ,  , 
lw   $v0 , 28($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t15 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 32($sp) 

#return , t15 ,  , 
lw   $v0 , 32($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l2 ,  , 
l2:  

#t16 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 0($sp) 

#t17 , t16 ,  , =
lw   $t0 , 0($sp) 

sw   $t0 , 4($sp) 

#readint , t17 ,  , 
li   $v0 , 5 

syscall  

sw   $v0 , 4($sp) 

#param , t17 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -4($sp) 

#t18 , m0 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 8($sp) 

#putint , t18 ,  , 
lw   $a0 , 8($sp) 

li   $v0 , 1 

syscall  

#t19 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 12($sp) 

#putchar , t19 ,  , 
lw   $a0 , 12($sp) 

li   $v0 , 11 

syscall  

#param , t17 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -4($sp) 

#t20 , m2 ,  , call
addi   $sp , $sp , -4 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 12 

sw   $v0 , 16($sp) 

#putint , t20 ,  , 
lw   $a0 , 16($sp) 

li   $v0 , 1 

syscall  

#t21 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 20($sp) 

#putchar , t21 ,  , 
lw   $a0 , 20($sp) 

li   $v0 , 11 

syscall  

#t22 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 24($sp) 

#t23 , t17 , t22 , ==
lw   $t1 , 4($sp) 

lw   $t2 , 24($sp) 

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

sw   $t0 , 28($sp) 

#if , t23 , goto , l6
lw   $t1 , 28($sp) 

bnez   $t1 , l6 

#goto , l7 ,  , 
b   l7 

#label , l6 ,  , 
l6:  

#t24 , 84 ,  , new
li   $a0 , 84 

li   $v0 , 9 

syscall  

sw   $v0 , 32($sp) 

#t25 , 'E' ,  , =
li   $t0 , 69 

sw   $t0 , 36($sp) 

#t26 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 40($sp) 

#t24 , t26 , t25 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 40($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t27 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 44($sp) 

#t28 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 48($sp) 

#t24 , t28 , t27 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 48($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t29 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 52($sp) 

#t30 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 56($sp) 

#t24 , t30 , t29 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t31 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 60($sp) 

#t32 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 64($sp) 

#t24 , t32 , t31 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 64($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t33 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 68($sp) 

#t34 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 72($sp) 

#t24 , t34 , t33 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t35 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 76($sp) 

#t36 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 80($sp) 

#t24 , t36 , t35 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t37 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 84($sp) 

#t38 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 88($sp) 

#t24 , t38 , t37 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 88($sp) 

lw   $t2 , 84($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t39 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 92($sp) 

#t40 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 96($sp) 

#t24 , t40 , t39 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 96($sp) 

lw   $t2 , 92($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t41 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 100($sp) 

#t42 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 104($sp) 

#t24 , t42 , t41 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 104($sp) 

lw   $t2 , 100($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t43 , '-' ,  , =
li   $t0 , 45 

sw   $t0 , 108($sp) 

#t44 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 112($sp) 

#t24 , t44 , t43 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 112($sp) 

lw   $t2 , 108($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t45 , 'z' ,  , =
li   $t0 , 122 

sw   $t0 , 116($sp) 

#t46 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 120($sp) 

#t24 , t46 , t45 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 120($sp) 

lw   $t2 , 116($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t47 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 124($sp) 

#t48 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 128($sp) 

#t24 , t48 , t47 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 128($sp) 

lw   $t2 , 124($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t49 , 'r' ,  , =
li   $t0 , 114 

sw   $t0 , 132($sp) 

#t50 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 136($sp) 

#t24 , t50 , t49 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 136($sp) 

lw   $t2 , 132($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t51 , 'o' ,  , =
li   $t0 , 111 

sw   $t0 , 140($sp) 

#t52 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 144($sp) 

#t24 , t52 , t51 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 144($sp) 

lw   $t2 , 140($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t53 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 148($sp) 

#t54 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 152($sp) 

#t24 , t54 , t53 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 152($sp) 

lw   $t2 , 148($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t55 , 'v' ,  , =
li   $t0 , 118 

sw   $t0 , 156($sp) 

#t56 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 160($sp) 

#t24 , t56 , t55 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 160($sp) 

lw   $t2 , 156($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t57 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 164($sp) 

#t58 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 168($sp) 

#t24 , t58 , t57 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 168($sp) 

lw   $t2 , 164($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t59 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 172($sp) 

#t60 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 176($sp) 

#t24 , t60 , t59 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 176($sp) 

lw   $t2 , 172($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t61 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 180($sp) 

#t62 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 184($sp) 

#t24 , t62 , t61 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 184($sp) 

lw   $t2 , 180($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t63 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 188($sp) 

#t64 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 192($sp) 

#t24 , t64 , t63 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 192($sp) 

lw   $t2 , 188($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t65 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 196($sp) 

#t66 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 200($sp) 

#t24 , t66 , t65 , *=
lw   $t0 , 32($sp) 

lw   $t1 , 200($sp) 

lw   $t2 , 196($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t67 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 204($sp) 

#t68 , t24 , t67 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 204($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 208($sp) 

#putchar , t68 ,  , 
lw   $a0 , 208($sp) 

li   $v0 , 11 

syscall  

#t69 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 212($sp) 

#t70 , t24 , t69 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 212($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 216($sp) 

#putchar , t70 ,  , 
lw   $a0 , 216($sp) 

li   $v0 , 11 

syscall  

#t71 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 220($sp) 

#t72 , t24 , t71 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 220($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 224($sp) 

#putchar , t72 ,  , 
lw   $a0 , 224($sp) 

li   $v0 , 11 

syscall  

#t73 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 228($sp) 

#t74 , t24 , t73 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 228($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 232($sp) 

#putchar , t74 ,  , 
lw   $a0 , 232($sp) 

li   $v0 , 11 

syscall  

#t75 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 236($sp) 

#t76 , t24 , t75 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 236($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 240($sp) 

#putchar , t76 ,  , 
lw   $a0 , 240($sp) 

li   $v0 , 11 

syscall  

#t77 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 244($sp) 

#t78 , t24 , t77 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 244($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 248($sp) 

#putchar , t78 ,  , 
lw   $a0 , 248($sp) 

li   $v0 , 11 

syscall  

#t79 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 252($sp) 

#t80 , t24 , t79 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 252($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 256($sp) 

#putchar , t80 ,  , 
lw   $a0 , 256($sp) 

li   $v0 , 11 

syscall  

#t81 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 260($sp) 

#t82 , t24 , t81 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 260($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 264($sp) 

#putchar , t82 ,  , 
lw   $a0 , 264($sp) 

li   $v0 , 11 

syscall  

#t83 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 268($sp) 

#t84 , t24 , t83 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 268($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 272($sp) 

#putchar , t84 ,  , 
lw   $a0 , 272($sp) 

li   $v0 , 11 

syscall  

#t85 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 276($sp) 

#t86 , t24 , t85 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 276($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 280($sp) 

#putchar , t86 ,  , 
lw   $a0 , 280($sp) 

li   $v0 , 11 

syscall  

#t87 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 284($sp) 

#t88 , t24 , t87 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 284($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 288($sp) 

#putchar , t88 ,  , 
lw   $a0 , 288($sp) 

li   $v0 , 11 

syscall  

#t89 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 292($sp) 

#t90 , t24 , t89 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 292($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 296($sp) 

#putchar , t90 ,  , 
lw   $a0 , 296($sp) 

li   $v0 , 11 

syscall  

#t91 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 300($sp) 

#t92 , t24 , t91 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 300($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 304($sp) 

#putchar , t92 ,  , 
lw   $a0 , 304($sp) 

li   $v0 , 11 

syscall  

#t93 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 308($sp) 

#t94 , t24 , t93 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 308($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 312($sp) 

#putchar , t94 ,  , 
lw   $a0 , 312($sp) 

li   $v0 , 11 

syscall  

#t95 , 56 ,  , =
li   $t0 , 56 

sw   $t0 , 316($sp) 

#t96 , t24 , t95 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 316($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 320($sp) 

#putchar , t96 ,  , 
lw   $a0 , 320($sp) 

li   $v0 , 11 

syscall  

#t97 , 60 ,  , =
li   $t0 , 60 

sw   $t0 , 324($sp) 

#t98 , t24 , t97 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 324($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 328($sp) 

#putchar , t98 ,  , 
lw   $a0 , 328($sp) 

li   $v0 , 11 

syscall  

#t99 , 64 ,  , =
li   $t0 , 64 

sw   $t0 , 332($sp) 

#t100 , t24 , t99 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 332($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 336($sp) 

#putchar , t100 ,  , 
lw   $a0 , 336($sp) 

li   $v0 , 11 

syscall  

#t101 , 68 ,  , =
li   $t0 , 68 

sw   $t0 , 340($sp) 

#t102 , t24 , t101 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 340($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 344($sp) 

#putchar , t102 ,  , 
lw   $a0 , 344($sp) 

li   $v0 , 11 

syscall  

#t103 , 72 ,  , =
li   $t0 , 72 

sw   $t0 , 348($sp) 

#t104 , t24 , t103 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 348($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 352($sp) 

#putchar , t104 ,  , 
lw   $a0 , 352($sp) 

li   $v0 , 11 

syscall  

#t105 , 76 ,  , =
li   $t0 , 76 

sw   $t0 , 356($sp) 

#t106 , t24 , t105 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 356($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 360($sp) 

#putchar , t106 ,  , 
lw   $a0 , 360($sp) 

li   $v0 , 11 

syscall  

#t107 , 80 ,  , =
li   $t0 , 80 

sw   $t0 , 364($sp) 

#t108 , t24 , t107 , =*
lw   $t1 , 32($sp) 

lw   $t2 , 364($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 368($sp) 

#putchar , t108 ,  , 
lw   $a0 , 368($sp) 

li   $v0 , 11 

syscall  

#t109 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 372($sp) 

#putchar , t109 ,  , 
lw   $a0 , 372($sp) 

li   $v0 , 11 

syscall  

#t110 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 376($sp) 

#t111 , t110 ,  , =
lw   $t0 , 376($sp) 

sw   $t0 , 380($sp) 

#readint , t111 ,  , 
li   $v0 , 5 

syscall  

sw   $v0 , 380($sp) 

#goto , l8 ,  , 
b   l8 

#label , l7 ,  , 
l7:  

#label , l8 ,  , 
l8:  

#t112 , 56 ,  , new
li   $a0 , 56 

li   $v0 , 9 

syscall  

sw   $v0 , 384($sp) 

#t113 , 'U' ,  , =
li   $t0 , 85 

sw   $t0 , 388($sp) 

#t114 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 392($sp) 

#t112 , t114 , t113 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 392($sp) 

lw   $t2 , 388($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t115 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 396($sp) 

#t116 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 400($sp) 

#t112 , t116 , t115 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 400($sp) 

lw   $t2 , 396($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t117 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 404($sp) 

#t118 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 408($sp) 

#t112 , t118 , t117 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 408($sp) 

lw   $t2 , 404($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t119 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 412($sp) 

#t120 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 416($sp) 

#t112 , t120 , t119 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 416($sp) 

lw   $t2 , 412($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t121 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 420($sp) 

#t122 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 424($sp) 

#t112 , t122 , t121 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 424($sp) 

lw   $t2 , 420($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t123 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 428($sp) 

#t124 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 432($sp) 

#t112 , t124 , t123 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 432($sp) 

lw   $t2 , 428($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t125 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 436($sp) 

#t126 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 440($sp) 

#t112 , t126 , t125 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 440($sp) 

lw   $t2 , 436($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t127 , 'x' ,  , =
li   $t0 , 120 

sw   $t0 , 444($sp) 

#t128 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 448($sp) 

#t112 , t128 , t127 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 448($sp) 

lw   $t2 , 444($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t129 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 452($sp) 

#t130 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 456($sp) 

#t112 , t130 , t129 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 456($sp) 

lw   $t2 , 452($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t131 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 460($sp) 

#t132 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 464($sp) 

#t112 , t132 , t131 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 464($sp) 

lw   $t2 , 460($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t133 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 468($sp) 

#t134 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 472($sp) 

#t112 , t134 , t133 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 472($sp) 

lw   $t2 , 468($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t135 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 476($sp) 

#t136 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 480($sp) 

#t112 , t136 , t135 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 480($sp) 

lw   $t2 , 476($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t137 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 484($sp) 

#t138 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 488($sp) 

#t112 , t138 , t137 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 488($sp) 

lw   $t2 , 484($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t139 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 492($sp) 

#t140 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 496($sp) 

#t112 , t140 , t139 , *=
lw   $t0 , 384($sp) 

lw   $t1 , 496($sp) 

lw   $t2 , 492($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t141 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 500($sp) 

#t142 , t112 , t141 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 500($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 504($sp) 

#putchar , t142 ,  , 
lw   $a0 , 504($sp) 

li   $v0 , 11 

syscall  

#t143 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 508($sp) 

#t144 , t112 , t143 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 508($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 512($sp) 

#putchar , t144 ,  , 
lw   $a0 , 512($sp) 

li   $v0 , 11 

syscall  

#t145 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 516($sp) 

#t146 , t112 , t145 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 516($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 520($sp) 

#putchar , t146 ,  , 
lw   $a0 , 520($sp) 

li   $v0 , 11 

syscall  

#t147 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 524($sp) 

#t148 , t112 , t147 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 524($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 528($sp) 

#putchar , t148 ,  , 
lw   $a0 , 528($sp) 

li   $v0 , 11 

syscall  

#t149 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 532($sp) 

#t150 , t112 , t149 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 532($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 536($sp) 

#putchar , t150 ,  , 
lw   $a0 , 536($sp) 

li   $v0 , 11 

syscall  

#t151 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 540($sp) 

#t152 , t112 , t151 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 540($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 544($sp) 

#putchar , t152 ,  , 
lw   $a0 , 544($sp) 

li   $v0 , 11 

syscall  

#t153 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 548($sp) 

#t154 , t112 , t153 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 548($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 552($sp) 

#putchar , t154 ,  , 
lw   $a0 , 552($sp) 

li   $v0 , 11 

syscall  

#t155 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 556($sp) 

#t156 , t112 , t155 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 556($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 560($sp) 

#putchar , t156 ,  , 
lw   $a0 , 560($sp) 

li   $v0 , 11 

syscall  

#t157 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 564($sp) 

#t158 , t112 , t157 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 564($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 568($sp) 

#putchar , t158 ,  , 
lw   $a0 , 568($sp) 

li   $v0 , 11 

syscall  

#t159 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 572($sp) 

#t160 , t112 , t159 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 572($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 576($sp) 

#putchar , t160 ,  , 
lw   $a0 , 576($sp) 

li   $v0 , 11 

syscall  

#t161 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 580($sp) 

#t162 , t112 , t161 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 580($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 584($sp) 

#putchar , t162 ,  , 
lw   $a0 , 584($sp) 

li   $v0 , 11 

syscall  

#t163 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 588($sp) 

#t164 , t112 , t163 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 588($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 592($sp) 

#putchar , t164 ,  , 
lw   $a0 , 592($sp) 

li   $v0 , 11 

syscall  

#t165 , 48 ,  , =
li   $t0 , 48 

sw   $t0 , 596($sp) 

#t166 , t112 , t165 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 596($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 600($sp) 

#putchar , t166 ,  , 
lw   $a0 , 600($sp) 

li   $v0 , 11 

syscall  

#t167 , 52 ,  , =
li   $t0 , 52 

sw   $t0 , 604($sp) 

#t168 , t112 , t167 , =*
lw   $t1 , 384($sp) 

lw   $t2 , 604($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 608($sp) 

#putchar , t168 ,  , 
lw   $a0 , 608($sp) 

li   $v0 , 11 

syscall  

#t169 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 612($sp) 

#putchar , t169 ,  , 
lw   $a0 , 612($sp) 

li   $v0 , 11 

syscall  

#t170 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 616($sp) 

#t171 , t170 ,  , =
lw   $t0 , 616($sp) 

sw   $t0 , 620($sp) 

#label , l9 ,  , 
l9:  

#t172 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 624($sp) 

#t173 , t171 , t172 , >=
lw   $t1 , 620($sp) 

lw   $t2 , 624($sp) 

slt   $t0 , $t1 , $t2 

beqz   $t0 , mipsLabel5 

li   $t0 , 0 

b   mipsLabel6 

mipsLabel5:  

li   $t0 , 1 

mipsLabel6:  

sw   $t0 , 628($sp) 

#if , t173 , goto , l11
lw   $t1 , 628($sp) 

bnez   $t1 , l11 

#label , l10 ,  , 
l10:  

#putint , t171 ,  , 
lw   $a0 , 620($sp) 

li   $v0 , 1 

syscall  

#t174 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 632($sp) 

#putchar , t174 ,  , 
lw   $a0 , 632($sp) 

li   $v0 , 11 

syscall  

#t175 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 636($sp) 

#t176 , t171 , t175 , +
lw   $t1 , 620($sp) 

lw   $t2 , 636($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 640($sp) 

#t171 , t176 ,  , =
lw   $t0 , 640($sp) 

sw   $t0 , 620($sp) 

#t177 , 15 ,  , =
li   $t0 , 15 

sw   $t0 , 644($sp) 

#t178 , t171 , t177 , <
lw   $t1 , 620($sp) 

lw   $t2 , 644($sp) 

slt   $t0 , $t1 , $t2 

sw   $t0 , 648($sp) 

#if , t178 , goto , l12
lw   $t1 , 648($sp) 

bnez   $t1 , l12 

#goto , l13 ,  , 
b   l13 

#label , l12 ,  , 
l12:  

#t179 , 2 ,  , =
li   $t0 , 2 

sw   $t0 , 652($sp) 

#t180 , t171 , t179 , +
lw   $t1 , 620($sp) 

lw   $t2 , 652($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 656($sp) 

#t171 , t180 ,  , =
lw   $t0 , 656($sp) 

sw   $t0 , 620($sp) 

#goto , l9 ,  , 
b   l9 

#goto , l14 ,  , 
b   l14 

#label , l13 ,  , 
l13:  

#t181 , 21 ,  , =
li   $t0 , 21 

sw   $t0 , 660($sp) 

#t171 , t181 ,  , =
lw   $t0 , 660($sp) 

sw   $t0 , 620($sp) 

#t182 , 'h' ,  , =
li   $t0 , 104 

sw   $t0 , 664($sp) 

#t183 , t182 ,  , =
lw   $t0 , 664($sp) 

sw   $t0 , 668($sp) 

#label , l14 ,  , 
l14:  

#goto , l9 ,  , 
b   l9 

#label , l11 ,  , 
l11:  

#putint , t171 ,  , 
lw   $a0 , 620($sp) 

li   $v0 , 1 

syscall  

#t184 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 672($sp) 

#putchar , t184 ,  , 
lw   $a0 , 672($sp) 

li   $v0 , 11 

syscall  

exit:
li $v0, 10 
syscall
