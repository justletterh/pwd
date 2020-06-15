#include <stdio.h>
#include <unistd.h>
#include <crypt.h>

int main(void) {
	char *salt;
	salt="tH640G4E44RWDl3fCGsNTeC7E";
	FILE *out;
	char *pwd;
	char div[]="--------------------------------------------------";
	printf("%s\nEnter The Password You Wish To Write:\n",div);
	scanf("%s",pwd);
	printf("%s\nloading...\n...\n..\n.\n",div);
	out=fopen("./passwords","a+");
	fputs(crypt(pwd,salt),out);
	fputs("\n",out);
	fclose(out);
	printf("%s\n%s\n","done!",div);
	return 0;
}
