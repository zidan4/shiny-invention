.global _start

_start:
    mov r0, #10     ; Initialize loop counter (r0) to 10

loop_start:
    cmp r0, #0      ; Compare r0 with 0
    ble loop_end    ; If r0 <= 0, branch to loop_end (end the loop)

    ; Do something here (e.g., increment another register)
    add r1, r1, #1  ; Increment r1 by 1

    sub r0, r0, #1  ; Decrement loop counter (r0)
    b loop_start    ; Branch back to loop_start

loop_end:
    ; Exit program
    mov r7, #1      ; Syscall number for exit
    swi 0           ; Call the kernel
