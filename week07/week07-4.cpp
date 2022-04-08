#include<Stdio.h>
char line[2000][80];
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
