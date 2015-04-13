# Hello, World!
.data ## Data declaration section
## String to be printed:
out_string: .asciiz "\nHello, Wd!\n"
.text ## Assembly language instructions go in text segment
main: ## Start of code section
addi $sp, $sp, -8

#sbrk 10
#10 size string read
#print the string
li $a0,10
li $v0, 9 
syscall
move $a0, $v0

li $a1,10
li $v0, 8 
syscall

li $v0, 4
syscall


# specified in $v0
# syscall takes its arguments from $a0, $a1, ...
exit:
li $v0, 10 # terminate program
syscall
