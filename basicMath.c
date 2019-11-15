

#include "myMath.h"
float sub(float x , float y)
{
	float ans = x-y;
	return ans;
}

float add(float x , float y)
{
	float ans = x+y;
	return ans;
}

double mul(double x , int y)
{
	float ans = x*y;
	return ans;
}

double div(double  x , int y)
{
	if (y==0)
	{
		return -1;
	}

	float ans = x/y;
	return ans;
}

