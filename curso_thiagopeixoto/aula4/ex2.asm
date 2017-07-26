; Exercicio 2 - Implementar um fatorial

; nasm ex1.asm -o ex1.o -felf64
; ld ex1.o -o ex1 -lc -I /lib64/ld-linux-x86-64.so.2

extern printf
extern scanf

section .data

intin:
	db "%d", 0x00
fatstr:
	db "Fatorial de %d", 0x0a, 0x00
promptstr:
	db "Insira o valor para ser calculado o fatorial", 0x0a, 0x00

intout:
	db "%d", 0x0a, 0x00

intfatorial:
	dd 0

section .text

global _start

_start:
	mov rdi, promptstr
	xor rax, rax
	call printf
	mov rdi, intin
	lea rsi, [intfatorial] 
	xor rax, rax
	call scanf
	mov rcx, [intfatorial]
	push rcx
	mov rbx, 1
loop1:
	mov rax, rcx
	mul rbx
	mov rbx, rax
	sub rcx, 1
	cmp rcx, 0
	jnz loop1

	pop rcx
	push rbx
	mov	rdi, fatstr
	mov	rsi, rcx
	xor	rax, rax
	call printf
	pop rbx

	mov	rdi, intout
	mov	rsi, rbx
	xor	rax, rax
	call printf

	mov	rax, 0x3c
	mov	rdi, 0x00
	syscall
