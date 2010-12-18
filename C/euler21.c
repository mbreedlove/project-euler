#include <stdio.h>
#include <math.h>

int sum_divisors(int num)
{
    int sum=1;
    int i;
    for(i=2; i*i <= num; sum += num % i ? 0 : (i*i == num ? i : i + num/i) , ++i);
    return sum;
}

int main()
{
	int sum = 0;
	int i;
	int temp = 0;
	for(i = 1; i < 10000; ++i)
	{
		temp = sum_divisors(i);
		if(sum_divisors(temp) == i && temp != i)
			sum += i;
	}
	printf("%d\n", sum);

	return 0;
}
