AREA RESET, CODE, READONLY
        ENTRY
        LDR r0, =a
        LDR r1, =b
        EOR r0, r0, r1
        EOR r1, r0, r1
        EOR r0, r0, r1
        END
a       DCD 5
b       DCD 10