AREA RESET, CODE, READONLY
        ENTRY
        MOV r0, #5   ; Target
        LDR r1, =arr
        MOV r2, #0   ; Low
        MOV r3, #9   ; High
loop    CMP r2, r3
        BGT not_found
        ADD r4, r2, r3
        LSR r4, r4, #1
        LDR r5, [r1, r4, LSL #2]
        CMP r5, r0
        BEQ found
        BLT lower
        SUB r3, r4, #1
        B loop
lower   ADD r2, r4, #1
        B loop
found   ; Found logic
not_found ; Not found logic