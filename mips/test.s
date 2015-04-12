# Hello, World!
.data ## Data declaration section
## String to be printed:
out_string: .asciiz "\nHello, Wd!\n"
.text ## Assembly language instructions go in text segment
main: ## Start of code section
addi $sp, $sp, -8
li $s0, 'p'
sw $s0, 4($sp)
ld $a0, 4($sp)

li $v0, 11 # system call code for printing string = 4

	#la $a0, out_string # load address of string to be printed into $a0
syscall # call operating system to perform operation

li $s0, 7
li $s1, -8
slt $s3, $s0, $s1
sub $s0,$zero,$s0
sw $s3, 0($sp)
ld $a0, 0($sp)
li $v0, 1 
syscall
# specified in $v0
# syscall takes its arguments from $a0, $a1, ...
li $v0, 10 # terminate program
syscall
