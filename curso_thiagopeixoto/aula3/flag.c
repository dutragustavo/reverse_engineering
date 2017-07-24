#include <stdio.h>
#include <string.h>

decrypt( char* arg )
{
	char* local_28h = arg;
	int count = 0;
	while(count < strlen(local_28h))
	{
		local_28h[count] = local_28h[count] + count; 
		count++;
	}
}

int test()
{
	return 0; //MASSA CARA, BEM MASSA
}

const char* string_doida = "H@AH=AF:?r<67<>AB01.>,617d";

int main()
{
	char* local_8h;
	char local_140h[312];  //mas estoura com 328

	puts("Enter the Password");
	scanf("%s", &local_140h);
	local_8h = malloc(27);

	memcpy(local_8h, string_doida, 26);

	if(test())
		return 0;

	decrypt(local_8h);
	puts(local_8h);
}
