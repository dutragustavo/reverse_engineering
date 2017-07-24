section .data
number:
	db 0xAA

section .text
global _start
_start:
	mov rax, 60
	movzx rdi, [number]
	syscall
	
