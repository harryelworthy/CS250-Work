.text
.align 2
.globl main

main:
	li $v0, 4 #print mode
	la $a0, promptname
	syscall #ask

	li $v0, 8 #get string mode
	la $a0, name
	li $a1, 10 #size of buffer
	syscall

	li $v0, 4 #print mode
	la $a0, promptage
	syscall	

	li $v0, 5 #read int mode
	syscall
	move $s0, $v0

	li $s1, 2066
	sub $s1, $s1, $s0

	li $v0, 4
	la $a0, name
	syscall
	la $a0, midstring
	syscall
	li $v0, 1
	move $a0, $s1
	syscall

	li $v0, 10
	syscall


.data
.align 2
promptname: .asciiz "Name:\n"
promptage: .asciiz "Age:\n"
midstring: .asciiz " will turn 50 years old in "
name: .word 0 0