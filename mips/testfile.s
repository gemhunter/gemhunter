.text 
main:
addi  $sp, $sp, -24
#t0 , true ,  , =
ld  $s6, 0($sp)
li  $s6, 1
#t1 , t0 ,  , =
ld  $s7, 4($sp)
move  $s7, $s6
#t2 , true ,  , =
ld  $s4, 8($sp)
li  $s4, 1
#t3 , t2 ,  , =
ld  $s5, 12($sp)
move  $s5, $s4
#ifnot , t1 , goto , l0
beqz  $s7, l0
#t4 , t3 ,  , =
ld  $s2, 16($sp)
move  $s2, $s5
#goto , l1 ,  , 
b  l1
#label , l0 ,  , 
l0: 
#t4 , false ,  , =
li  $s2, 0
#label , l1 ,  , 
l1: 
#t5 , t4 ,  , =
ld  $s3, 20($sp)
move  $s3, $s2
move $a0, $s3
li $v0, 1 
syscall
li $v0, 10 
syscall