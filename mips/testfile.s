.text 
main:
addi  $sp, $sp, -16
#t0 , 1 ,  , =
li  $t0, 1
sw  $t0, 0($sp)
#t1 , 1 ,  , =
li  $t0, 1
sw  $t0, 4($sp)
#t2 , t0 , t1 , <=
ld  $t1, 0($sp)
ld  $t2, 4($sp)
slt  $t0, $t2, $t1
beqz  $t0, mipsLabel0
li  $t0, 0
b  mipsLabel1
mipsLabel0: 
li  $t0, 1
mipsLabel1: 
sw  $t0, 8($sp)
#t3 , t2 ,  , =
ld  $t0, 8($sp)
sw  $t0, 12($sp)
#putint , t3 ,  , 
ld  $a0, 12($sp)
li  $v0, 1
syscall 
li $v0, 10 
syscall