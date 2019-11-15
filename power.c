#include "myMath.h"

double Exp(int x)
{
		double base = EXP;
		int exponent = x;
        double result = 1;
        while (exponent != 0)
        {
            result *= base;
            --exponent;
        }
        return result;

}

double Pow(double x,int y)
{

	double base = x;
		int exponent = y;
        double result = 1;
        while (exponent != 0)
        {
            result *= base;
            --exponent;
        }
        return result;
}

