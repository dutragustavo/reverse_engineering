
void main()
{	
	sleep(2);
}

/*
ASM
main:
        pushq   %rbp
        movq    %rsp, %rbp
        movl    $2, %edi
        call    sleep
        popq    %rbp
        ret
*/

