#include <iostream>
#include <vector>

using namespace std;

int main(int argc, char* argv[]) {
	vector<int> fib;
	fib.push_back(1);
	fib.push_back(2);

	long sum = 2;
	for(int i = 2; fib[i-1] < 4000000; ++i) {
		fib.push_back(fib.at(i-2) + fib.at(i-1));
		
		if(fib.at(i) % 2 == 0) {
			sum += fib.at(i);
		}
	}
	cout << sum << endl;
}
