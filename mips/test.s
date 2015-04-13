# Hello, World!
.data ## Data declaration section
## String to be printed:
out_string: .asciiz "Held"
.text ## Assembly language instructions go in text segment
main: ## Start of code section

la $t0, out_string

lb $a0, 3($t0)
li $v0, 11
syscall
# specified in $v0
# syscall takes its arguments from $a0, $a1, ...
exit:
li $v0, 10 # terminate program
syscall
