section .text
string:
	db "Hello, World", 0x0A
global _start 

_start:
	mov rsi, string
	mov rdx, 15
	syscall
	mov rax, 60
	mov rdi, 1
	syscall
