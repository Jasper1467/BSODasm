bits 16
org 0x7c00

.section .text

.global start

start:
    cli                   ; Disable interrupts

    mov ax, 0x9000        ; Set up our stack space
    mov ss, ax
    mov sp, 0xffff

    sti                   ; Enable interrupts

    ; Trigger a BSOD by executing an invalid instruction
    ud2                   ; Use the "undefined instruction" (UD2) opcode to trigger an exception

    jmp start             ; Jump back to the beginning, creating an infinite loop

; The code above sets up the necessary environment and prepares for the BSOD

; This section triggers the BSOD by executing an invalid instruction
; The "undefined instruction" (UD2) opcode is used to generate an exception and force a BSOD

; The code jumps back to the beginning to create an infinite loop, causing the BSOD to persist