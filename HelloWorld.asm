	global _main 

	section .text 

_main : 
	mov rax, 0x2000004 ; write
	mov rdi, 1
	mov rsi, message ; message adress
	mov rdx, message.len ; message length
	syscall

	mov rax, 0x2000001
	xor rdi, rdi
	syscall

	section .data
 
message : db 'Hello World!' ; message
.len : equ $ - message ; message length
