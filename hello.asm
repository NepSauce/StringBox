; hello.asm — minimal Hello World using printf

        extern printf
        global main        ; entry point for C runtime

        section .data
msg:    db "Hello, World!", 10, 0   ; string with newline + null terminator

        section .text
main:
        sub     rsp, 40             ; align stack (Windows x64 ABI requires 16-byte alignment + shadow space)
        lea     rcx, [rel msg]      ; first argument (RCX) = pointer to string
        call    printf
        add     rsp, 40
        ret
