AREA RESET, CODE, READONLY
        ENTRY
        LDR r0, =src
        LDR r1, =dest
        LDMIA r0!, {r2-r6}
        STMIA r1!, {r2-r6}
        END
src     DCD 10, 20, 30, 40, 50
dest    DCD 0, 0, 0, 0, 0