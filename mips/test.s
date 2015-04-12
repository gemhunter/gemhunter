# Hello, World!
.data ## Data declaration section
## String to be printed:
out_string: .asciiz "\nHello, Wd!\n"
.text ## Assembly language instructions go in text segment
main: ## Start of code section
addi $sp, $sp, -8
li $s0, 8
sw $s0, 4($sp)
ld $a0, 4($sp)

li $v0, 1 # system call code for printing string = 4

	#la $a0, out_string # load address of string to be printed into $a0
syscall # call operating system to perform operation

li $s0, 9
sw $s0, 0($sp)
ld $a0, 0($sp)

li $v0, 1 # system call code for printing string = 4

	#la $a0, out_string # load address of string to be printed into $a0
syscall # call operating system to perform operation
# specified in $v0
# syscall takes its arguments from $a0, $a1, ...
li $v0, 10 # terminate program
syscall
