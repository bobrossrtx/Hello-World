;================================================================
;   Auth: 	Bobrossrtx
;   Name: 	hello.asm
;   Desc:	Hello world program written in assembly
;================================================================

global _start

section .text:

_start:
    mov eax, 0x4		;Use write syscall
    mov ecx, 1			;Use stdout as fd
    mov ecx, message		;Use message as buffer
    mov edx, message_length	;Supplying message length
    int 0x80			;Invoke syscall

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
    message: 		db "Hello World", 0xA
    message_length	equ $-message
