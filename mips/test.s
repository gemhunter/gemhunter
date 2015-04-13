# Hello, World!
.data ## Data declaration section
## String to be printed:
out_string: .asciiz "\nHello, Wd!\n"
.text ## Assembly language instructions go in text segment
main: ## Start of code section
addi $sp, $sp, -8
sw $zero, 4($sp)
move $fp, $sp
addi $sp, $sp, -8
ld $a0, 4($fp)
li $v0, 1
syscall

# specified in $v0
# syscall takes its arguments from $a0, $a1, ...
exit:
li $v0, 10 # terminate program
syscall
