#include <stdio.h>
#include <unistd.h>
#include <crypt.h>
#include <string.h>

int main(void) {
	char *salt;
	salt="tH640G4E44RWDl3fCGsNTeC7E";
	FILE *out;
	char *pwd;
	char buff[2048];
	char *hash;
	char div[]="--------------------------------------------------";
	printf("%s\nEnter The Password You Wish To Check:\n",div);
	scanf("%s",pwd);
	printf("%s\nloading...\n...\n..\n.\n",div);
	out=fopen("./passwords","a+");
	fgets(buff,2048,out);
	hash=crypt(pwd,salt);
	fclose(out);
	if(strstr(buff, hash) != NULL) {
		printf("%s\n%s\n","That password is correct",div);
	} else{
		printf("%s\n%s\n","That password is incorrect",div);
	}
	return 0;
}
