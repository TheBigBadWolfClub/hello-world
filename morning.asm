;---------------------------------------------------------------
; brew install nasm
; nasm -f macho64 morning.asm && ld -macosx_version_min 10.7.0  -o morning morning.o && ./morning
;
; FIX IT
;---------------------------------------------------------------


global start


section .text

start:
    mov     rax, 0x2000004 ; write
    mov     rdi, 1 ; stdout
    mov     rsi, msg
    mov     rdx, msg.len
    mov     rdx, 0
    syscall

    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall


section .data

msg:    db      "Good morning!", 10
.len:   equ     $ - msg
