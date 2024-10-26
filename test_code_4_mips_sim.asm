.data
    num1: .word -5
    num2: .word 25
.text
    lw $t0, num1
    lw $t1, num2
    add $t2, $t0, $t1    # t2 = -5 + 25 = 20
    sub $t3, $t1, $t0    # t3 = 25 - (-5) = 30
    and $t4, $t0, $t1    # t4 = -5 & 25 = 25 (bitwise AND)
    or  $t5, $t0, $t1    # t5 = -5 | 25 = -5 (bitwise OR)
    slt $t6, $t0, $t1    # t6 = 1 (-5 is less than 25)
