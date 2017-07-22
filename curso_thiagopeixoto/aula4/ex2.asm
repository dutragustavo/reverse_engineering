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
loop1:
	mov rbx, rcx
	sub rbx, 1
	mov rax, rcx
	mul rbx
	;...
	push rcx
	mov	rdi, tabstr
	mov	rsi, rcx
	xor	rax, rax
	call printf
	pop rcx
	sub rcx, 1
	cmp rcx, rcx
	jnz loop1

exit:
	mov	rax, 0x3c
	mov	rdi, 0x00
	syscall
