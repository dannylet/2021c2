#include<iostream>
#include<vector>
char name[100][30];
int grade[100];
int main()
{
	int N;
	std::cin >> N;
	for(int i=0;i<N;i++)
	{
		std::cin >> name[i] >> grade[i];
	}
	for(int i=0;i<N;i++)
	{
		std::cout << name[i] << std::endl;
	}
}
