.text 
main:
addi   $sp , $sp , -364 

#t0 , true ,  , =
li   $t0 , 1 

sw   $t0 , 0($sp) 

#t1 , t0 ,  , =
lw   $t0 , 0($sp) 

sw   $t0 , 4($sp) 

#t2 , 1 ,  , =
li   $t0 , 1 

sw   $t0 , 8($sp) 

#t3 , t2 ,  , =
lw   $t0 , 8($sp) 

sw   $t0 , 12($sp) 

#t4 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 16($sp) 

#t5 , t3 , t4 , <<
lw   $t1 , 12($sp) 

lw   $t2 , 16($sp) 

sllv   $t0 , $t1 , $t2 

sw   $t0 , 20($sp) 

#t3 , t5 ,  , =
lw   $t0 , 20($sp) 

sw   $t0 , 12($sp) 

#putint , t1 ,  , 
lw   $a0 , 4($sp) 

li   $v0 , 1 

syscall  

#t6 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 24($sp) 

#putchar , t6 ,  , 
lw   $a0 , 24($sp) 

li   $v0 , 11 

syscall  

#putint , t3 ,  , 
lw   $a0 , 12($sp) 

li   $v0 , 1 

syscall  

#t7 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 28($sp) 

#putchar , t7 ,  , 
lw   $a0 , 28($sp) 

li   $v0 , 11 

syscall  

#t8 , 42 ,  , =
li   $t0 , 42 

sw   $t0 , 32($sp) 

#t9 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 36($sp) 

#t10 , 10 ,  , =
li   $t0 , 10 

sw   $t0 , 40($sp) 

#t11 , t9 , t10 , -
lw   $t1 , 36($sp) 

lw   $t2 , 40($sp) 

sub   $t0 , $t1 , $t2 

sw   $t0 , 44($sp) 

#t12 , 10 ,  , =
li   $t0 , 10 

sw   $t0 , 48($sp) 

#t13 , t12 ,  , =
lw   $t0 , 48($sp) 

sw   $t0 , 52($sp) 

#t14 , 10 ,  , =
li   $t0 , 10 

sw   $t0 , 56($sp) 

#t15 , t14 ,  , -
lw   $t1 , 56($sp) 

sub   $t0 , $zero , $t1 

sw   $t0 , 60($sp) 

#t16 , 16 ,  , new
li   $a0 , 16 

li   $v0 , 9 

syscall  

sw   $v0 , 64($sp) 

#t17 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 68($sp) 

#t16 , t17 , t8 , *=
lw   $t0 , 64($sp) 

lw   $t1 , 68($sp) 

lw   $t2 , 32($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t18 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 72($sp) 

#t16 , t18 , t11 , *=
lw   $t0 , 64($sp) 

lw   $t1 , 72($sp) 

lw   $t2 , 44($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t19 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 76($sp) 

#t16 , t19 , t13 , *=
lw   $t0 , 64($sp) 

lw   $t1 , 76($sp) 

lw   $t2 , 52($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t20 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 80($sp) 

#t16 , t20 , t15 , *=
lw   $t0 , 64($sp) 

lw   $t1 , 80($sp) 

lw   $t2 , 60($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t21 , t16 ,  , =
lw   $t0 , 64($sp) 

sw   $t0 , 84($sp) 

#t22 , nil ,  , =
li   $t0 , 0 

sw   $t0 , 88($sp) 

#t23 , t22 ,  , =
lw   $t0 , 88($sp) 

sw   $t0 , 92($sp) 

#t24 , 5 ,  , =
li   $t0 , 5 

sw   $t0 , 96($sp) 

#t25 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 100($sp) 

#t26 , t24 , t25 , /
lw   $t1 , 96($sp) 

lw   $t2 , 100($sp) 

div   $t0 , $t1 , $t2 

sw   $t0 , 104($sp) 

#t27 , t26 ,  , =
lw   $t0 , 104($sp) 

sw   $t0 , 108($sp) 

#putint , t27 ,  , 
lw   $a0 , 108($sp) 

li   $v0 , 1 

syscall  

#t28 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 112($sp) 

#putchar , t28 ,  , 
lw   $a0 , 112($sp) 

li   $v0 , 11 

syscall  

#t29 , 3 ,  , =
li   $t0 , 3 

sw   $t0 , 116($sp) 

#t30 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 120($sp) 

#t31 , t29 , t30 , &
lw   $t1 , 116($sp) 

lw   $t2 , 120($sp) 

and   $t0 , $t1 , $t2 

sw   $t0 , 124($sp) 

#t32 , t31 ,  , =
lw   $t0 , 124($sp) 

sw   $t0 , 128($sp) 

#putint , t32 ,  , 
lw   $a0 , 128($sp) 

li   $v0 , 1 

syscall  

#t33 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 132($sp) 

#putchar , t33 ,  , 
lw   $a0 , 132($sp) 

li   $v0 , 11 

syscall  

#t34 , 48 ,  , new
li   $a0 , 48 

li   $v0 , 9 

syscall  

sw   $v0 , 136($sp) 

#t35 , 'n' ,  , =
li   $t0 , 110 

sw   $t0 , 140($sp) 

#t36 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 144($sp) 

#t34 , t36 , t35 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 144($sp) 

lw   $t2 , 140($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t37 , 'i' ,  , =
li   $t0 , 105 

sw   $t0 , 148($sp) 

#t38 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 152($sp) 

#t34 , t38 , t37 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 152($sp) 

lw   $t2 , 148($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t39 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 156($sp) 

#t40 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 160($sp) 

#t34 , t40 , t39 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 160($sp) 

lw   $t2 , 156($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t41 , ' ' ,  , =
li   $t0 , 32 

sw   $t0 , 164($sp) 

#t42 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 168($sp) 

#t34 , t42 , t41 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 168($sp) 

lw   $t2 , 164($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t43 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 172($sp) 

#t44 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 176($sp) 

#t34 , t44 , t43 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 176($sp) 

lw   $t2 , 172($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t45 , 'x' ,  , =
li   $t0 , 120 

sw   $t0 , 180($sp) 

#t46 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 184($sp) 

#t34 , t46 , t45 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 184($sp) 

lw   $t2 , 180($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t47 , 'a' ,  , =
li   $t0 , 97 

sw   $t0 , 188($sp) 

#t48 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 192($sp) 

#t34 , t48 , t47 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 192($sp) 

lw   $t2 , 188($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t49 , 'm' ,  , =
li   $t0 , 109 

sw   $t0 , 196($sp) 

#t50 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 200($sp) 

#t34 , t50 , t49 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 200($sp) 

lw   $t2 , 196($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t51 , 'p' ,  , =
li   $t0 , 112 

sw   $t0 , 204($sp) 

#t52 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 208($sp) 

#t34 , t52 , t51 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 208($sp) 

lw   $t2 , 204($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t53 , 'l' ,  , =
li   $t0 , 108 

sw   $t0 , 212($sp) 

#t54 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 216($sp) 

#t34 , t54 , t53 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 216($sp) 

lw   $t2 , 212($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t55 , 'e' ,  , =
li   $t0 , 101 

sw   $t0 , 220($sp) 

#t56 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 224($sp) 

#t34 , t56 , t55 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 224($sp) 

lw   $t2 , 220($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t57 , '\0' ,  , =
li   $t0 , 0 

sw   $t0 , 228($sp) 

#t58 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 232($sp) 

#t34 , t58 , t57 , *=
lw   $t0 , 136($sp) 

lw   $t1 , 232($sp) 

lw   $t2 , 228($sp) 

add   $t3 , $t0 , $t1 

sw   $t2 , 0($t3) 

#t59 , 0 ,  , =
li   $t0 , 0 

sw   $t0 , 236($sp) 

#t60 , t34 , t59 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 236($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 240($sp) 

#putchar , t60 ,  , 
lw   $a0 , 240($sp) 

li   $v0 , 11 

syscall  

#t61 , 4 ,  , =
li   $t0 , 4 

sw   $t0 , 244($sp) 

#t62 , t34 , t61 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 244($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 248($sp) 

#putchar , t62 ,  , 
lw   $a0 , 248($sp) 

li   $v0 , 11 

syscall  

#t63 , 8 ,  , =
li   $t0 , 8 

sw   $t0 , 252($sp) 

#t64 , t34 , t63 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 252($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 256($sp) 

#putchar , t64 ,  , 
lw   $a0 , 256($sp) 

li   $v0 , 11 

syscall  

#t65 , 12 ,  , =
li   $t0 , 12 

sw   $t0 , 260($sp) 

#t66 , t34 , t65 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 260($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 264($sp) 

#putchar , t66 ,  , 
lw   $a0 , 264($sp) 

li   $v0 , 11 

syscall  

#t67 , 16 ,  , =
li   $t0 , 16 

sw   $t0 , 268($sp) 

#t68 , t34 , t67 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 268($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 272($sp) 

#putchar , t68 ,  , 
lw   $a0 , 272($sp) 

li   $v0 , 11 

syscall  

#t69 , 20 ,  , =
li   $t0 , 20 

sw   $t0 , 276($sp) 

#t70 , t34 , t69 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 276($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 280($sp) 

#putchar , t70 ,  , 
lw   $a0 , 280($sp) 

li   $v0 , 11 

syscall  

#t71 , 24 ,  , =
li   $t0 , 24 

sw   $t0 , 284($sp) 

#t72 , t34 , t71 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 284($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 288($sp) 

#putchar , t72 ,  , 
lw   $a0 , 288($sp) 

li   $v0 , 11 

syscall  

#t73 , 28 ,  , =
li   $t0 , 28 

sw   $t0 , 292($sp) 

#t74 , t34 , t73 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 292($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 296($sp) 

#putchar , t74 ,  , 
lw   $a0 , 296($sp) 

li   $v0 , 11 

syscall  

#t75 , 32 ,  , =
li   $t0 , 32 

sw   $t0 , 300($sp) 

#t76 , t34 , t75 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 300($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 304($sp) 

#putchar , t76 ,  , 
lw   $a0 , 304($sp) 

li   $v0 , 11 

syscall  

#t77 , 36 ,  , =
li   $t0 , 36 

sw   $t0 , 308($sp) 

#t78 , t34 , t77 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 308($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 312($sp) 

#putchar , t78 ,  , 
lw   $a0 , 312($sp) 

li   $v0 , 11 

syscall  

#t79 , 40 ,  , =
li   $t0 , 40 

sw   $t0 , 316($sp) 

#t80 , t34 , t79 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 316($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 320($sp) 

#putchar , t80 ,  , 
lw   $a0 , 320($sp) 

li   $v0 , 11 

syscall  

#t81 , 44 ,  , =
li   $t0 , 44 

sw   $t0 , 324($sp) 

#t82 , t34 , t81 , =*
lw   $t1 , 136($sp) 

lw   $t2 , 324($sp) 

add   $t3 , $t1 , $t2 

lw   $t0 , 0($t3) 

sw   $t0 , 328($sp) 

#putchar , t82 ,  , 
lw   $a0 , 328($sp) 

li   $v0 , 11 

syscall  

#t83 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 332($sp) 

#putchar , t83 ,  , 
lw   $a0 , 332($sp) 

li   $v0 , 11 

syscall  

#putint , t1 ,  , 
lw   $a0 , 4($sp) 

li   $v0 , 1 

syscall  

#t84 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 336($sp) 

#putchar , t84 ,  , 
lw   $a0 , 336($sp) 

li   $v0 , 11 

syscall  

#t85 , 5 ,  , =
li   $t0 , 5 

sw   $t0 , 340($sp) 

#t27 , t85 ,  , =
lw   $t0 , 340($sp) 

sw   $t0 , 108($sp) 

#putint , t27 ,  , 
lw   $a0 , 108($sp) 

li   $v0 , 1 

syscall  

#t86 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 344($sp) 

#putchar , t86 ,  , 
lw   $a0 , 344($sp) 

li   $v0 , 11 

syscall  

#t87 , 41 ,  , =
li   $t0 , 41 

sw   $t0 , 348($sp) 

#t27 , t87 ,  , =
lw   $t0 , 348($sp) 

sw   $t0 , 108($sp) 

#putint , t27 ,  , 
lw   $a0 , 108($sp) 

li   $v0 , 1 

syscall  

#t88 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 352($sp) 

#putchar , t88 ,  , 
lw   $a0 , 352($sp) 

li   $v0 , 11 

syscall  

#t89 , 51 ,  , =
li   $t0 , 51 

sw   $t0 , 356($sp) 

#t27 , t89 ,  , =
lw   $t0 , 356($sp) 

sw   $t0 , 108($sp) 

#putint , t27 ,  , 
lw   $a0 , 108($sp) 

li   $v0 , 1 

syscall  

#t90 , '\n' ,  , =
li   $t0 , 10 

sw   $t0 , 360($sp) 

#putchar , t90 ,  , 
lw   $a0 , 360($sp) 

li   $v0 , 11 

syscall  

exit:
li $v0, 10 
syscall
