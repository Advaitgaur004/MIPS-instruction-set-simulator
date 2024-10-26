.data
    num1: .word 8
    num2: .word 3

.text
    lw $a0, num1        # Load the value of num1 into $a0
    lw $a1, num2        # Load the value of num2 into $a1
    addi $a2, $a0, 5    # Add 5 to the value in $a0 and store in $a2
    beq $a0, $a1, case_equal  # Branch if num1 equals num2
    sub $t0, $a0, $a1   # Subtract num2 from num1, result in $t0
    j end_program        # Jump to end_program
case_equal:
    add $t0, $a0, $a1   # If equal, add num1 and num2, result in $t0

end_program: