.text 
main:
addi  $sp, $sp, -48
#t0 , true ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t1 , t0 ,  , =
ld  $t0, 0($sp)
sw  $t0, 4($sp)
#t2 , t1 ,  , !
ld  $t0, 4($sp)
beqz  $t0, mipsLabel0
li  $t1, 0
b  mipsLabel1
mipsLabel0: 
li  $t1, 1
mipsLabel1: 
sw  $t1, 8($sp)
#t1 , t2 ,  , =
ld  $t0, 8($sp)
sw  $t0, 4($sp)
#t3 , 20 ,  , =
li  $t0, 20
sw  $t0, 12($sp)
#t4 , t3 ,  , -
ld  $t1, 12($sp)
sub  $t0, $zero, $t1
sw  $t0, 16($sp)
#t5 , t4 ,  , =
ld  $t0, 16($sp)
sw  $t0, 20($sp)
#t6 , t5 ,  , -
ld  $t1, 20($sp)
sub  $t0, $zero, $t1
sw  $t0, 24($sp)
#t7 , t6 ,  , =
ld  $t0, 24($sp)
sw  $t0, 28($sp)
#t8 , t7 , t5 , *
ld  $t1, 28($sp)
ld  $t2, 20($sp)
mul  $t0, $t1, $t2
sw  $t0, 32($sp)
#t7 , t8 ,  , =
ld  $t0, 32($sp)
sw  $t0, 28($sp)
#putint , t7 ,  , 
ld  $a0, 28($sp)
li  $v0, 1
syscall 
#t9 , 9 ,  , =
li  $t0, 9
sw  $t0, 36($sp)
#t10 , 8 ,  , =
li  $t0, 8
sw  $t0, 40($sp)
#t11 , t9 , t10 , -
ld  $t1, 36($sp)
ld  $t2, 40($sp)
sub  $t0, $t1, $t2
sw  $t0, 44($sp)
#t7 , t11 ,  , =
ld  $t0, 44($sp)
sw  $t0, 28($sp)
#putint , t7 ,  , 
ld  $a0, 28($sp)
li  $v0, 1
syscall 
#readint , t7 ,  , 
li  $v0, 5
syscall 
sw  $v0, 28($sp)
#putint , t7 ,  , 
ld  $a0, 28($sp)
li  $v0, 1
syscall 
li $v0, 10 
syscall