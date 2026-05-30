.data
VETOR_A: .word 3,5,9,11,13,15,17,19
VETOR_B: .word 3,5,9,96,14,23,12,30

.text
main:
    la t5 VETOR_A
    la t6 VETOR_B
    li s1,0
    li s6,0
    addi s0, zero, 0 

Loop:
    slti t0, s0, 8     
    beq  t0, zero, Exit 
    addi s0, s0, 1
    slli a1,s1,2
    add  t3, t5, a1
    add  t4, t6, a1 
    lw a5 0(t3)
    lw a6 0(t4)
     addi s1, s1, 1
    beq a5, a6 SOMA
    j Loop  


SOMA:
    addi s6,s6,1
    j    Loop  
Exit:
    nop                  
