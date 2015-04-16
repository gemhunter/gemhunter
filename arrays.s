.text 
main:
addi   $sp , $sp , 0 

#goto , l0 ,  , 
b   l0 

#label , m0 ,  , 
m0:  

#methodStarts , m0 ,  , 
addi   $sp , $sp , -24 

#t0 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t1 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t2 ,  ,  , getarg
lw   $t0 , 16($fp) 

sw   $t0 , 8($sp) 

#t3 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 12($sp) 

#t2 , t3 , t1 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 12($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t4 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 16($sp) 

#t2 , t4 , t0 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 16($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t2 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t5 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 20($sp) 

#return , t5 ,  , 
lw   $v0 , 20($sp) 

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
addi   $sp , $sp , -20 

#t6 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t7 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t8 ,  ,  , getarg
lw   $t0 , 16($fp) 

sw   $t0 , 8($sp) 

#param , t8 ,  , 
lw   $t0 , 8($sp) 

sw   $t0 , -4($sp) 

#param , t7 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -8($sp) 

#param , t6 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -12($sp) 

#t9 , m0 ,  , call
addi   $sp , $sp , -12 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 20 

sw   $v0 , 12($sp) 

#return , t8 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t10 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 16($sp) 

#return , t10 ,  , 
lw   $v0 , 16($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l1 ,  , 
l1:  

#goto , l2 ,  , 
b   l2 

#label , m2 ,  , 
m2:  

#methodStarts , m2 ,  , 
addi   $sp , $sp , -40 

#t11 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t12 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t13 ,  ,  , getarg
lw   $t0 , 16($fp) 

sw   $t0 , 8($sp) 

#t14 ,  ,  , getarg
lw   $t0 , 20($fp) 

sw   $t0 , 12($sp) 

#t15 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 16($sp) 

#t16 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 20($sp) 

#t15 , t16 , t13 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 20($sp) 

lw   $t2 , 8($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t17 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 24($sp) 

#t15 , t17 , t12 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 4($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t18 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 28($sp) 

#t15 , t18 , t11 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 28($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t19 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 32($sp) 

#t14 , t19 , t15 , *=
lw   $t0 , 12($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t14 ,  , 
lw   $v0 , 12($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t20 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 36($sp) 

#return , t20 ,  , 
lw   $v0 , 36($sp) 

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
addi   $sp , $sp , -360 

#t21 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t22 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t23 ,  ,  , getarg
lw   $t0 , 16($fp) 

sw   $t0 , 8($sp) 

#param , t23 ,  , 
lw   $t0 , 8($sp) 

sw   $t0 , -4($sp) 

#param , t22 ,  , 
lw   $t0 , 4($sp) 

sw   $t0 , -8($sp) 

#param , t21 ,  , 
lw   $t0 , 0($sp) 

sw   $t0 , -12($sp) 

#t24 , m0 ,  , call
addi   $sp , $sp , -12 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m0 

lw   $ra , 0($sp) 

addi   $sp , $sp , 20 

sw   $v0 , 12($sp) 

#t25 , 32 ,  , new
li   $a0 , 32 

li   $v0 , 9 

syscall  

sw   $v0 , 16($sp) 

#t26 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 20($sp) 

#t27 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 24($sp) 

#t25 , t27 , t26 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 24($sp) 

lw   $t2 , 20($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t28 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 28($sp) 

#t29 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 32($sp) 

#t25 , t29 , t28 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 28($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t30 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 36($sp) 

#t31 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 40($sp) 

#t25 , t31 , t30 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 40($sp) 

lw   $t2 , 36($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t32 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 44($sp) 

#t33 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 48($sp) 

#t25 , t33 , t32 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 48($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t34 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 52($sp) 

#t35 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 56($sp) 

#t25 , t35 , t34 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t36 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 60($sp) 

#t37 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 64($sp) 

#t25 , t37 , t36 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 64($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t38 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 68($sp) 

#t39 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 72($sp) 

#t25 , t39 , t38 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t40 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 76($sp) 

#t41 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 80($sp) 

#t25 , t41 , t40 , *=
lw   $t0 , 16($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 76($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t42 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 84($sp) 

#t43 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 88($sp) 

#param , t43 ,  , 
lw   $t0 , 88($sp) 

sw   $t0 , -4($sp) 

#param , t25 ,  , 
lw   $t0 , 16($sp) 

sw   $t0 , -8($sp) 

#param , t42 ,  , 
lw   $t0 , 84($sp) 

sw   $t0 , -12($sp) 

#t44 , m1 ,  , call
addi   $sp , $sp , -12 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 20 

sw   $v0 , 92($sp) 

#t45 , t44 ,  , =
lw   $t0 , 92($sp) 

sw   $t0 , 96($sp) 

#t46 , 32 ,  , new
li   $a0 , 32 

li   $v0 , 9 

syscall  

sw   $v0 , 100($sp) 

#t47 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 104($sp) 

#t48 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 108($sp) 

#t46 , t48 , t47 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 108($sp) 

lw   $t2 , 104($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t49 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 112($sp) 

#t50 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 116($sp) 

#t46 , t50 , t49 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 116($sp) 

lw   $t2 , 112($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t51 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 120($sp) 

#t52 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 124($sp) 

#t46 , t52 , t51 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 124($sp) 

lw   $t2 , 120($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t53 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 128($sp) 

#t54 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 132($sp) 

#t46 , t54 , t53 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 132($sp) 

lw   $t2 , 128($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t55 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 136($sp) 

#t56 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 140($sp) 

#t46 , t56 , t55 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 140($sp) 

lw   $t2 , 136($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t57 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 144($sp) 

#t58 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 148($sp) 

#t46 , t58 , t57 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 148($sp) 

lw   $t2 , 144($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t59 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 152($sp) 

#t60 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 156($sp) 

#t46 , t60 , t59 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 156($sp) 

lw   $t2 , 152($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t61 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 160($sp) 

#t62 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 164($sp) 

#t46 , t62 , t61 , *=
lw   $t0 , 100($sp) 

lw   $t1 , 164($sp) 

lw   $t2 , 160($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t63 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 168($sp) 

#t64 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 172($sp) 

#param , t64 ,  , 
lw   $t0 , 172($sp) 

sw   $t0 , -4($sp) 

#param , t46 ,  , 
lw   $t0 , 100($sp) 

sw   $t0 , -8($sp) 

#param , t63 ,  , 
lw   $t0 , 168($sp) 

sw   $t0 , -12($sp) 

#t65 , m1 ,  , call
addi   $sp , $sp , -12 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 20 

sw   $v0 , 176($sp) 

#t66 , t65 ,  , =
lw   $t0 , 176($sp) 

sw   $t0 , 180($sp) 

#t67 , 32 ,  , new
li   $a0 , 32 

li   $v0 , 9 

syscall  

sw   $v0 , 184($sp) 

#t68 , 'd' ,  , =
li   $t0 , 100 

sw   $t0 , 188($sp) 

#t69 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 192($sp) 

#t67 , t69 , t68 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 192($sp) 

lw   $t2 , 188($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t70 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 196($sp) 

#t71 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 200($sp) 

#t67 , t71 , t70 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 200($sp) 

lw   $t2 , 196($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t72 , 'f' ,  , =
li   $t0 , 102 

sw   $t0 , 204($sp) 

#t73 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 208($sp) 

#t67 , t73 , t72 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 208($sp) 

lw   $t2 , 204($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t74 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 212($sp) 

#t75 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 216($sp) 

#t67 , t75 , t74 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 216($sp) 

lw   $t2 , 212($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t76 , 'u' ,  , =
li   $t0 , 117 

sw   $t0 , 220($sp) 

#t77 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 224($sp) 

#t67 , t77 , t76 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 224($sp) 

lw   $t2 , 220($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t78 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 228($sp) 

#t79 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 232($sp) 

#t67 , t79 , t78 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 232($sp) 

lw   $t2 , 228($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t80 , 't' ,  , =
li   $t0 , 116 

sw   $t0 , 236($sp) 

#t81 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 240($sp) 

#t67 , t81 , t80 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 240($sp) 

lw   $t2 , 236($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t82 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 244($sp) 

#t83 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 248($sp) 

#t67 , t83 , t82 , *=
lw   $t0 , 184($sp) 

lw   $t1 , 248($sp) 

lw   $t2 , 244($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t84 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 252($sp) 

#t85 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 256($sp) 

#param , t85 ,  , 
lw   $t0 , 256($sp) 

sw   $t0 , -4($sp) 

#param , t67 ,  , 
lw   $t0 , 184($sp) 

sw   $t0 , -8($sp) 

#param , t84 ,  , 
lw   $t0 , 252($sp) 

sw   $t0 , -12($sp) 

#t86 , m1 ,  , call
addi   $sp , $sp , -12 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m1 

lw   $ra , 0($sp) 

addi   $sp , $sp , 20 

sw   $v0 , 260($sp) 

#t87 , t86 ,  , =
lw   $t0 , 260($sp) 

sw   $t0 , 264($sp) 

#t88 , 4 ,  , new
li   $a0 , 4 

li   $v0 , 9 

syscall  

sw   $v0 , 268($sp) 

#param , t88 ,  , 
lw   $t0 , 268($sp) 

sw   $t0 , -4($sp) 

#param , t45 ,  , 
lw   $t0 , 96($sp) 

sw   $t0 , -8($sp) 

#param , t66 ,  , 
lw   $t0 , 180($sp) 

sw   $t0 , -12($sp) 

#param , t87 ,  , 
lw   $t0 , 264($sp) 

sw   $t0 , -16($sp) 

#t89 , m2 ,  , call
addi   $sp , $sp , -16 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 24 

sw   $v0 , 272($sp) 

#t90 , t89 ,  , =
lw   $t0 , 272($sp) 

sw   $t0 , 276($sp) 

#t91 , 4 ,  , new
li   $a0 , 4 

li   $v0 , 9 

syscall  

sw   $v0 , 280($sp) 

#param , t91 ,  , 
lw   $t0 , 280($sp) 

sw   $t0 , -4($sp) 

#param , t45 ,  , 
lw   $t0 , 96($sp) 

sw   $t0 , -8($sp) 

#param , t66 ,  , 
lw   $t0 , 180($sp) 

sw   $t0 , -12($sp) 

#param , t87 ,  , 
lw   $t0 , 264($sp) 

sw   $t0 , -16($sp) 

#t92 , m2 ,  , call
addi   $sp , $sp , -16 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 24 

sw   $v0 , 284($sp) 

#t93 , t92 ,  , =
lw   $t0 , 284($sp) 

sw   $t0 , 288($sp) 

#t94 , 4 ,  , new
li   $a0 , 4 

li   $v0 , 9 

syscall  

sw   $v0 , 292($sp) 

#param , t94 ,  , 
lw   $t0 , 292($sp) 

sw   $t0 , -4($sp) 

#param , t45 ,  , 
lw   $t0 , 96($sp) 

sw   $t0 , -8($sp) 

#param , t66 ,  , 
lw   $t0 , 180($sp) 

sw   $t0 , -12($sp) 

#param , t87 ,  , 
lw   $t0 , 264($sp) 

sw   $t0 , -16($sp) 

#t95 , m2 ,  , call
addi   $sp , $sp , -16 

addi   $sp , $sp , -4 

sw   $fp , 0($sp) 

addi   $sp , $sp , -4 

sw   $ra , 0($sp) 

move   $fp , $sp 

jal   m2 

lw   $ra , 0($sp) 

addi   $sp , $sp , 24 

sw   $v0 , 296($sp) 

#t96 , t95 ,  , =
lw   $t0 , 296($sp) 

sw   $t0 , 300($sp) 

#t97 , false ,  , =
li   $t0 , 0 

sw   $t0 , 304($sp) 

#t98 , false ,  , =
li   $t0 , 0 

sw   $t0 , 308($sp) 

#t99 , false ,  , =
li   $t0 , 0 

sw   $t0 , 312($sp) 

#t100 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 316($sp) 

#t101 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 320($sp) 

#t100 , t101 , t97 , *=
lw   $t0 , 316($sp) 

lw   $t1 , 320($sp) 

lw   $t2 , 304($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t102 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 324($sp) 

#t100 , t102 , t98 , *=
lw   $t0 , 316($sp) 

lw   $t1 , 324($sp) 

lw   $t2 , 308($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t103 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 328($sp) 

#t100 , t103 , t99 , *=
lw   $t0 , 316($sp) 

lw   $t1 , 328($sp) 

lw   $t2 , 312($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t104 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 332($sp) 

#t23 , t104 , t100 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 332($sp) 

lw   $t2 , 316($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t105 , 12 ,  , new
li   $a0 , 12 

li   $v0 , 9 

syscall  

sw   $v0 , 336($sp) 

#t106 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 340($sp) 

#t105 , t106 , t90 , *=
lw   $t0 , 336($sp) 

lw   $t1 , 340($sp) 

lw   $t2 , 276($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t107 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 344($sp) 

#t105 , t107 , t93 , *=
lw   $t0 , 336($sp) 

lw   $t1 , 344($sp) 

lw   $t2 , 288($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t108 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 348($sp) 

#t105 , t108 , t96 , *=
lw   $t0 , 336($sp) 

lw   $t1 , 348($sp) 

lw   $t2 , 300($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t109 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 352($sp) 

#t23 , t109 , t105 , *=
lw   $t0 , 8($sp) 

lw   $t1 , 352($sp) 

lw   $t2 , 336($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#return , t23 ,  , 
lw   $v0 , 8($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t110 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 356($sp) 

#return , t110 ,  , 
lw   $v0 , 356($sp) 

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
addi   $sp , $sp , -116 

#t111 ,  ,  , getarg
lw   $t0 , 8($fp) 

sw   $t0 , 0($sp) 

#t112 ,  ,  , getarg
lw   $t0 , 12($fp) 

sw   $t0 , 4($sp) 

#t113 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 8($sp) 

#t114 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 12($sp) 

#t116 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 16($sp) 

#t115 , t112 , t116 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 16($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 20($sp) 

#t117 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 24($sp) 

#t118 , 8 ,  , new
li   $a0 , 8 

li   $v0 , 9 

syscall  

sw   $v0 , 28($sp) 

#t119 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 32($sp) 

#t118 , t119 , t114 , *=
lw   $t0 , 28($sp) 

lw   $t1 , 32($sp) 

lw   $t2 , 12($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t120 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 36($sp) 

#t118 , t120 , t117 , *=
lw   $t0 , 28($sp) 

lw   $t1 , 36($sp) 

lw   $t2 , 24($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#label , l5 ,  , 
l5:  

#t124 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 40($sp) 

#t125 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 44($sp) 

#t122 , t118 , t124 , =*
lw   $t1 , 28($sp) 

lw   $t2 , 40($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 48($sp) 

#t123 , t118 , t125 , =*
lw   $t1 , 28($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 52($sp) 

#t121 , t122 , t113 , +
lw   $t1 , 48($sp) 

lw   $t2 , 8($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 56($sp) 

#t126 , t121 , t123 , >
lw   $t1 , 56($sp) 

lw   $t2 , 52($sp) 

slt   $t0 , $t2 , $t1 

sw   $t0 , 60($sp) 

#if , t126 , goto , l7
lw   $t1 , 60($sp) 

bnez   $t1 , l7 

#t127 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 64($sp) 

#t113 , t113 , t127 , +
lw   $t1 , 8($sp) 

lw   $t2 , 64($sp) 

add   $t0 , $t1 , $t2 

sw   $t0 , 8($sp) 

#label , l6 ,  , 
l6:  

#t129 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 68($sp) 

#t128 , t112 , t129 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 68($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 72($sp) 

#t130 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 76($sp) 

#t131 , t121 , t130 , *
lw   $t1 , 56($sp) 

lw   $t2 , 76($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 80($sp) 

#t132 , t128 , t131 , =*
lw   $t1 , 72($sp) 

lw   $t2 , 80($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 84($sp) 

#if , t132 , goto , l8
lw   $t1 , 84($sp) 

bnez   $t1 , l8 

#goto , l9 ,  , 
b   l9 

#label , l8 ,  , 
l8:  

#t134 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 88($sp) 

#t133 , t112 , t134 , =*
lw   $t1 , 4($sp) 

lw   $t2 , 88($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 92($sp) 

#t135 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 96($sp) 

#t136 , t121 , t135 , *
lw   $t1 , 56($sp) 

lw   $t2 , 96($sp) 

mul   $t0 , $t1 , $t2 

sw   $t0 , 100($sp) 

#t133 , t136 , t111 , *=
lw   $t0 , 92($sp) 

lw   $t1 , 100($sp) 

lw   $t2 , 0($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t137 , true ,  , =
li   $t0 , 1 

sw   $t0 , 104($sp) 

#return , t137 ,  , 
lw   $v0 , 104($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#goto , l10 ,  , 
b   l10 

#label , l9 ,  , 
l9:  

#label , l10 ,  , 
l10:  

#goto , l5 ,  , 
b   l5 

#label , l7 ,  , 
l7:  

#t138 , false ,  , =
li   $t0 , 0 

sw   $t0 , 108($sp) 

#return , t138 ,  , 
lw   $v0 , 108($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#t139 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 112($sp) 

#return , t139 ,  , 
lw   $v0 , 112($sp) 

move   $sp , $fp 

lw   $fp , 4($fp) 

jr   $ra 

#methodEnds ,  ,  , 
#label , l4 ,  , 
l4:  

exit:
li $v0, 10 
syscall
