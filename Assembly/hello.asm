;================================================================
;   Author: Bobrossrtx
;   Name: hello.asm
;   Des: Hello world program written in assembly
;================================================================

bits 64
default rel

segment .data
    msg db "Hello World", 0xd, 0xa, 0

segment .text
global main
extern ExitProcess

extern printf

main:
    push      rbp
    mov       rbp, rsp
    sub        rsp, 32

    lea         rcx, [msg]
    call        printf

    xor         rax, rax
    call ExitProcess