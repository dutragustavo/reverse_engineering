; Exercicio 1 - Fazer uma tabuada a partir do arquivo tab.asm

; nasm ex1.asm -o ex1.o -felf64
; ld ex1.o -o ex1 -lc -I /lib64/ld-linux-x86-64.so.2

extern printf

section .data

intendl:
	db "%d", 0x0a, 0x00

tabstr:
	db "Iniciando tabuada do numero %d", 0x0a, 0x00

section .text

global _start

_start:
	mov	rcx, 0x00
loop1:
	inc rcx
	push rcx
	mov	rdi, tabstr
	mov	rsi, rcx
	xor	rax, rax
	call printf
	pop rcx
	mov rbx, 1

loop2:
	push rcx
	push rbx
	mov	rdi, intendl
	mov	rax, rcx
	mul rbx
	mov rsi, rax
	xor	rax, rax
	call printf
	pop	rbx
	pop rcx
	inc	rbx
	cmp	rbx, 11
	jne	loop2
	cmp rcx, 10
	jne loop1

	mov	rax, 0x3c
	mov	rdi, 0x00
	syscall
