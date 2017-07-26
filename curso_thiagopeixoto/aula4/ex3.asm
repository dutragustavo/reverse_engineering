; nasm ex3.asm -o ex3.o -felf64
; ld ex3.o -o ex3 -lc -I /lib64/ld-linux-x86-64.so.2

section .data

bashstr:
	db "/bin/bash", 0x00

section .text
global _start
_start:
	mov	rax, 0x3b
	mov	rdi, bashstr
	xor rsi, rsi
	xor rdx, rdx
	syscall

	mov	rax, 0x3c
	mov	rdi, 0x00
	syscall
