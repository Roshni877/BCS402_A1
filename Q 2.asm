AREA RESET, CODE, READONLY
        ENTRY
        MOV r0, #0
        MOV r1, #1
        MOV r2, #10  ; Number of terms
loop    ADD r3, r0, r1
        MOV r0, r1
        MOV r1, r3
        SUB r2, r2, #1
        CMP r2, #0
        BNE loop
        END