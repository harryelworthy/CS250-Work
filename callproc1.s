.text
.globl main

main:
	li $a0, 1
	li $a1, 2
	jal foo
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10 # exit
	syscall

foo:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	add $v0, $a0, $a1
	addi $sp, $sp, 32
	jr $ra