.text 
main:
addi  $sp, $sp, -12
#t0 , false ,  , =
ld  $s6, 0($sp)
li  $s6, 0
#t1 , false ,  , =
ld  $s7, 4($sp)
li  $s7, 0
#t2 , t0 , t1 , !=
ld  $s4, 8($sp)
slt  $s4, $s6, $s7
beqz  $s4, mipsLabel0
li  $s4, 1
b  mipsLabel1
mipsLabel0: 
slt  $s4, $s7, $s6
beqz  $s4, mipsLabel2
li  $s4, 1
b  mipsLabel1
mipsLabel2: 
li  $s4, 0
mipsLabel1: 
li $v0, 10 
syscall