.text
.globl main

main:
	li $t0, 1
	li $t1, 2
	move $a0, $t0
	move $a1, $t1
	addi $sp, $sp, -8
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	jal foo
	lw $t0, 0($sp)
	lw $t1, 4($sp)
	addi $sp, $sp, 8
	move $a0, $v0
	add $t0, $t0, $t1
	add $a0, $a0, $t0
	li $v0, 1
	syscall
	li $v0, 10 # exit
	syscall

foo:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	add $v0, $a0, $a1
	addi $sp, $sp, 4
	jr $ra