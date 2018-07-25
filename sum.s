main:
    li $v0, 1 #int output
    li $s0, 0 #init value
    li $s1, 11 #final value
    
again:
    beq $s0, $s1, loop_end #check if at final
    move $a0, $s0 #put value in printable
    syscall #print
    addi $s0, $s0, 1 #add 1 to value
    b again   #back to beginning of loop

loop_end:
    jr $ra #end program