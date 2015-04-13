# Hello, World!
.data ## Data declaration section
## String to be printed:
out_string: .asciiz "\nHello, Wd!\n"
.text ## Assembly language instructions go in text segment
main: ## Start of code section
li $a0, 10
li $v0, 9
syscall

addi $v0, $v0, 4
li $t0, 1
sw $t0, 0($v0)

lw $a0, 0($v0)
li $v0, 1
syscall
# specified in $v0
# syscall takes its arguments from $a0, $a1, ...
exit:
li $v0, 10 # terminate program
syscall
