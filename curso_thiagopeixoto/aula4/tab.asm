; nasm tab.asm -o tab.o -felf64
; ld tab.o -o tab -lc -I /lib64/ld-linux-x86-64.so.2

extern printf

section .data
string:
	db "%d", 0x0a, 0x00

section .text
global _start
_start:
	mov	rcx, 0x01	
loop:
	push rcx
	mov	rdi, string
	mov	rsi, rcx
	xor	rax, rax
	call printf
	pop	rcx
	inc	rcx
	cmp	rcx, 11
	jnz	loop

	mov	rax, 0x3c
	mov	rdi, 0x00
	syscall
