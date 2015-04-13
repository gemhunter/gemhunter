.text 
main:
addi  $sp, $sp, -16
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
#t9 , 1 ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t10 , t9 ,  , =
lw  $t0, 0($sp)
sw  $t0, 4($sp)
#readint , t10 ,  , 
li  $v0, 5
syscall 
sw  $v0, 4($sp)
#param , t10 ,  , 
lw  $t0, 4($sp)
sw  $t0, -4($sp)
#t11 , m0 ,  , call
addi  $sp, $sp, -4
addi  $sp, $sp, -4
sw  $fp, 0($sp)
addi  $sp, $sp, -4
sw  $ra, 0($sp)
move  $fp, $sp
jal  m0
lw  $ra, 0($sp)
addi  $sp, $sp, 12
sw  $v0, 8($sp)
#putint , t11 ,  , 
lw  $a0, 8($sp)
li  $v0, 1
syscall 
#t12 , '\n' ,  , =
li  $t0, 10
sw  $t0, 12($sp)
#putchar , t12 ,  , 
lw  $a0, 12($sp)
li  $v0, 11
syscall 
exit:
li $v0, 10 
syscall