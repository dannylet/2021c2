#include <stdio.h>
char line[1000][20];
int main()
{
	int N;
	scanf("%d\n",&N);
	for(int i=0;i<N;i++)
	{
		gets(line[i]);
	}
	for(int i=0;i<N;i++)
	{
		printf("%s\n",line[i]);
	}
}

