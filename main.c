#include <stdio.h>
#include "myMath.h"
int main()
{
	setbuf(stdout,NULL);
		double num;
		printf("Please inset a real number: ");
		scanf("%lf", &num);

		double comp_1=Exp(num); //func1
	    double comp_2=Pow(num,3);
		double ans1=add(comp_1,comp_2);
		ans1=sub(ans1,2);
	    printf("The value of f(x)= e^x+x^3-2 at the point %0.4lf is: %0.4lf \n",num,ans1);

	    double comp_3=mul(3,num); //func2
		double comp_4=Pow(num,2);
		comp_4=mul(comp_4,2);
	    double ans2=add(comp_3,comp_4);
	    printf("The value of f(x)= 3x+2x^2 at the point %0.4lf is: %0.4lf  \n",num,ans2);

	    double comp_5=Pow(num,3); //func3
	    comp_5=mul(comp_5,4);
	    comp_5=div(comp_5,5);
	    double comp_6=mul(-2,num);
	    double ans3;
	    ans3=add(comp_5,comp_6);
	    printf("The value of f(x)= 4x^3/5-2x at the point %0.4lf is: %0.4lf \n",num,ans3);

	    return 0.0;



}
