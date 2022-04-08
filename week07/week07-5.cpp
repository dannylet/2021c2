#include<Stdio.h>
char line[2000][80];
int main()
{
	int N;
	scanf("%d\n",&N);
	for(int i=0;i<N;i++)
	{
		scanf("%s",line[i]);
		char others[80];
		gets(others);
	}
	for(int i=0;i<N;i++)
	{
		printf("%s\n",line[i]);
	}
}
