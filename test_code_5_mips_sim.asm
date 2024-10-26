.data
    val1: .word 12
    val2: .word 15

.text
    lw $t0, val1         # Load val1 (12) into $t0
    lw $t1, val2         # Load val2 (15) into $t1
    addi $t2, $t0, 8     # t2 = t0 + 8 = 12 + 8 = 20
    beq $t0, $t1, equal_case  # Check if t0 == t1 (12 == 15), false, skip to sub
    sub $t3, $t0, $t1    # t3 = t0 - t1 = 12 - 15 = -3
    j end                # Jump to end
equal_case:
    add $t3, $t0, $t1    # This is skipped (for unequal case)
  
end:
