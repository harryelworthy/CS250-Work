.text
.globl main

main:
	li $t0, 1
	li $t1, 2
	li $s0, 5
	li $s1, 6
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
	add $s0, $s0, $s1
	add $t0, $t0, $s0
	add $a0, $a0, $t0
	li $v0, 1
	syscall
	li $v0, 10 # exit
	syscall

foo:
	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	add $v0, $a0, $a1
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	addi $sp, $sp, 12
	jr $ra