AREA RESET, CODE, READONLY
        ENTRY
        MOV r0, #7   ; Number to check
        MOV r1, #2   ; Start divisor
loop    CMP r1, r0
        BGE prime
        MOV r2, r0
        UDIV r3, r2, r1
        MLA r3, r3, r1, r4
        CMP r3, r2
        BEQ not_prime
        ADD r1, r1, #1
        B loop
prime   ; Prime logic
        B done
not_prime ; Not prime logic
done    END