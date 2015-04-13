.text 
main:
addi  $sp, $sp, -32
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
#putint , t7 ,  , 
ld  $a0, 28($sp)
li  $v0, 1
syscall 
li $v0, 10 
syscall