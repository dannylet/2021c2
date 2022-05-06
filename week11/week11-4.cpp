
#include<iostream>
#include<vector>
#include<algorithm>
using namespace std ;
class student
{
	public:
	char name[30];
	int grade;
};
bool compare(student a, student b)
{
	return a.grade > b.grade;
}
int main()
{
	int N;
	cin >> N;
	vector<student> stu(N);
	for(int i=0;i<N;i++)
	{
		cin >> stu[i].name >> stu[i].grade;
	}

	stable_sort(stu.begin(),stu.end(),compare);

	for(int i=0;i<N;i++)
	{
		cout << stu[i].name << " " << stu[i].grade << endl;
	}
}
