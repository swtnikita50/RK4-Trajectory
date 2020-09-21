#include <iostream>
#include <math.h>
#include <fstream>

using namespace std;

double equations(int q, double b, double c, double u, double p) {

	if (q == 0)
		return -u * b * b - sin(c);
	if (q == 1) {
		return -cos(c) / b + p * u * b / 100;
	}

	if (q == 2)
		return b * cos(c);
	if (q == 3)
		return b * sin(c);

}

void rk4(double t, double* x, double u) {

	double tolerance_band;
	fstream myfile;
	double p;
	cout << "Provide p:";
	cin >> p;
	myfile.open("C:\Users\NIKITA\Desktop\PROGRAMS\myfile.csv", ios::out);
	if (!myfile) // Step 3: Checking whether file exist
	{
		cout << "File creation failed";
	}
	cout << "Provide tolerance band:";
	cin >> tolerance_band;
	double k1[4], k2[4], k3[4], k4[4], k[4], old[4];
	do {

		for (int j = 0; j < 4; j++)
			k1[j] = t * equations(j, x[0], x[1], u, p);
		for (int j = 0; j < 4; j++)
			k2[j] = t * equations(j, x[0] + k1[0] / 2, x[1] + k1[1] / 2, u, p);
		for (int j = 0; j < 4; j++)
			k3[j] = t * equations(j, x[0] + k2[0] / 2, x[1] + k2[1] / 2, u, p);
		for (int j = 0; j < 4; j++)
			k4[j] = t * equations(j, x[0] + k3[0], x[1] + k3[1], u, p);
		for (int j = 0; j < 4; j++) {

			old[j] = x[j];
			k[j] = (k1[j] + 2 * k2[j] + 2 * k3[j] + k4[j]) / 6;
			x[j] = old[j] + k[j];
			cout << j << "=" << x[j] << endl;
			if (j == 3) {
				myfile << x[j] << endl;
			}
			else {
				myfile << x[j] << ",";
			}

		}

		if (x[3] < tolerance_band && x[3] > -1 * tolerance_band) {

			cout << x[0] << endl;
			cout << x[1] << endl;
			cout << x[2] << endl;
			cout << x[3] << endl;
			return;

		}

		if (x[3] < -1 * tolerance_band) {
			t = t / 2;
			for (int j = 1; j < 4; j++) {
				x[j] = old[j];
			}
		}

	} while (x[3] > tolerance_band);
}

int main() {

	double t, u;
	int n;
	double pi = 2 * asin(1.0);

	cout << sin(0.5236);
	cout << "Provide t(the time interval):";
	cin >> t;

	cout << "Provide n(no. of independent variables):";
	cin >> n;

	double x[4];

	cout << "Provide initial values of dependent variables(v',angle,y',x'):";
	for (int i = 0; i < 4; i++) {

		cin >> x[i];

	}


	x[1] = x[1] * pi / 180;

	cout << "Provide u:";
	cin >> u;

	rk4(t, x, u);

}