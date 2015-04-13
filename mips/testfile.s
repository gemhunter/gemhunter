.text 
main:
addi  $sp, $sp, -24
#t0 , 1 ,  , =
ld  $s6, 0($sp)
li  $s6, 1
#t1 , t0 ,  , =
ld  $s7, 4($sp)
move  $s7, $s6
#label , l0 ,  , 
l0: 
#t2 , 10 ,  , =
ld  $s4, 8($sp)
li  $s4, 10
#t3 , t1 , t2 , <
ld  $s5, 12($sp)
slt  $s5, $s7, $s4
#ifnot , t3 , goto , l2
beqz  $s5, l2
#label , l1 ,  , 
l1: 
#putint , t1 ,  , 
move  $a0, $s7
li  $v0, 1
syscall 
#t4 , 1 ,  , =
ld  $s2, 16($sp)
li  $s2, 1
#t5 , t1 , t4 , +
ld  $s3, 20($sp)
add  $s3, $s7, $s2
#t1 , t5 ,  , =
move  $s7, $s3
#goto , l0 ,  , 
b  l0
#label , l2 ,  , 
l2: 
li $v0, 10 
syscall